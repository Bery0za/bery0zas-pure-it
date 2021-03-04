bery0zas.entities.air_suction_tower = 
{
	base_name = "bery0zas-air-suction-tower",
	
	entity = 
	{
		type = "assembling-machine",				
		fast_replaceable_group = "bery0zas-air-sucker",
		flags = { "placeable-neutral", "placeable-player", "player-creation" },
		minable = { mining_time = 0.5, result = "bery0zas-air-suction-tower" },				
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
				pipe_picture = bery0zas.functions.pipe_pictures(),
				pipe_covers = pipecoverspictures(),
				base_area = 10,
				base_level = 1,
				pipe_connections = {{ type = "output", position = { 0, -2.5 } }},
			}
		},
		
		crafting_categories = { "bery0zas-air-filtering-suction" },
		fixed_recipe = "bery0zas-air-suction",
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
						shift = util.by_pixel(63, -48),
						hr_version =
						{
							filename = "__bery0zas-pure-it__/graphics/entity/suction-tower/hr-suction-tower-east.png",
							priority = "extra-high",
							width = 640,
							height = 640,
							frame_count = 8,
							animation_speed = 1.0,
							line_length = 3,
							shift = util.by_pixel(63, -48),
							scale = 0.5
						}
					},
					{
						filename = "__bery0zas-pure-it__/graphics/entity/suction-tower/suction-tower-east-tint.png",
						priority = "extra-high",
						flags = { "mask" },
						width = 320,
						height = 320,
						frame_count = 8,
						animation_speed = 1.0,
						line_length = 3,
						shift = util.by_pixel(63, -48),
						hr_version =
						{
							filename = "__bery0zas-pure-it__/graphics/entity/suction-tower/hr-suction-tower-east-tint.png",
							priority = "extra-high",
							flags = { "mask" },
							width = 640,
							height = 640,
							frame_count = 8,
							animation_speed = 1.0,
							line_length = 3,
							shift = util.by_pixel(63, -48),
							scale = 0.5
						}
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
						shift = util.by_pixel(63, -48),
						hr_version =
						{
							filename = "__bery0zas-pure-it__/graphics/entity/suction-tower/hr-suction-tower-east-shadow.png",
							priority = "medium",
							width = 640,
							height = 640,
							frame_count = 8,
							animation_speed = 1.0,
							line_length = 3,
							draw_as_shadow = true,
							shift = util.by_pixel(63, -48),
							scale = 0.5
						}
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
						shift = util.by_pixel(79, -34),
						hr_version =
						{
							filename = "__bery0zas-pure-it__/graphics/entity/suction-tower/hr-suction-tower-north.png",
							priority = "extra-high",
							width = 640,
							height = 640,
							frame_count = 8,
							animation_speed = 1.0,
							line_length = 3,
							shift = util.by_pixel(79, -34),
							scale = 0.5
						}
					},
					{
						filename = "__bery0zas-pure-it__/graphics/entity/suction-tower/suction-tower-north-tint.png",
						priority = "extra-high",
						flags = { "mask" },
						width = 320,
						height = 320,
						frame_count = 8,
						animation_speed = 1.0,
						line_length = 3,
						shift = util.by_pixel(79, -34),
						hr_version =
						{
							filename = "__bery0zas-pure-it__/graphics/entity/suction-tower/hr-suction-tower-north-tint.png",
							priority = "extra-high",
							flags = { "mask" },
							width = 640,
							height = 640,
							frame_count = 8,
							animation_speed = 1.0,
							line_length = 3,
							shift = util.by_pixel(79, -34),
							scale = 0.5
						}
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
						shift = util.by_pixel(79, -34),
						hr_version =
						{
							filename = "__bery0zas-pure-it__/graphics/entity/suction-tower/hr-suction-tower-north-shadow.png",
							priority = "medium",
							width = 640,
							height = 640,
							frame_count = 8,
							animation_speed = 1.0,
							line_length = 3,
							draw_as_shadow = true,
							shift = util.by_pixel(79, -34),
							scale = 0.5
						}
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
						shift = util.by_pixel(64, -49),
						hr_version =
						{
							filename = "__bery0zas-pure-it__/graphics/entity/suction-tower/hr-suction-tower-west.png",
							priority = "extra-high",
							width = 640,
							height = 640,
							frame_count = 8,
							animation_speed = 1.0,
							line_length = 3,
							shift = util.by_pixel(64, -49),
							scale = 0.5
						}
					},
					{
						filename = "__bery0zas-pure-it__/graphics/entity/suction-tower/suction-tower-west-tint.png",
						priority = "extra-high",
						flags = { "mask" },
						width = 320,
						height = 320,
						frame_count = 8,
						animation_speed = 1.0,
						line_length = 3,
						shift = util.by_pixel(64, -49),
						hr_version =
						{
							filename = "__bery0zas-pure-it__/graphics/entity/suction-tower/hr-suction-tower-west-tint.png",
							priority = "extra-high",
							flags = { "mask" },
							width = 640,
							height = 640,
							frame_count = 8,
							animation_speed = 1.0,
							line_length = 3,
							shift = util.by_pixel(64, -49),
							scale = 0.5
						}
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
						shift = util.by_pixel(64, -49),
						hr_version =
						{
							filename = "__bery0zas-pure-it__/graphics/entity/suction-tower/hr-suction-tower-west-shadow.png",
							priority = "medium",
							width = 640,
							height = 640,
							frame_count = 8,
							animation_speed = 1.0,
							line_length = 3,
							draw_as_shadow = true,
							shift = util.by_pixel(64, -49),
							scale = 0.5
						}
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
						shift = util.by_pixel(80, -31),
						hr_version =
						{
							filename = "__bery0zas-pure-it__/graphics/entity/suction-tower/hr-suction-tower-south.png",
							priority = "extra-high",
							width = 640,
							height = 640,
							frame_count = 8,
							animation_speed = 1.0,
							line_length = 3,
							shift = util.by_pixel(80, -31),
							scale = 0.5
						}
					},
					{
						filename = "__bery0zas-pure-it__/graphics/entity/suction-tower/suction-tower-south-tint.png",
						priority = "extra-high",
						flags = { "mask" },
						width = 320,
						height = 320,
						frame_count = 8,
						animation_speed = 1.0,
						line_length = 3,
						shift = util.by_pixel(80, -31),
						hr_version =
						{
							filename = "__bery0zas-pure-it__/graphics/entity/suction-tower/hr-suction-tower-south-tint.png",
							priority = "extra-high",
							flags = { "mask" },
							width = 640,
							height = 640,
							frame_count = 8,
							animation_speed = 1.0,
							line_length = 3,
							shift = util.by_pixel(80, -31),
							scale = 0.5
						}
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
						shift = util.by_pixel(80, -31),
						hr_version =
						{
							filename = "__bery0zas-pure-it__/graphics/entity/suction-tower/hr-suction-tower-south-shadow.png",
							priority = "medium",
							width = 640,
							height = 640,
							frame_count = 8,
							animation_speed = 1.0,
							line_length = 3,
							draw_as_shadow = true,
							shift = util.by_pixel(80, -31),
							scale = 0.5
						}
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
		category = "bery0zas-air-filtering-machine",
		enabled = false,
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
}