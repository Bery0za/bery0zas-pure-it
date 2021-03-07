function bery0zas.functions.pipe_pictures()
	return {
		north = {
			filename = "__bery0zas-pure-it__/graphics/entity/pipe-covers/pipe-cover-empty.png",
			priority = "extra-high",
			width = 32,
			height = 32,
			shift = util.by_pixel(0, 0),
			hr_version = {
				filename = "__bery0zas-pure-it__/graphics/entity/pipe-covers/hr-pipe-cover-empty.png",
				priority = "extra-high",
				width = 64,
				height = 64,
				shift = util.by_pixel(0, 0),
				scale = 0.5
			}
		},
		east = {
			filename = "__bery0zas-pure-it__/graphics/entity/pipe-covers/pipe-cover-empty.png",
			priority = "extra-high",
			width = 32,
			height = 32,
			shift = util.by_pixel(0, 0),
			hr_version = {
				filename = "__bery0zas-pure-it__/graphics/entity/pipe-covers/hr-pipe-cover-empty.png",
				priority = "extra-high",
				width = 64,
				height = 64,
				shift = util.by_pixel(0, 0),
				scale = 0.5
			}
		},
		south = {
			filename = "__bery0zas-pure-it__/graphics/entity/pipe-covers/pipe-cover-south.png",
			priority = "extra-high",
			width = 32,
			height = 32,
			shift = util.by_pixel(0, -32),
			hr_version = {
				filename = "__bery0zas-pure-it__/graphics/entity/pipe-covers/hr-pipe-cover-south.png",
				priority = "extra-high",
				width = 64,
				height = 64,
				shift = util.by_pixel(0, -32),
				scale = 0.5
			}
		},
		west = {
			filename = "__bery0zas-pure-it__/graphics/entity/pipe-covers/pipe-cover-empty.png",
			priority = "extra-high",
			width = 32,
			height = 32,
			shift = util.by_pixel(0, 0),
			hr_version = {
				filename = "__bery0zas-pure-it__/graphics/entity/pipe-covers/hr-pipe-cover-empty.png",
				priority = "extra-high",
				width = 64,
				height = 64,
				shift = util.by_pixel(0, 0),
				scale = 0.5
			}
		}
	}
end

function bery0zas.functions.register_recipe_categories(categories)
	for _, category in pairs(categories) do
		local recipe_category = { type = "recipe-category", name = category }
		data:extend({ recipe_category })
	end
end

function bery0zas.functions.register_entity(template, num_tiers)
	for i = 1, num_tiers, 1 do
		local proto = util.table.deepcopy(template.entity)
		local name = template.base_name
		local color_tint = bery0zas.common.level_tint[i]
		
		proto.name = name .. "-" .. i
		proto.crafting_speed = bery0zas.common.crafting_speeds[i] * template.crafting_speed_multiplier
		proto.minable = { mining_time = proto.crafting_speed, result = proto.name }
		
		if (num_tiers > 1 and i < num_tiers) then
			proto.next_upgrade = name .. "-" .. (i + 1)
		end
		
		if (template.has_tint) then
			proto.icons[1].tint = color_tint
		
			for _, v in pairs(proto.animation or proto.idle_animation) do
				v.layers[2].tint = color_tint
				v.layers[2].hr_version.tint = color_tint
			end
		elseif (num_tiers > 1) then   
			proto.icons[1].tint = color_tint
			
			for _, v in pairs(proto.animation or proto.idle_animation) do
				v.layers[1].tint = color_tint
				v.layers[1].hr_version.tint = color_tint
			end
		end		
		
		proto.energy_usage = template.energy_usage * proto.crafting_speed .. template.energy_units
		
		local item = util.table.deepcopy(template.item)
		item.name = proto.name
		item.icons = proto.icons
		item.place_result = proto.name	
		
		local recipe = util.table.deepcopy(template.base_recipe)
		recipe.name = proto.name
		recipe.energy_required = recipe.energy_required * proto.crafting_speed
		recipe.result = proto.name
		
		if (i > 1) then
			recipe.ingredients = template.recipe_tiers[i]
			table.insert(recipe.ingredients, { name .. "-" .. (i - 1),  1 })
		end
		
		data:extend({ proto, item, recipe })
	end
end

function bery0zas.functions.remove_item(item_name)
	for key, _ in pairs(data.raw.item) do
		if key == item_name then data.raw.item[key] = nil end
	end
end

function bery0zas.functions.remove_fluid(fluid_name)
	for key, _ in pairs(data.raw.fluid) do
		if key == fluid_name then data.raw.fluid[key] = nil end
	end
end

function bery0zas.functions.remove_recipe(recipe_name)
	for key, _ in pairs(data.raw.recipe) do
		if key == recipe_name then data.raw.recipe[key] = nil end
	end
end

function bery0zas.functions.alter_recipe(recipe_name, field, sub_field, sub_field_value, target_sub_field, target_value)
	if field == "energy_required" then
		data.raw.recipe[recipe_name][field] = target_value
	elseif field == "ingredients" or
		   field == "results" then
		for i, fields in ipairs(data.raw.recipe[recipe_name][field]) do
			for f, sub in pairs(fields) do
				if f == sub_field and sub == sub_field_value then
					fields[target_sub_field] = target_value
				end
			end
		end
	end	
end

function bery0zas.functions.add_technology_recipe(technology, recipe_name)
	table.insert(data.raw.technology[technology].effects, {
		type = "unlock-recipe",
		recipe = recipe_name
	})
end

function bery0zas.functions.remove_technology_recipe(technology, recipe_name)
	local index = 1
	local size = #data.raw.technology[technology].effects
	while index <= size do
		if data.raw.technology[technology].effects[index].recipe == recipe_name then
			data.raw.technology[technology].effects[index] = data.raw.technology[technology].effects[size]
			data.raw.technology[technology].effects[size] = nil
			size = size - 1
		else index = index + 1
		end
	end
end