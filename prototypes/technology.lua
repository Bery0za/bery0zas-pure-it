data:extend(
{
	{
		type = "technology",
		name = "bery0zas-air-purification-1",
		--localised_name = {"technology-name.air-purification-1"},
		--localised_description = {"technology-description.air-purification-1"},
		icon_size = 128,
		icon = "__bery0zas-pure-it__/graphics/technology/air-purification-1.png",
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "bery0zas-air-suction-tower-1"
			},
			{
				type = "unlock-recipe",
				recipe = "bery0zas-air-absorber-1"
			},
			{
				type = "unlock-recipe",
				recipe = "bery0zas-air-adsorber-1"
			},
			{
				type = "unlock-recipe",
				recipe = "bery0zas-spray-surface"
			},			
			{
				type = "unlock-recipe",
				recipe = "bery0zas-air-suction"
			},
			{
				type = "unlock-recipe",
				recipe = "bery0zas-water-absorption"
			},
			{
				type = "unlock-recipe",
				recipe = "bery0zas-water-absorption-with-spraying"
			},
			{
				type = "unlock-recipe",
				recipe = "bery0zas-spray-surface-recycling"
			},
			{
				type = "unlock-recipe",
				recipe = "bery0zas-polluted-water-recycling"
			},
			{
				type = "unlock-recipe",
				recipe = "bery0zas-coal-adsorption"
			},
			{
				type = "unlock-recipe",
				recipe = "bery0zas-coal-adsorption-with-steam"
			}
		},
		unit =
		{
			count = 150,
			ingredients =
			{
				{ "automation-science-pack", 1 },
				{ "logistic-science-pack", 1 }
			},
			time = 20
		},
		prerequisites = { "advanced-material-processing", "engine", "logistic-science-pack" }
	},
	{
		type = "technology",
		name = "bery0zas-air-purification-2",
		--localised_name = {"technology-name.air-purification-2"},
		--localised_description = {"technology-description.air-purification-2"},
		icon_size = 128,
		icon = "__bery0zas-pure-it__/graphics/technology/air-purification-2.png",
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "bery0zas-air-suction-tower-2"
			},
			{
				type = "unlock-recipe",
				recipe = "bery0zas-air-absorber-2"
			},
			{
				type = "unlock-recipe",
				recipe = "bery0zas-sparging-column"
			},
			{
				type = "unlock-recipe",
				recipe = "bery0zas-adsorption-coil-mk1"
			},
			{
				type = "unlock-recipe",
				recipe = "bery0zas-activated-carbon"
			},
			{
				type = "unlock-recipe",
				recipe = "bery0zas-adsorption-coil-mk1-with-activated-carbon"
			},
			{
				type = "unlock-recipe",
				recipe = "bery0zas-oxygen-extraction"
			},
			{
				type = "unlock-recipe",
				recipe = "bery0zas-oxygen-sparging"
			},
			{
				type = "unlock-recipe",
				recipe = "bery0zas-oxygen-sparged-water-absorption"
			},
			{
				type = "unlock-recipe",
				recipe = "bery0zas-oxygen-sparged-water-absorption-with-spraying"
			},
			{
				type = "unlock-recipe",
				recipe = "bery0zas-activated-carbon-adsorption"
			}
		},
		unit =
		{
			count = 250,
			ingredients =
			{
				{ "automation-science-pack", 1 },
				{ "logistic-science-pack", 1 },
				{ "chemical-science-pack", 1 }
			},
			time = 25
		},
		prerequisites = { "bery0zas-air-purification-1", "oil-processing", "chemical-science-pack" }
	},
	{
		type = "technology",
		name = "bery0zas-air-purification-3",
		--localised_name = {"technology-name.air-purification-3"},
		--localised_description = {"technology-description.air-purification-3"},
		icon_size = 128,
		icon = "__bery0zas-pure-it__/graphics/technology/air-purification-3.png",
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "bery0zas-air-suction-tower-3"
			},
			{
				type = "unlock-recipe",
				recipe = "bery0zas-air-absorber-3"
			},
			{
				type = "unlock-recipe",
				recipe = "bery0zas-iron-halite-extraction"
			},
			{
				type = "unlock-recipe",
				recipe = "bery0zas-copper-halite-extraction"
			},
			{
				type = "unlock-recipe",
				recipe = "bery0zas-adsorption-coil-mk2"
			},
			{
				type = "unlock-recipe",
				recipe = "bery0zas-cellular-carbon"
			},
			{
				type = "unlock-recipe",
				recipe = "bery0zas-adsorption-coil-mk2-with-cellular-carbon"
			},
			{
				type = "unlock-recipe",
				recipe = "bery0zas-sodium-hydroxide"
			},
			{
				type = "unlock-recipe",
				recipe = "bery0zas-sodium-hydroxide-sparging"
			},
			{
				type = "unlock-recipe",
				recipe = "bery0zas-sodium-hydroxide-sparged-water-absorption"
			},
			{
				type = "unlock-recipe",
				recipe = "bery0zas-sodium-hydroxide-sparged-water-absorption-with-spraying"
			},
			{
				type = "unlock-recipe",
				recipe = "bery0zas-cellular-carbon-adsorption"
			}
		},
		unit =
		{
			count = 500,
			ingredients =
			{
				{ "automation-science-pack", 1 },
				{ "logistic-science-pack", 1 },
				{ "chemical-science-pack", 1 }
			},
			time = 30
		},
		prerequisites = { "bery0zas-air-purification-2", "advanced-oil-processing" }
	},
})