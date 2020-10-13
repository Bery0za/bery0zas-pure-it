local INTERVAL = 20

local POLLUTION_INTERVAL = 60
local POLLUTION_AMOUNT = 1
local POLLUTED_WATER_AMOUNT = POLLUTION_AMOUNT * 2

local BASE_SUCTION_RADIUS = 16

local air_sucked_chunks = {}

function starts_with(str, start)
    return str:sub(1, #start) == start
end

function last_letter(str)
    return str:sub(#str, #str)
end

function entriesCount(table)
    local count = 0
    
    for _, entry in pairs(table) do
        count = count + 1
    end
    
    return count
end

function positionToChunk(position)
    return { x = math.floor(position.x / 32), y = math.floor(position.y / 32) }
end

function inCircle(center, squared_radius, position)
	local xd = position.x - center.x
	local yd = position.y - center.y

	return xd * xd + yd * yd <= squared_radius
end

function inChunk(chunk, position)
	local posChunk = positionToChunk(position)

	return chunk.x == posChunk.x and chunk.y == posChunk.y
end

function isAirSuctionMachine(entity)
    return starts_with(entity.name, "air-suction-tower")
end

function getSuctionRadius(entity)    
    return tonumber(last_letter(entity.name)) * 0.5 * BASE_SUCTION_RADIUS
end	

function getBaseSuctionRate(entity)
    return entity.crafting_speed * INTERVAL / 60
end

function getSpaceForPollution(entity)
    if #entity.fluidbox < 1 then
        return 0
    end
    
    local capacity = entity.fluidbox.get_capacity(1)
    local pollutionFluid = entity.fluidbox[1]
    local pollution = 0
    
    if pollutionFluid then
        pollution = pollutionFluid.amount
    end
    
    return capacity - pollution
end

function energyCraftingModifier(entity)
    if entity.electric_buffer_size then
        return entity.energy / entity.electric_buffer_size
    else
        return 1
    end
end

function getSuctionRate(entity)
    return getBaseSuctionRate(entity) * energyCraftingModifier(entity)
end

function getAbsorptionRate(entity)
    return math.min(getSpaceForPollution(entity), getSuctionRate(entity))
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

function FilteredChunk:toPosition()
    return { x = self.x * 32, y = self.y * 32 }
end

function FilteredChunk:addToMap()
    local chunkListX = global.air_sucked_chunks_map[self.surface.name] or {}
    local chunkListY = chunkListX[self.x] or {}
    assert(chunkListY[y] == nil, "Chunklist entry should not exist yet.")
    chunkListY[self.y] = self
    chunkListX[self.x] = chunkListY
    global.air_sucked_chunks_map[self.surface.name] = chunkListX
    table.insert(air_sucked_chunks, self)
end

function FilteredChunk:removeFromMap()
    global.air_sucked_chunks_map[self.surface.name][self.x][self.y] = nil
    
    for i, c in pairs(air_sucked_chunks) do
        if self:equal(c) then
            table.remove(air_sucked_chunks, i)
            break
        end
    end
end

function FilteredChunk:addSucker(sucker, fraction)
	self.suckers[sucker.unit_number] = { entity = sucker, fraction = fraction }
    
    if entriesCount(self.suckers) == 1 then
        self:addToMap()
    end
end

function FilteredChunk:removeSucker(sucker)
    for i, s in pairs(self.suckers) do
        if i == sucker.unit_number then
            self.suckers[i] = nil
            break
        end
    end
    
    if entriesCount(self.suckers) == 0 then
        self:removeFromMap()
    end
end

function FilteredChunk:getSuckers()
    local suckers = {}
    
    for _, sucker in pairs(self.suckers) do
        if sucker.entity.valid then
            table.insert(suckers, sucker)
        end
    end
    
    self.suckers = suckers
    return suckers
end

function FilteredChunk:getTotalAbsorptionRate()
    local totalAbsorptionRate = 0.0
    
    for _, sucker in pairs(self:getSuckers()) do
        local absorptionRate = getAbsorptionRate(sucker.entity) * sucker.fraction
        totalAbsorptionRate = totalAbsorptionRate + absorptionRate
    end
    
    return totalAbsorptionRate
end

function FilteredChunk:getPollution()
    return self.surface.get_pollution(self:toPosition())
end

function FilteredChunk:pollute(amount)
    self.surface.pollute(self:toPosition(), amount)
end

function FilteredChunk:absorb()
    if self:getPollution() == 0 then
        return
    end
    
    local totalAbsorptionRate = self:getTotalAbsorptionRate()

    if totalAbsorptionRate == 0 then
        return
    end

    local toAbsorb = math.min(self:getPollution(), totalAbsorptionRate)
    local totalInsertedAmount = 0.0
    
    for _, sucker in pairs(self:getSuckers()) do
        --game.print("rate: " .. getAbsorptionRate(sucker.entity))
        --game.print("fraction: " .. sucker.fraction)
        --game.print("total_rate: " .. totalAbsorptionRate)
        --game.print("total: " .. toAbsorb)
    
        local toInsert = (getAbsorptionRate(sucker.entity) * sucker.fraction / totalAbsorptionRate) * toAbsorb
        
        if toInsert > 0 then
            local insertedAmount = sucker.entity.insert_fluid({ name = "pollution", amount = toInsert })
            game.pollution_statistics.on_flow(sucker.entity.name, -insertedAmount)
            totalInsertedAmount = totalInsertedAmount + insertedAmount
        end
    end
    
    self:pollute(-totalInsertedAmount)
end

function createFilteredChunk(surface, x, y)
    local chunk = FilteredChunk:new(nil)
    chunk.surface = surface
    chunk.x = x
    chunk.y = y
    chunk.suckers = {}
    
    return chunk
end

function getFilteredChunk(surface, x, y)
    local chunkListX = global.air_sucked_chunks_map[surface.name]

    if chunkListX ~= nil then
        local chunkListY = chunkListX[x]

            if chunkListY ~= nil then
                local chunk = chunkListY[y]

                if chunk ~= nil then
                    return chunk
            end
        end
    end

    return createFilteredChunk(surface, x, y)
end

function addSucker(entity)
    local suctionRadius = math.floor(getSuctionRadius(entity))
		local squaredRadius = suctionRadius * suctionRadius
		local totalTiles = 0
		local chunks = {}
		
		for i = entity.position.x - suctionRadius, entity.position.x + suctionRadius, 1 do
			for j = entity.position.y - suctionRadius, entity.position.y + suctionRadius, 1 do			
				if (inCircle(entity.position, squaredRadius, { x = i, y = j })) then
					totalTiles = totalTiles + 1
					
					local chunkPos = positionToChunk({x = i, y = j})
					local chunk = getFilteredChunk(entity.surface, chunkPos.x, chunkPos.y)
					
					if (chunks[chunk] ~= nil) then
						chunks[chunk] = chunks[chunk] + 1
					else                        
						chunks[chunk] = 1
                        chunk:addSucker(entity, 0)
					end
				end
			end
		end
			
		for chunk, fraction in pairs(chunks) do
            --game.print("(" .. chunk.x .. ", " .. chunk.y .. "): " .. fraction .. " / " .. totalTiles)
			chunk.suckers[entity.unit_number].fraction = fraction / totalTiles
		end
end

function onEntityCreated(event)
    if isAirSuctionMachine(event.created_entity) then
        --game.print(event.created_entity.name)
		addSucker(event.created_entity)
    end
    
    if #event.created_entity.fluidbox > 0 then
        global.entities_with_fluidboxes[event.created_entity.unit_number] = event.created_entity
    end
end

function onEntityRemoved(event)
    if isAirSuctionMachine(event.entity) then
        for _, chunk in pairs(air_sucked_chunks) do
            chunk:removeSucker(event.entity)
        end
    end
    
    local pollution = 0.0
    pollution = pollution + event.entity.get_fluid_count("polluted-air")
    pollution = pollution + event.entity.get_fluid_count("polluted-water") * 0.5

    if pollution > 0 then        
        event.entity.surface.pollute(event.entity.position, pollution)
        game.pollution_statistics.on_flow(event.entity.name, pollution)
    end
    
    if global.entities_with_fluidboxes[event.entity.unit_number] then
        global.entities_with_fluidboxes[event.entity.unit_number] = nil
    end
end

function preEntityRemoved(event)
    local isCrafting = event.entity.type == "assembling-machine" and event.entity.is_crafting()

    if isCrafting then
        local pollution = 0.0
        local recipe = event.entity.get_recipe()

        if recipe ~= nil then
            for _, ingredient in pairs(recipe.ingredients) do
                if ingredient.name == "pollution" or ingredient.name == "polluted-air" then
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

function polluteFrom(entity, fluidName, fluidAmount, pollutionAmount)
    local pollution = entity.get_fluid_count(fluidName)
	
    if pollution > fluidAmount * 50 then
		game.print(entity.name .. " pollutes " .. pollution)	
        entity.remove_fluid{ name = fluidName, amount = fluidAmount }
        entity.surface.pollute(entity.position, pollutionAmount)
        game.pollution_statistics.on_flow(entity.name, pollutionAmount)
    end
end

function polluteFromBoxes()
    for _, entity in pairs(global.entities_with_fluidboxes) do        
        if entity.valid then
            polluteFrom(entity, "polluted-air", POLLUTION_AMOUNT, POLLUTION_AMOUNT)
            polluteFrom(entity, "polluted-water", POLLUTED_WATER_AMOUNT, POLLUTION_AMOUNT)
        end
    end
end

function absorbPollution(event)
    for _, c in pairs(air_sucked_chunks) do
        c:absorb()
    end
end

function onTick(event)
    if game.tick % POLLUTION_INTERVAL == 0 then      
        polluteFromBoxes()
    end
    
    if game.tick % INTERVAL == 0 then      
        absorbPollution(event)
    end
end

function findEntitiesWithFluidBoxes()
    for _, surface in pairs(game.surfaces) do
        for _, entity in pairs(surface.find_entities()) do        
            --if not isAirSuctionMachine(entity) and #entity.fluidbox > 0 then
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
            name = { "air-suction-tower-1", "air-suction-tower-2", "air-suction-tower-3" }
        }

        for _, sucker in pairs(suckers) do
            addSucker(sucker)
        end
    end
    
    findEntitiesWithFluidBoxes()
end

function load()
    for _, chunkListX in pairs(global.air_sucked_chunks_map) do
        for x, chunkListY in pairs(chunkListX) do
            for y, chunk in pairs(chunkListY) do
                chunk = FilteredChunk:new(chunk)
                table.insert(air_sucked_chunks, chunk)
            end
        end
    end
end

script.on_event({ defines.events.on_built_entity, defines.events.on_robot_built_entity }, onEntityCreated)
script.on_event({ defines.events.on_pre_player_mined_item, defines.events.on_pre_robot_mined_item, defines.events.on_entity_died }, preEntityRemoved)
script.on_event({ defines.events.on_player_mined_entity, defines.events.on_robot_mined_entity, defines.events.on_entity_died }, onEntityRemoved)
--script.on_event({ defines.events.on_tick }, onTick)
script.on_nth_tick(POLLUTION_INTERVAL, polluteFromBoxes)
script.on_nth_tick(INTERVAL, absorbPollution)

script.on_init(init)
script.on_configuration_changed(init)
script.on_load(load)