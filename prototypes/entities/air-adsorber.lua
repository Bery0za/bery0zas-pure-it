bery0zas.pure_it.entities.air_adsorber = 
{
	base_name = "bery0zas-air-adsorber",
	
	entity = 
	{
		type = "assembling-machine",
		fast_replaceable_group = "bery0zas-air-adsorber",
		flags = { "placeable-neutral", "placeable-player", "player-creation" },
		minable = { mining_time = 0.5, result = "bery0zas-air-adsorber" },				
		max_health = 150,
		corpse = "medium-remnants",
		
		collision_box = {{ -1.3, -1.3 }, { 1.3, 1.3 }},
		selection_box = {{ -1.5, -1.5 }, { 1.5, 1.5 }},
		fluid_boxes =
		{
			{
				production_type = "input",
				pipe_picture = bery0zas.functions.pipe_pictures(),
				pipe_covers = pipecoverspictures(),
				base_area = 10,
				base_level = -1,
				pipe_connections = {{ type = "input", position = { -1, -2 } }},
			},
			{
				production_type = "input",
				pipe_picture = bery0zas.functions.pipe_pictures(),
				pipe_covers = pipecoverspictures(),
				base_area = 10,
				base_level = -1,
				pipe_connections = {{ type = "input", position = { 1, -2 } }},
			}
		},
		
		crafting_categories = { "bery0zas-air-filtering-adsorption" },
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
						shift = util.by_pixel(31, -33),
						hr_version =
						{
							filename = "__bery0zas-pure-it__/graphics/entity/adsorber/hr-adsorber-east.png",
							priority = "extra-high",
							width = 448,
							height = 448,
							frame_count = 1,
							animation_speed = 1.0,
							line_length = 1,
							shift = util.by_pixel(31, -33),
							scale = 0.5									
						}
					},
					{
						filename = "__bery0zas-pure-it__/graphics/entity/adsorber/adsorber-east-shadow.png",
						priority = "medium",
						width = 224,
						height = 224,
						frame_count = 1,
						animation_speed = 1.0,
						line_length = 1,
						draw_as_shadow = true,
						shift = util.by_pixel(31, -33),
						hr_version =
						{
							filename = "__bery0zas-pure-it__/graphics/entity/adsorber/hr-adsorber-east-shadow.png",
							priority = "medium",
							width = 448,
							height = 448,
							frame_count = 1,
							animation_speed = 1.0,
							line_length = 1,
							draw_as_shadow = true,
							shift = util.by_pixel(31, -33),
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
						filename = "__bery0zas-pure-it__/graphics/entity/adsorber/adsorber-north.png",
						priority = "extra-high",
						width = 224,
						height = 224,
						frame_count = 1,
						animation_speed = 1.0,
						line_length = 1,
						shift = util.by_pixel(32, -35),
						hr_version =
						{
							filename = "__bery0zas-pure-it__/graphics/entity/adsorber/hr-adsorber-north.png",
							priority = "extra-high",
							width = 448,
							height = 448,
							frame_count = 1,
							animation_speed = 1.0,
							line_length = 1,
							shift = util.by_pixel(32, -35),
							scale = 0.5									
						}
					},
					{
						filename = "__bery0zas-pure-it__/graphics/entity/adsorber/adsorber-north-shadow.png",
						priority = "medium",
						width = 224,
						height = 224,
						frame_count = 1,
						animation_speed = 1.0,
						line_length = 1,
						draw_as_shadow = true,
						shift = util.by_pixel(32, -35),
						hr_version =
						{
							filename = "__bery0zas-pure-it__/graphics/entity/adsorber/hr-adsorber-north-shadow.png",
							priority = "medium",
							width = 448,
							height = 448,
							frame_count = 1,
							animation_speed = 1.0,
							line_length = 1,
							draw_as_shadow = true,
							shift = util.by_pixel(32, -35),
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
						filename = "__bery0zas-pure-it__/graphics/entity/adsorber/adsorber-west.png",
						priority = "extra-high",
						width = 224,
						height = 224,
						frame_count = 1,
						animation_speed = 1.0,
						line_length = 1,
						shift = util.by_pixel(32, -32),
						hr_version =
						{
							filename = "__bery0zas-pure-it__/graphics/entity/adsorber/hr-adsorber-west.png",
							priority = "extra-high",
							width = 448,
							height = 448,
							frame_count = 1,
							animation_speed = 1.0,
							line_length = 1,
							shift = util.by_pixel(32, -32),
							scale = 0.5								   
						}
					},
					{
						filename = "__bery0zas-pure-it__/graphics/entity/adsorber/adsorber-west-shadow.png",
						priority = "medium",
						width = 224,
						height = 224,
						frame_count = 1,
						animation_speed = 1.0,
						line_length = 1,
						draw_as_shadow = true,
						shift = util.by_pixel(32, -32),
						hr_version =
						{
							filename = "__bery0zas-pure-it__/graphics/entity/adsorber/hr-adsorber-west-shadow.png",
							priority = "medium",
							width = 448,
							height = 448,
							frame_count = 1,
							animation_speed = 1.0,
							line_length = 1,
							draw_as_shadow = true,
							shift = util.by_pixel(32, -32),
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
						filename = "__bery0zas-pure-it__/graphics/entity/adsorber/adsorber-south.png",
						priority = "extra-high",
						width = 224,
						height = 224,
						frame_count = 1,
						animation_speed = 1.0,
						line_length = 1,
						shift = util.by_pixel(32, -34),
						hr_version =
						{
							filename = "__bery0zas-pure-it__/graphics/entity/adsorber/hr-adsorber-south.png",
							priority = "extra-high",
							width = 448,
							height = 448,
							frame_count = 1,
							animation_speed = 1.0,
							line_length = 1,
							shift = util.by_pixel(32, -34),
							scale = 0.5									
						}
					},
					{
						filename = "__bery0zas-pure-it__/graphics/entity/adsorber/adsorber-south-shadow.png",
						priority = "medium",
						width = 224,
						height = 224,
						frame_count = 1,
						animation_speed = 1.0,
						line_length = 1,
						draw_as_shadow = true,
						shift = util.by_pixel(32, -34),
						hr_version =
						{
							filename = "__bery0zas-pure-it__/graphics/entity/adsorber/hr-adsorber-south-shadow.png",
							priority = "medium",
							width = 448,
							height = 448,
							frame_count = 1,
							animation_speed = 1.0,
							line_length = 1,
							draw_as_shadow = true,
							shift = util.by_pixel(32, -34),
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
		category = "bery0zas-air-filtering-machine",
		enabled = false,
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