data:extend(
{
	{
		type = "technology",
		name = "air-purification-1",
		--localised_name = {"technology-name.air-purification-1"},
		--localised_description = {"technology-description.air-purification-1"},
		icon_size = 128,
		icon = "__bery0zas-pure-it__/graphics/technology/air-purification-1.png",
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "air-suction-tower-1"
			},
			{
				type = "unlock-recipe",
				recipe = "air-absorber-1"
			},
			{
				type = "unlock-recipe",
				recipe = "air-adsorber-1"
			},
			{
				type = "unlock-recipe",
				recipe = "spray-surface"
			},			
			{
				type = "unlock-recipe",
				recipe = "air-suction"
			},
			{
				type = "unlock-recipe",
				recipe = "water-absorption"
			},
			{
				type = "unlock-recipe",
				recipe = "water-absorption-with-spraying"
			},
			{
				type = "unlock-recipe",
				recipe = "spray-surface-recycling"
			},
			{
				type = "unlock-recipe",
				recipe = "polluted-water-recycling"
			},
			{
				type = "unlock-recipe",
				recipe = "coal-adsorption"
			},
			{
				type = "unlock-recipe",
				recipe = "coal-adsorption-with-steam"
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
		name = "air-purification-2",
		--localised_name = {"technology-name.air-purification-2"},
		--localised_description = {"technology-description.air-purification-2"},
		icon_size = 128,
		icon = "__bery0zas-pure-it__/graphics/technology/air-purification-2.png",
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "air-suction-tower-2"
			},
			{
				type = "unlock-recipe",
				recipe = "air-absorber-2"
			},
			{
				type = "unlock-recipe",
				recipe = "sparging-column"
			},
			{
				type = "unlock-recipe",
				recipe = "adsorption-coil-mk1"
			},
			{
				type = "unlock-recipe",
				recipe = "activated-carbon"
			},
			{
				type = "unlock-recipe",
				recipe = "adsorption-coil-mk1-with-activated-carbon"
			},
			{
				type = "unlock-recipe",
				recipe = "oxygen-extraction"
			},
			{
				type = "unlock-recipe",
				recipe = "oxygen-sparging"
			},
			{
				type = "unlock-recipe",
				recipe = "oxygen-sparged-water-absorption"
			},
			{
				type = "unlock-recipe",
				recipe = "oxygen-sparged-water-absorption-with-spraying"
			},
			{
				type = "unlock-recipe",
				recipe = "activated-carbon-adsorption"
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
		prerequisites = { "air-purification-1", "oil-processing", "chemical-science-pack" }
	},
	{
		type = "technology",
		name = "air-purification-3",
		--localised_name = {"technology-name.air-purification-3"},
		--localised_description = {"technology-description.air-purification-3"},
		icon_size = 128,
		icon = "__bery0zas-pure-it__/graphics/technology/air-purification-3.png",
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "air-suction-tower-3"
			},
			{
				type = "unlock-recipe",
				recipe = "air-absorber-3"
			},
			{
				type = "unlock-recipe",
				recipe = "iron-halite-extraction"
			},
			{
				type = "unlock-recipe",
				recipe = "copper-halite-extraction"
			},
			{
				type = "unlock-recipe",
				recipe = "adsorption-coil-mk2"
			},
			{
				type = "unlock-recipe",
				recipe = "cellular-carbon"
			},
			{
				type = "unlock-recipe",
				recipe = "adsorption-coil-mk2-with-cellular-carbon"
			},
			{
				type = "unlock-recipe",
				recipe = "sodium-hydroxide"
			},
			{
				type = "unlock-recipe",
				recipe = "sodium-hydroxide-sparging"
			},
			{
				type = "unlock-recipe",
				recipe = "sodium-hydroxide-sparged-water-absorption"
			},
			{
				type = "unlock-recipe",
				recipe = "sodium-hydroxide-sparged-water-absorption-with-spraying"
			},
			{
				type = "unlock-recipe",
				recipe = "cellular-carbon-adsorption"
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
		prerequisites = { "air-purification-2", "advanced-oil-processing" }
	},
})