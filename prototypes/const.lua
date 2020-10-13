BRZ =
{
	crafting_speeds =
	{
		0.5,
		0.75,
		1,
		1.5,
		2
	},	
	
	level_tint =
	{
		{ r = 1.0 * 0.7, g = 0.9 * 0.7, b = 0.3 * 0.7, a = 1 },
		{ r = 1.0 * 0.7, g = 0.2 * 0.7, b = 0 * 0.7, a = 1 },
		{ r = 0.3 * 0.7, g = 0.1 * 0.7, b = 1.0 * 0.7, a = 1 },
		{ r = 0.8 * 0.7, g = 0.0 * 0.7, b = 0.9 * 0.7, a = 1 },
		{ r = 0.4 * 0.7, g = 0.9 * 0.7, b = 0 * 0.7, a = 1 },
	},
	
	recipe_categories = 
	{
		"air-filtering-machine",
        "air-filtering-item",
		"air-filtering-suction",
		"air-filtering-sparging",
		"air-filtering-chemistry",
		"air-filtering-absorption",
		"air-filtering-adsorption",
		"air-filtering-burning"
	},
	
	entities =
	{
		air_suction_tower = 
		{
			base_name = "air-suction-tower",
			
			entity = 
			{
				type = "assembling-machine",                
                fast_replaceable_group = "air-sucker",
                flags = { "placeable-neutral", "placeable-player", "player-creation" },
				minable = { mining_time = 0.5, result = "air-suction-tower" },				
				max_health = 150,
				corpse = "medium-remnants",   
                
				collision_box = {{ -1.3, -1.9 }, { 1.3, 1.8 }},
				selection_box = {{ -1.5, -2 }, { 1.5, 2 }},                
                fluid_boxes =
				{
					{
						production_type = "input",
						base_area = 10,
						base_level = -1,
						pipe_connections = {}
					},
					{
						production_type = "output",
						pipe_covers = pipecoverspictures(),
						base_area = 10,
						base_level = 1,
						pipe_connections = {{ type = "output", position = { 0, -2.5 } }},
					}
				},
				
                crafting_categories = { "air-filtering-suction" },
				fixed_recipe = "air-suction",
                energy_source =
				{
					type = "electric",
					usage_priority = "secondary-input",
				},
                
                module_specification = { module_slots = 2 },				
				allowed_effects = { "consumption", "speed" },
                
				icons = {{ icon = "__bery0zas-pure-it__/graphics/icons/suction-tower.png", tint = { r = 1, g = 1, b = 1, a = 1 }}},
				icon_size = 32,                
                
                integration_patch_render_layer = "higher-object-above",
                --match_animation_speed_to_activity = true,               
                always_draw_idle_animation = true,
				idle_animation =
				{
					east =
					{
						layers =
						{
							{
								filename = "__bery0zas-pure-it__/graphics/entity/suction-tower/suction-tower-east.png",
								priority = "extra-high",
								width = 320,
								height = 320,
								frame_count = 8,
								animation_speed = 1.0,
								line_length = 3,
								shift = util.by_pixel(63, -48)
							},
							{
								filename = "__bery0zas-pure-it__/graphics/entity/suction-tower/suction-tower-east-tint.png",
								priority = "extra-high",
								blend_mode = "normal",
								width = 320,
								height = 320,
								frame_count = 8,
								animation_speed = 1.0,
								line_length = 3,
								shift = util.by_pixel(63, -48)
							},
							{
								filename = "__bery0zas-pure-it__/graphics/entity/suction-tower/suction-tower-east-shadow.png",
								priority = "medium",
								width = 320,
								height = 320,
								frame_count = 8,
								animation_speed = 1.0,
								line_length = 3,
								draw_as_shadow = true,
								shift = util.by_pixel(63, -48)
							}
						}
					},
					north =
					{
						layers =
						{
							{
								filename = "__bery0zas-pure-it__/graphics/entity/suction-tower/suction-tower-north.png",
								priority = "extra-high",
								width = 320,
								height = 320,
								frame_count = 8,
								animation_speed = 1.0,
								line_length = 3,
								shift = util.by_pixel(79, -34)
							},
							{
								filename = "__bery0zas-pure-it__/graphics/entity/suction-tower/suction-tower-north-tint.png",
								priority = "extra-high",
								blend_mode = "normal",
								width = 320,
								height = 320,
								frame_count = 8,
								animation_speed = 1.0,
								line_length = 3,
								shift = util.by_pixel(79, -34)
							},
							{
								filename = "__bery0zas-pure-it__/graphics/entity/suction-tower/suction-tower-north-shadow.png",
								priority = "medium",
								width = 320,
								height = 320,
								frame_count = 8,
								animation_speed = 1.0,
								line_length = 3,
								draw_as_shadow = true,
								shift = util.by_pixel(79, -34)
							}
						}
					},			
					west =
					{
						layers =
						{
							{
								filename = "__bery0zas-pure-it__/graphics/entity/suction-tower/suction-tower-west.png",
								priority = "extra-high",
								width = 320,
								height = 320,
								frame_count = 8,
								animation_speed = 1.0,
								line_length = 3,
								shift = util.by_pixel(64, -49)
							},
							{
								filename = "__bery0zas-pure-it__/graphics/entity/suction-tower/suction-tower-west-tint.png",
								priority = "extra-high",
								blend_mode = "normal",
								width = 320,
								height = 320,
								frame_count = 8,
								animation_speed = 1.0,
								line_length = 3,
								shift = util.by_pixel(64, -49)
							},
							{
								filename = "__bery0zas-pure-it__/graphics/entity/suction-tower/suction-tower-west-shadow.png",
								priority = "medium",
								width = 320,
								height = 320,
								frame_count = 8,
								animation_speed = 1.0,
								line_length = 3,
								draw_as_shadow = true,
								shift = util.by_pixel(64, -49)
							}
						}
					},
					south =
					{
						layers =
						{
							{
								filename = "__bery0zas-pure-it__/graphics/entity/suction-tower/suction-tower-south.png",
								priority = "extra-high",
								width = 320,
								height = 320,
								frame_count = 8,
								animation_speed = 1.0,
								line_length = 3,
								shift = util.by_pixel(80, -31)
							},
							{
								filename = "__bery0zas-pure-it__/graphics/entity/suction-tower/suction-tower-south-tint.png",
								priority = "extra-high",
								blend_mode = "normal",
								width = 320,
								height = 320,
								frame_count = 8,
								animation_speed = 1.0,
								line_length = 3,
								shift = util.by_pixel(80, -31)
							},
							{
								filename = "__bery0zas-pure-it__/graphics/entity/suction-tower/suction-tower-south-shadow.png",
								priority = "medium",
								width = 320,
								height = 320,
								frame_count = 8,
								animation_speed = 1.0,
								line_length = 3,
								draw_as_shadow = true,
								shift = util.by_pixel(80, -31)
							}
						}
					}
				},				
                
				open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
				close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
				working_sound =
				{
					sound = {{ filename = "__base__/sound/electric-furnace.ogg", volume = 0.7 }},
					idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
					apparent_volume = 1.5,
				}
			},
            
            has_tint = true,
			
            crafting_speed_multiplier = 0.5,
            
			energy_usage = 100,
			energy_units = "kW",
			
			item = 
			{
				type = "item",
				icons = {{ icon = "__bery0zas-pure-it__/graphics/icons/suction-tower.png", tint = { r = 1, g = 1, b = 1, a = 1 }}},
				icon_size = 32,
				subgroup = "production-machine",
				stack_size = 25
			},
			
			base_recipe = 
			{
				type = "recipe",
				category = "air-filtering-machine",
				energy_required = 20.0,
				ingredients =
				{
					{ "iron-plate", 10 },					
					{ "pipe", 5 },
                    { "electronic-circuit", 5 },
                    { "engine-unit", 5 }
				}
			},
			
			recipe_tiers =
			{
				{},
				{{ "steel-plate", 10 }, { "advanced-circuit", 5 }},
				{{ type = "fluid", name = "lubricant", amount = 50 }, { "electric-engine-unit", 5 }}
			}
		},
        air_absorber = 
        {
            base_name = "air-absorber",
            
            entity = 
            {
                type = "assembling-machine",
                fast_replaceable_group = "air-absorber",
                flags = { "placeable-neutral", "placeable-player", "player-creation" },
                minable = { mining_time = 0.5, result = "air-absorber" },                
                max_health = 150,
                corpse = "medium-remnants",
                
                collision_box = {{ -1.5, -2 }, { 1.5, 2 }},
                selection_box = {{ -1.5, -2 }, { 1.5, 2 }},
                fluid_boxes =
                {
                    {
                        production_type = "input",
                        pipe_covers = pipecoverspictures(),
                        base_area = 10,
                        base_level = -1,
                        pipe_connections = {{ type = "input", position = { -1, -2.5 } }},
                    },
                    {
                        production_type = "input",
                        pipe_covers = pipecoverspictures(),
                        base_area = 10,
                        base_level = -1,
                        pipe_connections = {{ type = "input", position = { 1, -2.5 } }},
                    },
                    {
                        production_type = "output",
                        pipe_covers = pipecoverspictures(),
                        base_area = 10,
                        base_level = 1,
                        pipe_connections = {{ type = "output", position = { 0, 2.5 } }},
                    },
                },
                
                crafting_categories = { "air-filtering-absorption" },
                return_ingredients_on_change = true,
                energy_source =
                {
                    type = "electric",
                    usage_priority = "secondary-input",
                },                
                
                module_specification = { module_slots = 2 },
                allowed_effects = { "consumption", "speed" },
                
                icons = {{ icon = "__bery0zas-pure-it__/graphics/icons/absorber.png", tint = { r = 1, g = 1, b = 1, a = 1 }}},
                icon_size = 32,
                
                integration_patch_render_layer = "lower-object-above-shadow",
                match_animation_speed_to_activity = true,
                animation =
                {
                    east =
                    {
                        layers =
                        {
                            {
                                filename = "__bery0zas-pure-it__/graphics/entity/absorber/absorber-east.png",
                                priority = "extra-high",
                                width = 224,
                                height = 224,
                                frame_count = 1,
                                animation_speed = 1.0,
                                line_length = 1,
                                shift = util.by_pixel(31, -1)
                            },
                            {
                                filename = "__bery0zas-pure-it__/graphics/entity/absorber/absorber-east-tint.png",
                                priority = "extra-high",
                                blend_mode = "normal",
                                width = 224,
                                height = 224,
                                frame_count = 1,
                                animation_speed = 1.0,
                                line_length = 1,
                                shift = util.by_pixel(31, -1)
                            },
                            {
                                filename = "__bery0zas-pure-it__/graphics/entity/absorber/absorber-east-shadow.png",
                                priority = "medium",
                                width = 224,
                                height = 224,
                                frame_count = 1,
                                animation_speed = 1.0,
                                line_length = 1,
                                draw_as_shadow = true,
                                shift = util.by_pixel(31, -1)
                            }
                        }
                    },
                    north =
                    {
                        layers =
                        {
                            {
                                filename = "__bery0zas-pure-it__/graphics/entity/absorber/absorber-north.png",
                                priority = "extra-high",
                                width = 224,
                                height = 224,
                                frame_count = 1,
                                animation_speed = 1.0,
                                line_length = 1,
                                shift = util.by_pixel(32, 8)
                            },
                            {
                                filename = "__bery0zas-pure-it__/graphics/entity/absorber/absorber-north-tint.png",
                                priority = "extra-high",
                                blend_mode = "normal",
                                width = 224,
                                height = 224,
                                frame_count = 1,
                                animation_speed = 1.0,
                                line_length = 1,
                                shift = util.by_pixel(32, 8)
                            },
                            {
                                filename = "__bery0zas-pure-it__/graphics/entity/absorber/absorber-north-shadow.png",
                                priority = "medium",
                                width = 224,
                                height = 224,
                                frame_count = 1,
                                animation_speed = 1.0,
                                line_length = 1,
                                draw_as_shadow = true,
                                shift = util.by_pixel(32, 8)
                            }
                        }
                    },			
                    west =
                    {
                        layers =
                        {
                            {
                                filename = "__bery0zas-pure-it__/graphics/entity/absorber/absorber-west.png",
                                priority = "extra-high",
                                width = 224,
                                height = 224,
                                frame_count = 1,
                                animation_speed = 1.0,
                                line_length = 1,
                                shift = util.by_pixel(31, -1)
                            },
                            {
                                filename = "__bery0zas-pure-it__/graphics/entity/absorber/absorber-west-tint.png",
                                priority = "extra-high",
                                blend_mode = "normal",
                                width = 224,
                                height = 224,
                                frame_count = 1,
                                animation_speed = 1.0,
                                line_length = 1,
                                shift = util.by_pixel(31, -1)
                            },
                            {
                                filename = "__bery0zas-pure-it__/graphics/entity/absorber/absorber-west-shadow.png",
                                priority = "medium",
                                width = 224,
                                height = 224,
                                frame_count = 1,
                                animation_speed = 1.0,
                                line_length = 1,
                                draw_as_shadow = true,
                                shift = util.by_pixel(31, -1)
                            }
                        }
                    },
                    south =
                    {
                        layers =
                        {
                            {
                                filename = "__bery0zas-pure-it__/graphics/entity/absorber/absorber-south.png",
                                priority = "extra-high",
                                width = 224,
                                height = 224,
                                frame_count = 1,
                                animation_speed = 1.0,
                                line_length = 1,
                                shift = util.by_pixel(32, 9)
                            },
                            {
                                filename = "__bery0zas-pure-it__/graphics/entity/absorber/absorber-south-tint.png",
                                priority = "extra-high",
                                blend_mode = "normal",
                                width = 224,
                                height = 224,
                                frame_count = 1,
                                animation_speed = 1.0,
                                line_length = 1,
                                shift = util.by_pixel(32, 9)
                            },
                            {
                                filename = "__bery0zas-pure-it__/graphics/entity/absorber/absorber-south-shadow.png",
                                priority = "medium",
                                width = 224,
                                height = 224,
                                frame_count = 1,
                                animation_speed = 1.0,
                                line_length = 1,
                                draw_as_shadow = true,
                                shift = util.by_pixel(32, 9)
                            }
                        }
                    }
                },
                
                open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
                close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
                working_sound =
                {
                    sound = {{ filename = "__base__/sound/electric-furnace.ogg", volume = 0.7 }},
                    idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
                    apparent_volume = 1.5,
                }
            },
            
            has_tint = true,
            
            crafting_speed_multiplier = 1,
            
            energy_usage = 100,
			energy_units = "kW",
			
			item = 
			{
				type = "item",
				icons = {{ icon = "__bery0zas-pure-it__/graphics/icons/absorber.png", tint = { r = 1, g = 1, b = 1, a = 1 }}},
				icon_size = 32,
				subgroup = "production-machine",
				stack_size = 25
			},
			
			base_recipe = 
			{
				type = "recipe",
				category = "air-filtering-machine",
				energy_required = 20.0,
				ingredients =
				{
					{ "iron-plate", 10 },					
					{ "pipe", 10 },
                    { "empty-barrel", 1},
                    { "engine-unit", 1 },			
					{ "electronic-circuit", 3 },
				}
			},
			
			recipe_tiers =
			{
				{},
				{{ "steel-plate", 10 }, { "advanced-circuit", 5 }},
				{{ "electric-engine-unit", 1 }}
			}
        },
		air_adsorber = 
        {
            base_name = "air-adsorber",
            
            entity = 
            {
                type = "assembling-machine",
                fast_replaceable_group = "air-adsorber",
                flags = { "placeable-neutral", "placeable-player", "player-creation" },
                minable = { mining_time = 0.5, result = "air-adsorber" },                
                max_health = 150,
                corpse = "medium-remnants",
                
                collision_box = {{ -1.3, -1.3 }, { 1.3, 1.3 }},
                selection_box = {{ -1.5, -1.5 }, { 1.5, 1.5 }},
                fluid_boxes =
                {
                    {
                        production_type = "input",
                        pipe_covers = pipecoverspictures(),
                        base_area = 10,
                        base_level = -1,
                        pipe_connections = {{ type = "input", position = { -1, -2 } }},
                    },
                    {
                        production_type = "input",
                        pipe_covers = pipecoverspictures(),
                        base_area = 10,
                        base_level = -1,
                        pipe_connections = {{ type = "input", position = { 1, -2 } }},
                    }
                },
                
                crafting_categories = { "air-filtering-adsorption" },
                return_ingredients_on_change = true,
                energy_source =
                {
                    type = "electric",
                    usage_priority = "secondary-input",
                },                
                
                module_specification = { module_slots = 2 },
                allowed_effects = { "consumption", "speed" },
                
                icons = {{ icon = "__bery0zas-pure-it__/graphics/icons/adsorber.png", tint = { r = 1, g = 1, b = 1, a = 1 }}},
                icon_size = 32,
                
                integration_patch_render_layer = "lower-object-above-shadow",
                match_animation_speed_to_activity = true,
                animation =
                {
                    east =
                    {
                        layers =
                        {
                            {
                                filename = "__bery0zas-pure-it__/graphics/entity/adsorber/adsorber-east.png",
                                priority = "extra-high",
                                width = 224,
                                height = 224,
                                frame_count = 1,
                                animation_speed = 1.0,
                                line_length = 1,
                                shift = util.by_pixel(31, -33)
                            },
                            --[[{
                                filename = "__bery0zas-pure-it__/graphics/entity/absorber/adsorber-east-tint.png",
                                priority = "extra-high",
                                blend_mode = "normal",
                                width = 224,
                                height = 224,
                                frame_count = 1,
                                animation_speed = 1.0,
                                line_length = 1,
                                shift = util.by_pixel(31, -1)
                            },]]--
                            {
                                filename = "__bery0zas-pure-it__/graphics/entity/adsorber/adsorber-east-shadow.png",
                                priority = "medium",
                                width = 224,
                                height = 224,
                                frame_count = 1,
                                animation_speed = 1.0,
                                line_length = 1,
                                draw_as_shadow = true,
                                shift = util.by_pixel(31, -33)
                            }
                        }
                    },
                    north =
                    {
                        layers =
                        {
                            {
                                filename = "__bery0zas-pure-it__/graphics/entity/adsorber/adsorber-north.png",
                                priority = "extra-high",
                                width = 224,
                                height = 224,
                                frame_count = 1,
                                animation_speed = 1.0,
                                line_length = 1,
                                shift = util.by_pixel(32, -35)
                            },
                            --[[{
                                filename = "__bery0zas-pure-it__/graphics/entity/absorber/adsorber-north-tint.png",
                                priority = "extra-high",
                                blend_mode = "normal",
                                width = 224,
                                height = 224,
                                frame_count = 1,
                                animation_speed = 1.0,
                                line_length = 1,
                                shift = util.by_pixel(32, 8)
                            },]]--
                            {
                                filename = "__bery0zas-pure-it__/graphics/entity/adsorber/adsorber-north-shadow.png",
                                priority = "medium",
                                width = 224,
                                height = 224,
                                frame_count = 1,
                                animation_speed = 1.0,
                                line_length = 1,
                                draw_as_shadow = true,
                                shift = util.by_pixel(32, -35)
                            }
                        }
                    },			
                    west =
                    {
                        layers =
                        {
                            {
                                filename = "__bery0zas-pure-it__/graphics/entity/adsorber/adsorber-west.png",
                                priority = "extra-high",
                                width = 224,
                                height = 224,
                                frame_count = 1,
                                animation_speed = 1.0,
                                line_length = 1,
                                shift = util.by_pixel(32, -32)
                            },
                            --[[{
                                filename = "__bery0zas-pure-it__/graphics/entity/absorber/adsorber-west-tint.png",
                                priority = "extra-high",
                                blend_mode = "normal",
                                width = 224,
                                height = 224,
                                frame_count = 1,
                                animation_speed = 1.0,
                                line_length = 1,
                                shift = util.by_pixel(31, -1)
                            },]]--
                            {
                                filename = "__bery0zas-pure-it__/graphics/entity/adsorber/adsorber-west-shadow.png",
                                priority = "medium",
                                width = 224,
                                height = 224,
                                frame_count = 1,
                                animation_speed = 1.0,
                                line_length = 1,
                                draw_as_shadow = true,
                                shift = util.by_pixel(32, -32)
                            }
                        }
                    },
                    south =
                    {
                        layers =
                        {
                            {
                                filename = "__bery0zas-pure-it__/graphics/entity/adsorber/adsorber-south.png",
                                priority = "extra-high",
                                width = 224,
                                height = 224,
                                frame_count = 1,
                                animation_speed = 1.0,
                                line_length = 1,
                                shift = util.by_pixel(32, -34)
                            },
                            --[[{
                                filename = "__bery0zas-pure-it__/graphics/entity/adsorber/adsorber-south-tint.png",
                                priority = "extra-high",
                                blend_mode = "normal",
                                width = 224,
                                height = 224,
                                frame_count = 1,
                                animation_speed = 1.0,
                                line_length = 1,
                                shift = util.by_pixel(32, 9)
                            },]]--
                            {
                                filename = "__bery0zas-pure-it__/graphics/entity/adsorber/adsorber-south-shadow.png",
                                priority = "medium",
                                width = 224,
                                height = 224,
                                frame_count = 1,
                                animation_speed = 1.0,
                                line_length = 1,
                                draw_as_shadow = true,
                                shift = util.by_pixel(32, -34)
                            }
                        }
                    }
                },
                
                open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
                close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
                working_sound =
                {
                    sound = {{ filename = "__base__/sound/electric-furnace.ogg", volume = 0.7 }},
                    idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
                    apparent_volume = 1.5,
                }
            },
            
            --has_tint = true,
            
            crafting_speed_multiplier = 1,
            
            energy_usage = 100,
			energy_units = "kW",
			
			item = 
			{
				type = "item",
				icons = {{ icon = "__bery0zas-pure-it__/graphics/icons/adsorber.png", tint = { r = 1, g = 1, b = 1, a = 1 }}},
				icon_size = 32,
				subgroup = "production-machine",
				stack_size = 25
			},
			
			base_recipe = 
			{
				type = "recipe",
				category = "air-filtering-machine",
				energy_required = 20.0,
				ingredients =
				{
					{ "iron-plate", 10 },					
					{ "pipe", 10 },
                    { "empty-barrel", 5},
                    { "engine-unit", 1 },			
					{ "electronic-circuit", 3 },
				}
			},
			
			recipe_tiers =
			{
				{},
				{{ "steel-plate", 10 }, { "advanced-circuit", 5 }},
				{{ "processor-unit", 1 }}
			}
        }
	}
}