local INTERVAL = 20

local POLLUTION_INTERVAL = 60
local POLLUTION_AMOUNT = 1
local POLLUTED_WATER_AMOUNT = POLLUTION_AMOUNT * 2

local BASE_SUCTION_RADIUS = 16

local POLLUTE_FROM_BOXES_ENABLED = true
local COLLECTED_POLLUTION_AMOUNT = 50

local air_sucked_chunks = {}

function starts_with(str, start)
	return str:sub(1, #start) == start
end

function last_letter(str)
	return str:sub(#str, #str)
end

function entries_count(table)
	local count = 0
	
	for _, entry in pairs(table) do
		count = count + 1
	end
	
	return count
end

function position_to_chunk(position)
	return { x = math.floor(position.x / 32), y = math.floor(position.y / 32) }
end

function in_circle(center, squared_radius, position)
	local xd = position.x - center.x
	local yd = position.y - center.y

	return xd * xd + yd * yd <= squared_radius
end

function in_chunk(chunk, position)
	local posChunk = position_to_chunk(position)

	return chunk.x == posChunk.x and chunk.y == posChunk.y
end

function is_air_suction_machine(entity)
	return starts_with(entity.name, "bery0zas-air-suction-tower")
end

function get_suction_radius(entity)	
	return tonumber(last_letter(entity.name)) * 0.5 * BASE_SUCTION_RADIUS
end	

function get_base_suction_rate(entity)
	return entity.crafting_speed * INTERVAL / 60
end

function get_space_for_pollution(entity)
	if #entity.fluidbox < 1 then
		return 0
	end
	
	local capacity = entity.fluidbox.get_capacity(1)
	local pollution_fluid = entity.fluidbox[1]
	local pollution = 0
	
	if pollution_fluid then
		pollution = pollution_fluid.amount
	end
	
	return capacity - pollution
end

function energy_crafting_modifier(entity)
	if entity.electric_buffer_size then
		return entity.energy / entity.electric_buffer_size
	else
		return 1
	end
end

function getSuctionRate(entity)
	return get_base_suction_rate(entity) * energy_crafting_modifier(entity)
end

function get_absorption_rate(entity)
	return math.min(get_space_for_pollution(entity), getSuctionRate(entity))
end

local FilteredChunk = {
	surface = nil,
	x = 0,
	y = 0,
	suckers = {}
}

FilteredChunk.__index = FilteredChunk

function FilteredChunk:new(chunk)
	chunk = chunk or {}
	setmetatable(chunk, self)
	return chunk
end

function FilteredChunk:equal(other)
	return self.surface.name == other.surface.name and self.x == other.x and self.y == other.y
end

function FilteredChunk:to_position()
	return { x = self.x * 32, y = self.y * 32 }
end

function FilteredChunk:addToMap()
	local chunk_list_x = global.air_sucked_chunks_map[self.surface.name] or {}
	local chunk_list_y = chunk_list_x[self.x] or {}
	assert(chunk_list_y[y] == nil, "Chunklist entry should not exist yet.")
	chunk_list_y[self.y] = self
	chunk_list_x[self.x] = chunk_list_y
	global.air_sucked_chunks_map[self.surface.name] = chunk_list_x
	table.insert(air_sucked_chunks, self)
end

function FilteredChunk:remove_from_map()
	global.air_sucked_chunks_map[self.surface.name][self.x][self.y] = nil
	
	for i, c in pairs(air_sucked_chunks) do
		if self:equal(c) then
			table.remove(air_sucked_chunks, i)
			break
		end
	end
end

function FilteredChunk:add_sucker(sucker, fraction)
	self.suckers[sucker.unit_number] = { entity = sucker, fraction = fraction }
	
	if entries_count(self.suckers) == 1 then
		self:addToMap()
	end
end

function FilteredChunk:remove_sucker(sucker)
	for i, s in pairs(self.suckers) do
		if i == sucker.unit_number then
			self.suckers[i] = nil
			break
		end
	end
	
	if entries_count(self.suckers) == 0 then
		self:remove_from_map()
	end
end

function FilteredChunk:get_suckers()
	local suckers = {}
	
	for _, sucker in pairs(self.suckers) do
		if sucker.entity.valid then
			table.insert(suckers, sucker)
		end
	end
	
	self.suckers = suckers
	return suckers
end

function FilteredChunk:get_total_absorption_rate()
	local total_absorption_rate = 0.0
	
	for _, sucker in pairs(self:get_suckers()) do
		local absorption_rate = get_absorption_rate(sucker.entity) * sucker.fraction
		total_absorption_rate = total_absorption_rate + absorption_rate
	end
	
	return total_absorption_rate
end

function FilteredChunk:get_pollution()
	return self.surface.get_pollution(self:to_position())
end

function FilteredChunk:pollute(amount)
	self.surface.pollute(self:to_position(), amount)
end

function FilteredChunk:absorb()
	if self:get_pollution() == 0 then
		return
	end
	
	local total_absorption_rate = self:get_total_absorption_rate()

	if total_absorption_rate == 0 then
		return
	end

	local toAbsorb = math.min(self:get_pollution(), total_absorption_rate)
	local total_inserted_amount = 0.0
	
	for _, sucker in pairs(self:get_suckers()) do
		--game.print("rate: " .. get_absorption_rate(sucker.entity))
		--game.print("fraction: " .. sucker.fraction)
		--game.print("total_rate: " .. total_absorption_rate)
		--game.print("total: " .. toAbsorb)
	
		local toInsert = (get_absorption_rate(sucker.entity) * sucker.fraction / total_absorption_rate) * toAbsorb
		
		if toInsert > 0 then
			local inserted_amount = sucker.entity.insert_fluid({ name = "bery0zas-pollution", amount = toInsert })
			game.pollution_statistics.on_flow(sucker.entity.name, -inserted_amount)
			total_inserted_amount = total_inserted_amount + inserted_amount
		end
	end
	
	self:pollute(-total_inserted_amount)
end

function create_filtered_chunk(surface, x, y)
	local chunk = FilteredChunk:new(nil)
	chunk.surface = surface
	chunk.x = x
	chunk.y = y
	chunk.suckers = {}
	
	return chunk
end

function get_filtered_chunk(surface, x, y)
	local chunk_list_x = global.air_sucked_chunks_map[surface.name]

	if chunk_list_x ~= nil then
		local chunk_list_y = chunk_list_x[x]

			if chunk_list_y ~= nil then
				local chunk = chunk_list_y[y]

				if chunk ~= nil then
					return chunk
			end
		end
	end

	return create_filtered_chunk(surface, x, y)
end

function add_sucker(entity)
	local suction_radius = math.floor(get_suction_radius(entity))
		local squared_radius = suction_radius * suction_radius
		local total_tiles = 0
		local chunks = {}
		
		for i = entity.position.x - suction_radius, entity.position.x + suction_radius, 1 do
			for j = entity.position.y - suction_radius, entity.position.y + suction_radius, 1 do			
				if (in_circle(entity.position, squared_radius, { x = i, y = j })) then
					total_tiles = total_tiles + 1
					
					local chunkPos = position_to_chunk({x = i, y = j})
					local chunk = get_filtered_chunk(entity.surface, chunkPos.x, chunkPos.y)
					
					if (chunks[chunk] ~= nil) then
						chunks[chunk] = chunks[chunk] + 1
					else						
						chunks[chunk] = 1
						chunk:add_sucker(entity, 0)
					end
				end
			end
		end
			
		for chunk, fraction in pairs(chunks) do
			--game.print("(" .. chunk.x .. ", " .. chunk.y .. "): " .. fraction .. " / " .. total_tiles)
			chunk.suckers[entity.unit_number].fraction = fraction / total_tiles
		end
end

function on_entity_created(event)
	if is_air_suction_machine(event.created_entity) then
		--game.print(event.created_entity.name)
		add_sucker(event.created_entity)
	end
	
	if #event.created_entity.fluidbox > 0 then
		global.entities_with_fluidboxes[event.created_entity.unit_number] = event.created_entity
	end
end

function on_entity_removed(event)
	if is_air_suction_machine(event.entity) then
		for _, chunk in pairs(air_sucked_chunks) do
			chunk:remove_sucker(event.entity)
		end
	end
	
	local pollution = 0.0
	pollution = pollution + event.entity.get_fluid_count("bery0zas-polluted-air")
	pollution = pollution + event.entity.get_fluid_count("bery0zas-polluted-water") * 0.5

	if pollution > 0 then		
		event.entity.surface.pollute(event.entity.position, pollution)
		game.pollution_statistics.on_flow(event.entity.name, pollution)
	end
	
	if global.entities_with_fluidboxes[event.entity.unit_number] then
		global.entities_with_fluidboxes[event.entity.unit_number] = nil
	end
end

function pre_entity_removed(event)
	local is_crafting = event.entity.type == "assembling-machine" and event.entity.is_crafting()

	if is_crafting then
		local pollution = 0.0
		local recipe = event.entity.get_recipe()

		if recipe ~= nil then
			for _, ingredient in pairs(recipe.ingredients) do
				if ingredient.name == "bery0zas-pollution" or ingredient.name == "bery0zas-polluted-air" then
					pollution = pollution + ingredient.amount
					break
				end
			end
		end

		if pollution > 0 then
			event.entity.surface.pollute(event.entity.position, pollution)
			game.pollution_statistics.on_flow(event.entity.name, pollution)
		end
	end
end

function pollute_from(entity, fluidName, fluidAmount, pollutionAmount)
	local pollution = entity.get_fluid_count(fluidName)
	
	if pollution > fluidAmount * COLLECTED_POLLUTION_AMOUNT then
		entity.remove_fluid{ name = fluidName, amount = fluidAmount }
		entity.surface.pollute(entity.position, pollutionAmount)
		game.pollution_statistics.on_flow(entity.name, pollutionAmount)
	end
end

function pollute_from_boxes()
	if (POLLUTE_FROM_BOXES_ENABLED) then
		for _, entity in pairs(global.entities_with_fluidboxes) do		
			if entity.valid then
				pollute_from(entity, "bery0zas-polluted-air", POLLUTION_AMOUNT, POLLUTION_AMOUNT)
				pollute_from(entity, "bery0zas-polluted-water", POLLUTED_WATER_AMOUNT, POLLUTION_AMOUNT)
			end
		end
	end
end

function absorb_pollution(event)
	for _, c in pairs(air_sucked_chunks) do
		c:absorb()
	end
end

function on_tick(event)
	if (POLLUTE_FROM_BOXES_ENABLED and game.tick % POLLUTION_INTERVAL == 0) then	  
		pollute_from_boxes()
	end
	
	if game.tick % INTERVAL == 0 then	  
		absorb_pollution(event)
	end
end

function find_entities_with_fluid_boxes()
	for _, surface in pairs(game.surfaces) do
		for _, entity in pairs(surface.find_entities()) do		
			if #entity.fluidbox > 0 then
				global.entities_with_fluidboxes[entity.unit_number] = entity
			end
		end
	end	
end

function init()
	global.air_sucked_chunks_map = {}
	global.entities_with_fluidboxes = {}

	for _, surface in pairs(game.surfaces) do
		local suckers = surface.find_entities_filtered 
		{
			name = { "bery0zas-air-suction-tower-1", "bery0zas-air-suction-tower-2", "bery0zas-air-suction-tower-3" }
		}

		for _, sucker in pairs(suckers) do
			add_sucker(sucker)
		end
	end
	
	find_entities_with_fluid_boxes()
end

function load()
	for _, chunk_list_x in pairs(global.air_sucked_chunks_map) do
		for x, chunk_list_y in pairs(chunk_list_x) do
			for y, chunk in pairs(chunk_list_y) do
				chunk = FilteredChunk:new(chunk)
				table.insert(air_sucked_chunks, chunk)
			end
		end
	end

	POLLUTE_FROM_BOXES_ENABLED = settings.startup["bery0zas-pure-it-pollutefromboxes"].value
	COLLECTED_POLLUTION_AMOUNT = settings.startup["bery0zas-pure-it-amountofcollectedpollution"].value
end

script.on_event({defines.events.on_built_entity, defines.events.on_robot_built_entity}, on_entity_created)
script.on_event({defines.events.on_pre_player_mined_item, defines.events.on_pre_robot_mined_item, defines.events.on_entity_died}, pre_entity_removed)
script.on_event({defines.events.on_player_mined_entity, defines.events.on_robot_mined_entity, defines.events.on_entity_died}, on_entity_removed)
script.on_nth_tick(POLLUTION_INTERVAL, pollute_from_boxes)
script.on_nth_tick(INTERVAL, absorb_pollution)

script.on_init(init)
script.on_configuration_changed(init)
script.on_load(load)