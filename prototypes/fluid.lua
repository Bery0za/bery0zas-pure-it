data:extend({
	{
		type = "fluid",
		name = "bery0zas-pollution",
		default_temperature = 15,
		max_temperature = 100,
		gas_temperature = 0,
		base_color = { r = 0.1, g = 0.05, b = 0.05 },
		flow_color = { r = 0.1, g = 0.05, b = 0.05 },
		icon = "__bery0zas-pure-it__/graphics/icons/fluid/pollution.png",
		icon_size = 32,
		auto_barrel = false
	},
	{
		type = "fluid",
		name = "bery0zas-polluted-air",
		default_temperature = 15,
		max_temperature = 100,
		gas_temperature = 0,
		base_color = { r = 0.1, g = 0.05, b = 0.05 },
		flow_color = { r = 0.1, g = 0.05, b = 0.05 },
		icon = "__bery0zas-pure-it__/graphics/icons/fluid/pollution.png",
		icon_size = 32,
		auto_barrel = false
	},	
	{
		type = "fluid",
		name = "bery0zas-polluted-water",
		default_temperature = 15,
		max_temperature = 100,
		base_color = { r = 0.06, g = 0.2, b = 0.22 },
		flow_color = { r = 0.06, g = 0.2, b = 0.22 },
		icon = "__bery0zas-pure-it__/graphics/icons/fluid/polluted-water.png",
		icon_size = 32,
		auto_barrel = false
	}
})

if not (mods["bobplates"] or mods["angelspetrochem"]) then
	data:extend({
		{
			type = "fluid",
			name = "bery0zas-oxygen",
			default_temperature = 15,
			max_temperature = 100,
			gas_temperature = 0,
			base_color = { r = 0.98, g = 0.1, b = 0.1 },
			flow_color = { r = 0.98, g = 0.1, b = 0.1 },
			icon = "__bery0zas-pure-it__/graphics/icons/fluid/oxygen.png",
			icon_size = 32,
			auto_barrel = true
		}
	})
end

if not mods["angelspetrochem"] then
	data:extend({
		{
			type = "fluid",
			name = "bery0zas-sodium-hydroxide",
			default_temperature = 15,
			max_temperature = 100,
			gas_temperature = 0,
			base_color = { r = 0.96, g = 0.98, b = 1.0 },
			flow_color = { r = 0.96, g = 0.98, b = 1.0 },
			icon = "__bery0zas-pure-it__/graphics/icons/fluid/sodium-hydroxide.png",
			icon_size = 32,
			auto_barrel = true
		},
		{
			type = "fluid",
			name = "bery0zas-oxygen-sparged-water",
			default_temperature = 15,
			max_temperature = 100,
			base_color = { r = 0.62, g = 0.7, b = 0.95 },
			flow_color = { r = 0.62, g = 0.7, b = 0.95 },
			icon = "__bery0zas-pure-it__/graphics/icons/fluid/oxygen-sparged-water.png",
			icon_size = 32,
			auto_barrel = false
		},
		{
			type = "fluid",
			name = "bery0zas-sodium-hydroxide-sparged-water",
			default_temperature = 15,
			max_temperature = 100,
			base_color = { r = 0.87, g = 0.7, b = 0.95 },
			flow_color = { r = 0.87, g = 0.7, b = 0.95 },
			icon = "__bery0zas-pure-it__/graphics/icons/fluid/sodium-hydroxide-sparged-water.png",
			icon_size = 32,
			auto_barrel = false
		}
	})
else
	data:extend({
		{
			type = "fluid",
			name = "bery0zas-oxygen-sparged-water",
			default_temperature = 15,
			max_temperature = 100,
			base_color = { r = 0.62, g = 0.7, b = 0.95 },
			flow_color = { r = 0.62, g = 0.7, b = 0.95 },
			icons = angelsmods.functions.create_viscous_liquid_fluid_icon(nil, {{094, 114, 174}, {198, 011, 011}}),
			auto_barrel = false
		},
	})
end

