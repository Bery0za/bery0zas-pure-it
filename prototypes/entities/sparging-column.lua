data:extend(
{
	{
		type = "assembling-machine",
		name = "bery0zas-sparging-column",
		icon = "__bery0zas-pure-it__/graphics/icons/sparging-column.png",
		icon_size = 32,
		flags = { "placeable-neutral", "placeable-player", "player-creation" },
		minable = { mining_time = 0.5, result = "bery0zas-sparging-column" },
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
						shift = util.by_pixel(80, -82),
						hr_version =
						{
							filename = "__bery0zas-pure-it__/graphics/entity/sparging-column/hr-sparging-column-east.png",
							priority = "extra-high",
							width = 576,
							height = 576,
							frame_count = 1,
							animation_speed = 1.0,
							line_length = 1,
							shift = util.by_pixel(80, -82),
							scale = 0.5
						}
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
						shift = util.by_pixel(80, -82),
						hr_version =
						{
							filename = "__bery0zas-pure-it__/graphics/entity/sparging-column/hr-sparging-column-east-shadow.png",
							priority = "medium",
							width = 576,
							height = 576,
							frame_count = 1,
							animation_speed = 1.0,
							line_length = 1,
							draw_as_shadow = true,
							shift = util.by_pixel(80, -82),
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
						filename = "__bery0zas-pure-it__/graphics/entity/sparging-column/sparging-column-north.png",
						priority = "extra-high",
						width = 288,
						height = 288,
						frame_count = 1,
						animation_speed = 1.0,
						line_length = 1,
						shift = util.by_pixel(78, -72),
						hr_version =
						{
							filename = "__bery0zas-pure-it__/graphics/entity/sparging-column/hr-sparging-column-north.png",
							priority = "extra-high",
							width = 576,
							height = 576,
							frame_count = 1,
							animation_speed = 1.0,
							line_length = 1,
							shift = util.by_pixel(78, -72),
							scale = 0.5
						}
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
						shift = util.by_pixel(78, -72),
						hr_version =
						{
							filename = "__bery0zas-pure-it__/graphics/entity/sparging-column/hr-sparging-column-north-shadow.png",
							priority = "medium",
							width = 576,
							height = 576,
							frame_count = 1,
							animation_speed = 1.0,
							line_length = 1,
							draw_as_shadow = true,
							shift = util.by_pixel(78, -72),
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
						filename = "__bery0zas-pure-it__/graphics/entity/sparging-column/sparging-column-west.png",
						priority = "extra-high",
						width = 288,
						height = 288,
						frame_count = 1,
						animation_speed = 1.0,
						line_length = 1,
						shift = util.by_pixel(80, -66),
						hr_version =
						{
							filename = "__bery0zas-pure-it__/graphics/entity/sparging-column/hr-sparging-column-west.png",
							priority = "extra-high",
							width = 576,
							height = 576,
							frame_count = 1,
							animation_speed = 1.0,
							line_length = 1,
							shift = util.by_pixel(80, -66),
							scale = 0.5
						}
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
						shift = util.by_pixel(80, -66),
						hr_version =
						{
							filename = "__bery0zas-pure-it__/graphics/entity/sparging-column/hr-sparging-column-west-shadow.png",
							priority = "medium",
							width = 576,
							height = 576,
							frame_count = 1,
							animation_speed = 1.0,
							line_length = 1,
							draw_as_shadow = true,
							shift = util.by_pixel(80, -66),
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
						filename = "__bery0zas-pure-it__/graphics/entity/sparging-column/sparging-column-south.png",
						priority = "extra-high",
						width = 288,
						height = 288,
						frame_count = 1,
						animation_speed = 1.0,
						line_length = 1,
						shift = util.by_pixel(78, -72),
						hr_version =
						{
							filename = "__bery0zas-pure-it__/graphics/entity/sparging-column/hr-sparging-column-south.png",
							priority = "extra-high",
							width = 576,
							height = 576,
							frame_count = 1,
							animation_speed = 1.0,
							line_length = 1,
							shift = util.by_pixel(78, -72),
							scale = 0.5
						}
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
						shift = util.by_pixel(78, -72),
						hr_version =
						{
							filename = "__bery0zas-pure-it__/graphics/entity/sparging-column/hr-sparging-column-south-shadow.png",
							priority = "medium",
							width = 576,
							height = 576,
							frame_count = 1,
							animation_speed = 1.0,
							line_length = 1,
							draw_as_shadow = true,
							shift = util.by_pixel(78, -72),
							scale = 0.5
						}
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
				pipe_picture = bery0zas.functions.pipe_pictures(),
				pipe_covers = pipecoverspictures(),
				base_area = 10,
				base_level = -1,
				pipe_connections = {{ type = "input", position = { -1, -1.5 } }},
				secondary_draw_orders = { north = -1 }
			},
			{
				production_type = "input",
				pipe_picture = bery0zas.functions.pipe_pictures(),
				pipe_covers = pipecoverspictures(),
				base_area = 10,
				base_level = -1,
				pipe_connections = {{ type = "input", position = { 1, -1.5 } }},
				secondary_draw_orders = { north = -1 }
			},
			{
				production_type = "output",
				pipe_picture = bery0zas.functions.pipe_pictures(),
				pipe_covers = pipecoverspictures(),
				base_area = 10,
				base_level = 1,
				pipe_connections =
				{
					{ type = "output", position = { -1, 1.5 } },
					{ type = "output", position = { 1, 1.5 } },
				},
				secondary_draw_orders = { north = -1 }
			},
			--off_when_no_fluid_recipe = true
		},
		crafting_categories = { "bery0zas-air-filtering-sparging" },
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