data:extend(
{
	{
        type = "assembling-machine",
        name = "sparging-column",
        icon = "__bery0zas-pure-it__/graphics/icons/sparging-column.png",
        icon_size = 32,
        flags = { "placeable-neutral", "placeable-player", "player-creation" },
        minable = { mining_time = 0.5, result = "sparging-column" },
        --fast_replaceable_group = "air-sucker",
		--next_upgrade = "air-sucker-2",
        max_health = 150,
        corpse = "medium-remnants",
        --alert_icon_shift = util.by_pixel(-3, -12),
        collision_box = {{ -1.4, -0.9 }, { 1.4, 0.9 }},
        selection_box = {{ -1.5, -1 }, { 1.5, 1 }},
        --drawing_box = {{ -3.0, -6.5 }, { 3.0, 2.0 }},
        integration_patch_render_layer = "higher-object-above",
        animation =
		{
			east =
			{
				layers =
				{
					{
						filename = "__bery0zas-pure-it__/graphics/entity/sparging-column/sparging-column-east.png",
						priority = "extra-high",
						width = 288,
						height = 288,
						frame_count = 1,
						animation_speed = 1.0,
						line_length = 1,
						shift = util.by_pixel(80, -82)
					},
					{
						filename = "__bery0zas-pure-it__/graphics/entity/sparging-column/sparging-column-east-shadow.png",
						priority = "medium",
						width = 288,
						height = 288,
						frame_count = 1,
						animation_speed = 1.0,
						line_length = 1,
						draw_as_shadow = true,
						shift = util.by_pixel(80, -82)
					}
				}
			},
			north =
			{
				layers =
				{
					{
						filename = "__bery0zas-pure-it__/graphics/entity/sparging-column/sparging-column-north.png",
						priority = "extra-high",
						width = 288,
						height = 288,
						frame_count = 1,
						animation_speed = 1.0,
						line_length = 1,
						shift = util.by_pixel(78, -72)
					},
					{
						filename = "__bery0zas-pure-it__/graphics/entity/sparging-column/sparging-column-north-shadow.png",
						priority = "medium",
						width = 288,
						height = 288,
						frame_count = 1,
						animation_speed = 1.0,
						line_length = 1,
						draw_as_shadow = true,
						shift = util.by_pixel(78, -72)
					}
				}
			},			
			west =
			{
				layers =
				{
					{
						filename = "__bery0zas-pure-it__/graphics/entity/sparging-column/sparging-column-west.png",
						priority = "extra-high",
						width = 288,
						height = 288,
						frame_count = 1,
						animation_speed = 1.0,
						line_length = 1,
						shift = util.by_pixel(80, -66)
					},
					{
						filename = "__bery0zas-pure-it__/graphics/entity/sparging-column/sparging-column-west-shadow.png",
						priority = "medium",
						width = 288,
						height = 288,
						frame_count = 1,
						animation_speed = 1.0,
						line_length = 1,
						draw_as_shadow = true,
						shift = util.by_pixel(80, -66)
					}
				}
			},
			south =
			{
				layers =
				{
					{
						filename = "__bery0zas-pure-it__/graphics/entity/sparging-column/sparging-column-south.png",
						priority = "extra-high",
						width = 288,
						height = 288,
						frame_count = 1,
						animation_speed = 1.0,
						line_length = 1,
						shift = util.by_pixel(78, -72)
					},
					{
						filename = "__bery0zas-pure-it__/graphics/entity/sparging-column/sparging-column-south-shadow.png",
						priority = "medium",
						width = 288,
						height = 288,
						frame_count = 1,
						animation_speed = 1.0,
						line_length = 1,
						draw_as_shadow = true,
						shift = util.by_pixel(78, -72)
					}
				}
			}
		},
        match_animation_speed_to_activity = true,
        open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
        close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
        working_sound =
        {
            sound = {{ filename = "__base__/sound/electric-furnace.ogg", volume = 0.7 }},
            idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
            apparent_volume = 1.5,
        },
        fluid_boxes =
		{
			{
				production_type = "input",
				--pipe_picture = assembler3pipepictures(),
				pipe_covers = pipecoverspictures(),
				base_area = 10,
				base_level = -1,
				pipe_connections = {{ type = "input", position = { -1, -1.5 } }},
				--secondary_draw_orders = { north = -1 }
			},
			{
				production_type = "input",
				--pipe_picture = assembler3pipepictures(),
				pipe_covers = pipecoverspictures(),
				base_area = 10,
				base_level = -1,
				pipe_connections = {{ type = "input", position = { 1, -1.5 } }},
				--secondary_draw_orders = { north = -1 }
			},
			{
				production_type = "output",
				--pipe_picture = assembler3pipepictures(),
				pipe_covers = pipecoverspictures(),
				base_area = 10,
				base_level = 1,
				pipe_connections =
				{
					{ type = "output", position = { -1, 1.5 } },
					{ type = "output", position = { 1, 1.5 } },
				},
				--secondary_draw_orders = { north = -1 }
			},
			--off_when_no_fluid_recipe = true
		},
        crafting_categories = { "air-filtering-sparging" },
        crafting_speed = 0.5,
		energy_source =
        {
            type = "electric",
            usage_priority = "secondary-input",
        },
        energy_usage = "100kW",
        return_ingredients_on_change = true,
        module_specification =
        {
            module_slots = 2
        },
		allowed_effects = { "consumption", "speed" }
    }
})

for _, category in pairs(BRZ.recipe_categories) do
	local recipe_category = { type = "recipe-category", name = category }
	data:extend({ recipe_category })
end

function register_entity(template, num_tiers)
    for i = 1, num_tiers, 1 do
        local proto = util.table.deepcopy(template.entity)
        local name = template.base_name
        local color_tint = BRZ.level_tint[i]
        
        proto.name = name .. "-" .. i
        proto.crafting_speed = BRZ.crafting_speeds[i] * template.crafting_speed_multiplier
        proto.minable = { mining_time = proto.crafting_speed, result = proto.name }
        
        if (num_tiers > 1 and i < num_tiers) then
            proto.next_upgrade = name .. "-" .. (i + 1)
        end
        
        if (template.has_tint) then
            proto.icons[1].tint = color_tint
        
            for _, v in pairs(proto.animation or proto.idle_animation) do
                v.layers[2].tint = color_tint
            end
        elseif (num_tiers > 1) then   
            proto.icons[1].tint = color_tint
            
            for _, v in pairs(proto.animation or proto.idle_animation) do
                v.layers[1].tint = color_tint
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

register_entity(BRZ.entities.air_suction_tower, 3)
register_entity(BRZ.entities.air_absorber, 3)
register_entity(BRZ.entities.air_adsorber, 1)