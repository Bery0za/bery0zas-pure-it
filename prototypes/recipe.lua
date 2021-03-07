data:extend({
	{
		type = "recipe",
		name = "bery0zas-sparging-column",
		category = "bery0zas-air-filtering-machine",
		enabled = false,
		energy_required = 10.0,
		ingredients = {
			{"electric-engine-unit", 3},
			{"electronic-circuit", 3},
			{"iron-plate", 10},
			{"steel-plate", 10},
			{"pipe", 10}
		},
		result = "bery0zas-sparging-column"
	},
	{
		type = "recipe",
		name = "bery0zas-spray-surface",
		energy_required = 10,
		category = "bery0zas-air-filtering-item",
		enabled = false,
		ingredients = {{"iron-plate", 2}, {"iron-stick", 6}},
		icon = "__bery0zas-pure-it__/graphics/icons/spray-surface.png",
		icon_size = 32,
		subgroup = "intermediate-product",
		results = {{ name = "bery0zas-spray-surface", amount = 1 }}
	},
	{
		type = "recipe",
		name = "bery0zas-iron-halite-extraction",
		energy_required = 2,
		category = "bery0zas-air-filtering-item",
		enabled = false,
		ingredients = {{"iron-ore", 20}},
		icon = "__bery0zas-pure-it__/graphics/icons/recipe/iron-halite-extraction.png",
		icon_size = 32,
		subgroup = "raw-resource",
		results =
		{
			{ name = "iron-ore", amount = 19 },
			{ name = "bery0zas-halite", amount = 1 }
		}
	},
	{
		type = "recipe",
		name = "bery0zas-copper-halite-extraction",
		energy_required = 2,
		category = "bery0zas-air-filtering-item",
		enabled = false,
		ingredients = {{"copper-ore", 20}},
		icon = "__bery0zas-pure-it__/graphics/icons/recipe/copper-halite-extraction.png",
		icon_size = 32,
		subgroup = "raw-resource",
		results =
		{
			{ name = "copper-ore", amount = 19 },
			{ name = "bery0zas-halite", amount = 1 }
		}
	},
	{
		type = "recipe",
		name = "bery0zas-adsorption-coil-mk1",
		energy_required = 10,
		category = "bery0zas-air-filtering-item",
		enabled = false,
		ingredients = {{"iron-plate", 3}, {"iron-stick", 8}},
		icon = "__bery0zas-pure-it__/graphics/icons/adsorption-coil-mk1.png",
		icon_size = 32,
		subgroup = "intermediate-product",
		results = {{ name = "bery0zas-adsorption-coil-mk1", amount = 1 }}
	},
	{
		type = "recipe",
		name = "bery0zas-adsorption-coil-mk2",
		energy_required = 10,
		category = "bery0zas-air-filtering-item",
		enabled = false,
		ingredients = {{"steel-plate", 3}, {"iron-stick", 8}},
		icon = "__bery0zas-pure-it__/graphics/icons/adsorption-coil-mk2.png",
		icon_size = 32,
		subgroup = "intermediate-product",
		results = {{ name = "bery0zas-adsorption-coil-mk2", amount = 1 }}
	},
	{
		type = "recipe",
		name = "bery0zas-adsorption-coil-mk1-with-activated-carbon",
		energy_required = 5,
		category = "bery0zas-air-filtering-item",
		enabled = false,
		ingredients =
		{
			{"bery0zas-adsorption-coil-mk1", 1},
			{"bery0zas-activated-carbon", 3}
		},
		icon = "__bery0zas-pure-it__/graphics/icons/adsorption-coil-mk1-with-activated-carbon.png",
		icon_size = 32,
		subgroup = "intermediate-product",
		results = {{ name = "bery0zas-adsorption-coil-mk1-with-activated-carbon", amount = 1 }}
	},
	{
		type = "recipe",
		name = "bery0zas-adsorption-coil-mk2-with-cellular-carbon",
		energy_required = 5,
		category = "bery0zas-air-filtering-item",
		enabled = false,
		ingredients = {{"bery0zas-adsorption-coil-mk2", 1}, {"bery0zas-cellular-carbon", 3}},
		icon = "__bery0zas-pure-it__/graphics/icons/adsorption-coil-mk2-with-cellular-carbon.png",
		icon_size = 32,
		subgroup = "intermediate-product",
		results = {{ name = "bery0zas-adsorption-coil-mk2-with-cellular-carbon", amount = 1 }}
	},
	{
		type = "recipe",
		name = "bery0zas-spray-surface-recycling",
		energy_required = 7,
		category = "bery0zas-air-filtering-burning",
		enabled = false,
		ingredients = {{ name = "bery0zas-polluted-spray-surface", amount = 1 }},
		icon = "__bery0zas-pure-it__/graphics/icons/recipe/polluted-spray-surface-recycling.png",
		icon_size = 32,
		subgroup = "smelting-machine",
		results = {{ name = "bery0zas-spray-surface", amount = 1 }},
		main_product = ""
	},
	{
		type = "recipe",
		name = "bery0zas-activated-carbon",
		energy_required = 10,
		category = "bery0zas-air-filtering-chemistry",
		enabled = false,
		ingredients = 
		{
			{ type = "item", name = "coal", amount = 10 },
			{ type = "fluid", name = "sulfuric-acid", amount = 20 }
		},
		icon = "__bery0zas-pure-it__/graphics/icons/activated-carbon.png",
		icon_size = 32,
		subgroup = "raw-resource",
		results = {{ name = "bery0zas-activated-carbon", amount = 8 }}
	},
	{
		type = "recipe",
		name = "bery0zas-cellular-carbon",
		energy_required = 10,
		category = "bery0zas-air-filtering-chemistry",
		enabled = false,
		ingredients =
		{
			{ type = "item", name = "bery0zas-activated-carbon", amount = 8 },
			{ type = "fluid", name = "petroleum-gas", amount = 20 }
		},
		icon = "__bery0zas-pure-it__/graphics/icons/cellular-carbon.png",
		icon_size = 32,
		subgroup = "raw-resource",
		results = {{ name = "bery0zas-cellular-carbon", amount = 8 }}
	},
	{
		type = "recipe",
		name = "bery0zas-air-suction",
		energy_required = 1,
		category = "bery0zas-air-filtering-suction",
		enabled = false,
		ingredients = {{ type = "fluid", name = "bery0zas-pollution", amount = 1, fluidbox_index = 1 }},
		icon = "__bery0zas-pure-it__/graphics/icons/fluid/steam.png",
		icon_size = 32,
		subgroup = "terrain",
		results = {{ type = "fluid", name = "bery0zas-polluted-air", amount = 1 }},
		main_product = ""
	},
	{
		type = "recipe",
		name = "bery0zas-water-absorption",
		energy_required = 25,
		category = "bery0zas-air-filtering-absorption",
		enabled = false,
		ingredients =
		{
			{ type = "fluid", name = "water", amount = 2, fluidbox_index = 1 },
			{ type = "fluid", name = "bery0zas-polluted-air", amount = 2, fluidbox_index = 2 }
		},
		icon = "__bery0zas-pure-it__/graphics/icons/recipe/water-absorption.png",
		icon_size = 32,
		subgroup = "terrain",
		results = {{type = "fluid", name = "bery0zas-polluted-water", amount = 4}},
		main_product = ""
	},
	{
		type = "recipe",
		name = "bery0zas-oxygen-extraction",
		energy_required = 10,
		category = "bery0zas-air-filtering-chemistry",
		enabled = false,
		ingredients = {},
		icon = "__bery0zas-pure-it__/graphics/icons/fluid/oxygen.png",
		icon_size = 32,
		subgroup = "fluid-recipes",
		results = {{ type = "fluid", name = "bery0zas-oxygen", amount = 2 }},
		main_product = ""
	},
	{
		type = "recipe",
		name = "bery0zas-oxygen-sparging",
		energy_required = 20,
		category = "bery0zas-air-filtering-sparging",
		enabled = false,
		ingredients =
		{
			{ type = "fluid", name = "water", amount = 10 },
			{ type = "fluid", name = "bery0zas-oxygen", amount = 10 }
		},
		icon = "__bery0zas-pure-it__/graphics/icons/recipe/oxygen-sparging.png",
		icon_size = 32,
		subgroup = "fluid-recipes",
		results = {
			{
				type = "fluid",
				name = "bery0zas-oxygen-sparged-water",
				amount = 20
			}
		},
		main_product = ""
	},
	{
		type = "recipe",
		name = "bery0zas-oxygen-sparged-water-absorption",
		energy_required = 20,
		category = "bery0zas-air-filtering-absorption",
		enabled = false,
		ingredients =
		{
			{ type = "fluid", name = "bery0zas-oxygen-sparged-water", amount = 4, fluidbox_index = 1 },
			{ type = "fluid", name = "bery0zas-polluted-air", amount = 4, fluidbox_index = 2 }
		},
		icon = "__bery0zas-pure-it__/graphics/icons/recipe/oxygen-sparged-water-absorption.png",
		icon_size = 32,
		subgroup = "terrain",
		results = {{ type = "fluid", name = "bery0zas-polluted-water", amount = 8 }},
		main_product = ""
	},
	{
		type = "recipe",
		name = "bery0zas-sodium-hydroxide-sparged-water-absorption",
		energy_required = 15,
		category = "bery0zas-air-filtering-absorption",
		enabled = false,
		ingredients =
		{
			{ type = "fluid", name = "bery0zas-sodium-hydroxide-sparged-water", amount = 8, fluidbox_index = 1 },
			{ type = "fluid", name = "bery0zas-polluted-air", amount = 8, fluidbox_index = 2 }
		},
		icon = "__bery0zas-pure-it__/graphics/icons/recipe/sodium-hydroxide-sparged-water-absorption.png",
		icon_size = 32,
		subgroup = "terrain",
		results = {{ type = "fluid", name = "bery0zas-polluted-water", amount = 16 }},
		main_product = ""
	},
	{
		type = "recipe",
		name = "bery0zas-water-absorption-with-spraying",
		energy_required = 20,
		category = "bery0zas-air-filtering-absorption",
		enabled = false,
		ingredients =
		{
			{ type = "fluid", name = "water", amount = 2, fluidbox_index = 1 },
			{ type = "fluid", name = "bery0zas-polluted-air", amount = 2, fluidbox_index = 2 },
			{ type = "item", name = "bery0zas-spray-surface", amount = 2 }
		},
		icon = "__bery0zas-pure-it__/graphics/icons/recipe/water-absorption-with-spraying.png",
		icon_size = 32,
		subgroup = "terrain",
		results =
		{
			{ type = "fluid", name = "bery0zas-polluted-water", amount = 4 },
			{ type = "item", name = "bery0zas-polluted-spray-surface", amount = 2 }
		}
	},	
	{
		type = "recipe",
		name = "bery0zas-oxygen-sparged-water-absorption-with-spraying",
		energy_required = 10,
		category = "bery0zas-air-filtering-absorption",
		enabled = false,
		ingredients =
		{
			{ type = "fluid", name = "bery0zas-oxygen-sparged-water", amount = 4, fluidbox_index = 1},
			{ type = "fluid", name = "bery0zas-polluted-air", amount = 4, fluidbox_index = 2 },
			{ type = "item", name = "bery0zas-spray-surface", amount = 1 }
		},
		icon = "__bery0zas-pure-it__/graphics/icons/recipe/oxygen-sparged-water-absorption-with-spraying.png",
		icon_size = 32,
		subgroup = "terrain",
		results =
		{
			{ type = "fluid", name = "bery0zas-polluted-water", amount = 8 },
			{ type = "item", name = "bery0zas-polluted-spray-surface", amount = 1 }
		}
	},
	{
		type = "recipe",
		name = "bery0zas-sodium-hydroxide",
		energy_required = 10,
		category = "bery0zas-air-filtering-chemistry",
		enabled = false,
		ingredients =
		{
			{ type = "fluid", name = "water", amount = 30 },
			{ type = "item", name = "bery0zas-halite", amount = 3 }
		},
		icon = "__bery0zas-pure-it__/graphics/icons/fluid/sodium-hydroxide.png",
		icon_size = 32,
		subgroup = "fluid-recipes",
		results = {
			{
				type = "fluid",
				name = "bery0zas-sodium-hydroxide",
				amount = 30
			}
		},
		main_product = ""
	},
	{
		type = "recipe",
		name = "bery0zas-sodium-hydroxide-sparging",
		energy_required = 20,
		category = "bery0zas-air-filtering-sparging",
		enabled = false,
		ingredients =
		{
			{ type = "fluid", name = "water", amount = 10 },
			{ type = "fluid", name = "bery0zas-sodium-hydroxide", amount = 10 }
		},
		icon = "__bery0zas-pure-it__/graphics/icons/recipe/sodium-hydroxide-sparging.png",
		icon_size = 32,
		subgroup = "fluid-recipes",
		results = {
			{
				type = "fluid",
				name = "bery0zas-sodium-hydroxide-sparged-water",
				amount = 20
			}
		},
		main_product = ""
	},
	{
		type = "recipe",
		name = "bery0zas-sodium-hydroxide-sparged-water-absorption-with-spraying",
		energy_required = 10,
		category = "bery0zas-air-filtering-absorption",
		enabled = false,
		ingredients =
		{
			{ type = "fluid", name = "bery0zas-sodium-hydroxide-sparged-water", amount = 8, fluidbox_index = 1 },
			{ type = "fluid", name = "bery0zas-polluted-air", amount = 8, fluidbox_index = 2 },
			{ type = "item", name = "bery0zas-spray-surface", amount = 1 }
		},
		icon = "__bery0zas-pure-it__/graphics/icons/recipe/sodium-hydroxide-sparged-water-absorption-with-spraying.png",
		icon_size = 32,
		subgroup = "terrain",
		results =
		{
			{ type = "fluid", name = "bery0zas-polluted-water", amount = 16 },
			{ type = "item", name = "bery0zas-polluted-spray-surface", amount = 1 }
		}
	},
	{
		type = "recipe",
		name = "bery0zas-polluted-water-recycling",
		energy_required = 10,
		category = "bery0zas-air-filtering-chemistry",
		enabled = false,
		ingredients = {{ type = "fluid", name = "bery0zas-polluted-water", amount = 20 }},
		icon = "__bery0zas-pure-it__/graphics/icons/recipe/polluted-water-recycling.png",
		icon_size = 32,
		subgroup = "fluid-recipes",
		results =
		{
			{ type = "fluid", name = "water", amount = 15 },
			{ type = "fluid", name = "crude-oil", probability = 0.05, amount = 20 },
			{ type = "item", name = "coal", probability = 0.05, amount = 2 },
			{ type = "item", name = "iron-ore", probability = 0.05, amount = 2 },
			{ type = "item", name = "copper-ore", probability = 0.05, amount = 2 }
		}
	},
	{
		type = "recipe",
		name = "bery0zas-coal-adsorption",
		energy_required = 25,
		category = "bery0zas-air-filtering-adsorption",
		enabled = false,
		ingredients =
		{
			{ type = "item", name = "coal", amount = 1 },
			{ type = "fluid", name = "bery0zas-polluted-air", amount = 2, fluidbox_index = 2 }
		},
		icon = "__bery0zas-pure-it__/graphics/icons/coal.png",
		icon_size = 32,
		subgroup = "terrain",
		results = {{ type = "item", name = "bery0zas-polluted-spray-surface", amount = 1 }}
	},
	{
		type = "recipe",
		name = "bery0zas-coal-adsorption-with-steam",
		energy_required = 20,
		category = "bery0zas-air-filtering-adsorption",
		enabled = false,
		ingredients =
		{
			{ type = "item", name = "coal", amount = 2 },
			{ type = "fluid", name = "steam", amount = 2, fluidbox_index = 1 },
			{ type = "fluid", name = "bery0zas-polluted-air", amount = 2, fluidbox_index = 2 }
		},
		icon = "__bery0zas-pure-it__/graphics/icons/fluid/steam.png",
		icon_size = 32,
		subgroup = "terrain",
		results = {{ type = "item", name = "bery0zas-polluted-spray-surface", amount = 1 }}
	},
	{
		type = "recipe",
		name = "bery0zas-activated-carbon-adsorption",
		energy_required = 12,
		category = "bery0zas-air-filtering-adsorption",
		enabled = false,
		ingredients =
		{
			{ type = "item", name = "bery0zas-adsorption-coil-mk1-with-activated-carbon", amount = 1 },
			{ type = "fluid", name = "bery0zas-polluted-air", amount = 5, fluidbox_index = 2 }
		},
		icon = "__bery0zas-pure-it__/graphics/icons/adsorption-coil-mk1-with-activated-carbon.png",
		icon_size = 32,
		subgroup = "terrain",
		results =
		{
			{ type = "item", name = "bery0zas-adsorption-coil-mk1", amount = 1 }
		},
		main_product = ""
	},
	{
		type = "recipe",
		name = "bery0zas-cellular-carbon-adsorption",
		energy_required = 8,
		category = "bery0zas-air-filtering-adsorption",
		enabled = false,
		ingredients =
		{
			{ type = "item", name = "bery0zas-adsorption-coil-mk2-with-cellular-carbon", amount = 1 },
			{ type = "fluid", name = "bery0zas-polluted-air", amount = 5, fluidbox_index = 2 }
		},
		icon = "__bery0zas-pure-it__/graphics/icons/adsorption-coil-mk2-with-cellular-carbon.png",
		icon_size = 32,
		subgroup = "terrain",
		results = {{ type = "item", name = "bery0zas-adsorption-coil-mk2", amount = 1 }},
		main_product = ""
	}
})
