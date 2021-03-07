bery0zas.pure_it.integration.bobplates = {}

bery0zas.functions.remove_technology_recipe("bery0zas-air-purification-2", "bery0zas-oxygen-extraction")

bery0zas.functions.remove_recipe("bery0zas-spray-surface-recycling")
bery0zas.functions.remove_recipe("bery0zas-oxygen-extraction")
bery0zas.functions.remove_recipe("bery0zas-oxygen-sparging")

bery0zas.functions.remove_fluid("bery0zas-oxygen")

--RECIPES--
data:extend({
	{
		type = "recipe",
		name = "bery0zas-spray-surface-recycling",
		energy_required = 5,
		category = "bery0zas-air-filtering-burning",
		enabled = false,
		ingredients = {{ "bery0zas-polluted-spray-surface", 3 }},
		icon = "__bery0zas-pure-it__/graphics/icons/recipe/polluted-spray-surface-recycling.png",
		icon_size = 32,
		subgroup = "smelting-machine",
		results = {{ name = "bery0zas-spray-surface", amount = 3 }},
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
			{ type = "fluid", name = "oxygen", amount = 100 }
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
	}
})