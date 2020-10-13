data:extend(
{
	{
        type = "recipe",
        name = "sparging-column",
        category = "air-filtering-machine",
        energy_required = 10.0,
        ingredients =
        {
			{ "electric-engine-unit", 3 },			
            { "electronic-circuit", 3 },
            { "iron-plate", 10 },
			{ "steel-plate", 10 },
			{ "pipe", 10 }
        },
        result = "sparging-column"
    },
	{
		type = "recipe",
		name = "spray-surface",
		energy_required = 10,
		category = "air-filtering-item",
		ingredients =
		{
			{"iron-plate", 3},
			{"iron-stick", 8}
		},
		icon = "__bery0zas-pure-it__/graphics/icons/spray-surface.png",
		icon_size = 32,
		subgroup = "intermediate-product",
		results =
		{
		  { name = "spray-surface", amount = 1 }
		}
	},
	{
		type = "recipe",
		name = "adsorption-coil-mk1",
		energy_required = 10,
		category = "air-filtering-item",
		ingredients =
		{
			{"iron-plate", 3},
			{"iron-stick", 8}
		},
		icon = "__bery0zas-pure-it__/graphics/icons/adsorption-coil-mk1.png",
		icon_size = 32,
		subgroup = "intermediate-product",
		results =
		{
		  { name = "adsorption-coil-mk1", amount = 1 }
		}
	},
	{
		type = "recipe",
		name = "adsorption-coil-mk2",
		energy_required = 10,
		category = "air-filtering-item",
		ingredients =
		{
			{"steel-plate", 3},
			{"iron-stick", 8}
		},
		icon = "__bery0zas-pure-it__/graphics/icons/adsorption-coil-mk2.png",
		icon_size = 32,
		subgroup = "intermediate-product",
		results =
		{
		  { name = "adsorption-coil-mk2", amount = 1 }
		}
	},
	{
		type = "recipe",
		name = "adsorption-coil-mk1-with-activated-carbon",
		energy_required = 5,
		category = "air-filtering-item",
		ingredients =
		{
			{"adsorption-coil-mk1", 1},
			{"activated-carbon", 3}
		},
		icon = "__bery0zas-pure-it__/graphics/icons/adsorption-coil-mk1-with-activated-carbon.png",
		icon_size = 32,
		subgroup = "intermediate-product",
		results =
		{
		  { name = "adsorption-coil-mk1-with-activated-carbon", amount = 1 }
		}
	},
	{
		type = "recipe",
		name = "adsorption-coil-mk2-with-cellular-carbon",
		energy_required = 5,
		category = "air-filtering-item",
		ingredients =
		{
			{"adsorption-coil-mk2", 1},
			{"cellular-carbon", 3}
		},
		icon = "__bery0zas-pure-it__/graphics/icons/adsorption-coil-mk2-with-cellular-carbon.png",
		icon_size = 32,
		subgroup = "intermediate-product",
		results =
		{
		  { name = "adsorption-coil-mk2-with-cellular-carbon", amount = 1 }
		}
	},
	{
		type = "recipe",
		name = "spray-surface-recycling",
		energy_required = 10,
		category = "air-filtering-burning",
		ingredients =
		{
			{ "polluted-spray-surface", 1 },
		},
		icon = "__bery0zas-pure-it__/graphics/icons/recipe/polluted-spray-surface-recycling.png",
		icon_size = 32,
		subgroup = "smelting-machine",
		results =
		{
		  { name = "spray-surface", amount = 1 }
		}
	},
    {
		type = "recipe",
		name = "polluted-water-recycling",
		energy_required = 10,
		category = "air-filtering-chemistry",
		ingredients =
		{
			{ type = "fluid", name = "polluted-water", amount = 20 }
		},
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
    name = "iron-halite-extraction",
    energy_required = 10,
    category = "air-filtering-item",
    ingredients =
	{
		{ "iron-ore", 20 },
	},
    icon = "__bery0zas-pure-it__/graphics/icons/recipe/iron-halite-extraction.png",
    icon_size = 32,
    subgroup = "raw-resource",
    results =
    {
      { name = "iron-ore", amount = 19 },
      { name = "halite", amount = 1 }
    }
  },
  {
    type = "recipe",
    name = "copper-halite-extraction",
    energy_required = 10,
    category = "air-filtering-item",
    ingredients =
	{
		{ "copper-ore", 20 },
	},
    icon = "__bery0zas-pure-it__/graphics/icons/recipe/copper-halite-extraction.png",
    icon_size = 32,
    subgroup = "raw-resource",
    results =
    {
      { name = "copper-ore", amount = 19 },
      { name = "halite", amount = 1 }
    }
  },
  {
    type = "recipe",
    name = "activated-carbon",
    energy_required = 10,
    category = "air-filtering-chemistry",
    ingredients =
	{
		{ type = "item", name = "coal", amount = 5 },
		{ type = "fluid", name = "sulfuric-acid", amount = 10 },
	},
    icon = "__bery0zas-pure-it__/graphics/icons/activated-carbon.png",
    icon_size = 32,
    subgroup = "raw-resource",
    results =
    {
      { name = "activated-carbon", amount = 5 },
    }
  },
  {
    type = "recipe",
    name = "cellular-carbon",
    energy_required = 10,
    category = "air-filtering-chemistry",
    ingredients =
	{
		{ type = "item", name = "activated-carbon", amount = 5 },
		{ type = "fluid", name = "petroleum-gas", amount = 10 },
	},
    icon = "__bery0zas-pure-it__/graphics/icons/cellular-carbon.png",
    icon_size = 32,
    subgroup = "raw-resource",
    results =
    {
      { name = "cellular-carbon", amount = 5 },
    }
  },
  {
    type = "recipe",
    name = "sodium-hydroxide",
    energy_required = 10,
    category = "air-filtering-chemistry",
    ingredients =
	{
		{ type = "fluid", name = "water", amount = 10 },
		{ type = "item", name = "halite", amount = 5 }
	},
    icon = "__bery0zas-pure-it__/graphics/icons/fluid/sodium-hydroxide.png",
    icon_size = 32,
    subgroup = "fluid-recipes",
    results =
    {
      { type = "fluid", name = "sodium-hydroxide", amount = 15 }
    }
  },
  {
    type = "recipe",
    name = "oxygen-extraction",
    energy_required = 10,
    category = "air-filtering-chemistry",
    ingredients =
	{

	},
    icon = "__bery0zas-pure-it__/graphics/icons/fluid/oxygen.png",
    icon_size = 32,
    subgroup = "fluid-recipes",
    results =
    {
      { type = "fluid", name = "oxygen", amount = 10 }
    }
  },
  {
    type = "recipe",
    name = "oxygen-sparging",
    energy_required = 20,
    category = "air-filtering-sparging",
    ingredients =
	{
		{ type = "fluid", name = "water", amount = 10 }
	},
    icon = "__bery0zas-pure-it__/graphics/icons/recipe/oxygen-sparging.png",
    icon_size = 32,
    subgroup = "fluid-recipes",
    results =
    {
      { type = "fluid", name = "oxygen-sparged-water", amount = 20 }
    }
  },
  {
    type = "recipe",
    name = "sodium-hydroxide-sparging",
    energy_required = 20,
    category = "air-filtering-sparging",
    ingredients =
	{
		{ type = "fluid", name= "water", amount = 10 },
		{ type = "fluid", name = "sodium-hydroxide", amount = 10 }
	},
    icon = "__bery0zas-pure-it__/graphics/icons/recipe/sodium-hydroxide-sparging.png",
    icon_size = 32,
    subgroup = "fluid-recipes",
    results =
    {
      { type = "fluid", name = "sodium-hydroxide-sparged-water", amount = 20 }
    }
  },
  {
    type = "recipe",
    name = "air-suction",
    energy_required = 1,
    category = "air-filtering-suction",
    ingredients =
	{
		{ type = "fluid", name = "pollution", amount = 1, fluidbox_index = 1 },
	},
    icon = "__base__/graphics/icons/fluid/pollution.png",
    icon_size = 32,
    subgroup = "terrain",
    results =
    {		
      { type = "fluid", name = "polluted-air", amount = 1 },
    }
  },
  {
    type = "recipe",
    name = "water-absorption",
    energy_required = 20,
    category = "air-filtering-absorption",
    ingredients =
	{
		{ type = "fluid", name= "water", amount = 2, fluidbox_index = 1 },
		{ type = "fluid", name = "polluted-air", amount = 2, fluidbox_index = 2 },
	},
    icon = "__bery0zas-pure-it__/graphics/icons/recipe/water-absorption.png",
    icon_size = 32,
    subgroup = "terrain",
    results =
    {		
      { type = "fluid", name = "polluted-water", amount = 4 },
    }
  },
  {
    type = "recipe",
    name = "oxygen-sparged-water-absorption",
    energy_required = 20,
    category = "air-filtering-absorption",
    ingredients =
	{		
		{ type = "fluid", name= "oxygen-sparged-water", amount = 5, fluidbox_index = 1 },
		{ type = "fluid", name = "polluted-air", amount = 5, fluidbox_index = 2 },
	},
    icon = "__bery0zas-pure-it__/graphics/icons/recipe/oxygen-sparged-water-absorption.png",
    icon_size = 32,
    subgroup = "terrain",
    results =
    {		
      { type = "fluid", name = "polluted-water", amount = 10 },
    }
  },
  {
    type = "recipe",
    name = "sodium-hydroxide-sparged-water-absorption",
    energy_required = 20,
    category = "air-filtering-absorption",
    ingredients =
	{		
		{ type = "fluid", name= "sodium-hydroxide-sparged-water", amount = 10, fluidbox_index = 1 },
		{ type = "fluid", name = "polluted-air", amount = 10, fluidbox_index = 2 },
	},
    icon = "__bery0zas-pure-it__/graphics/icons/recipe/sodium-hydroxide-sparged-water-absorption.png",
    icon_size = 32,
    subgroup = "terrain",
    results =
    {		
      { type = "fluid", name = "polluted-water", amount = 20 },
    }
  },
  {
    type = "recipe",
    name = "water-absorption-with-spraying",
    energy_required = 10,
    category = "air-filtering-absorption",
    ingredients =
	{
		{ type = "fluid", name= "water", amount = 2, fluidbox_index = 1 },
		{ type = "fluid", name = "polluted-air", amount = 2, fluidbox_index = 2 },
		{ type = "item", name = "spray-surface", amount = 1 }
	},
    icon = "__bery0zas-pure-it__/graphics/icons/recipe/water-absorption-with-spraying.png",
    icon_size = 32,
    subgroup = "terrain",
    results =
    {		
      { type = "fluid", name = "polluted-water", amount = 4 },
	  { type = "item", name = "polluted-spray-surface", amount = 1 }
    }
  },
  {
    type = "recipe",
    name = "oxygen-sparged-water-absorption-with-spraying",
    energy_required = 10,
    category = "air-filtering-absorption",
    ingredients =
	{		
		{ type = "fluid", name= "oxygen-sparged-water", amount = 5, fluidbox_index = 1 },
		{ type = "fluid", name = "polluted-air", amount = 5, fluidbox_index = 2 },
		{ type = "item", name = "spray-surface", amount = 1 }
	},
    icon = "__bery0zas-pure-it__/graphics/icons/recipe/oxygen-sparged-water-absorption-with-spraying.png",
    icon_size = 32,
    subgroup = "terrain",
    results =
    {		
      { type = "fluid", name = "polluted-water", amount = 10 },
	  { type = "item", name = "polluted-spray-surface", amount = 1 }
    }
  },
  {
    type = "recipe",
    name = "sodium-hydroxide-sparged-water-absorption-with-spraying",
    energy_required = 10,
    category = "air-filtering-absorption",
    ingredients =
	{		
		{ type = "fluid", name= "sodium-hydroxide-sparged-water", amount = 10, fluidbox_index = 1 },
		{ type = "fluid", name = "polluted-air", amount = 10, fluidbox_index = 2 },
		{ type = "item", name = "spray-surface", amount = 1 }
	},
    icon = "__bery0zas-pure-it__/graphics/icons/recipe/sodium-hydroxide-sparged-water-absorption-with-spraying.png",
    icon_size = 32,
    subgroup = "terrain",
    results =
    {		
      { type = "fluid", name = "polluted-water", amount = 20 },
	  { type = "item", name = "polluted-spray-surface", amount = 1 }
    }
  },
  {
    type = "recipe",
    name = "coal-adsorption",
    energy_required = 10,
    category = "air-filtering-adsorption",
    ingredients =
	{
		{ type = "item", name= "coal", amount = 10 },
		{ type = "fluid", name = "polluted-air", amount = 2, fluidbox_index = 2 },
	},
    icon = "__base__/graphics/icons/coal.png",
    icon_size = 32,
    subgroup = "terrain",
    results =
    {		
      
    }
  },
  {
    type = "recipe",
    name = "coal-adsorption-with-steam",
    energy_required = 10,
    category = "air-filtering-adsorption",
    ingredients =
	{
		{ type = "item", name= "coal", amount = 5 },		
		{ type = "fluid", name = "steam", amount = 5, fluidbox_index = 1 },
		{ type = "fluid", name = "polluted-air", amount = 2, fluidbox_index = 2 },		
	},
    icon = "__base__/graphics/icons/fluid/steam.png",
    icon_size = 32,
    subgroup = "terrain",
    results =
    {

    }
  },
  {
    type = "recipe",
    name = "activated-carbon-adsorption",
    energy_required = 10,
    category = "air-filtering-adsorption",
    ingredients =
	{
		{ type = "item", name= "adsorption-coil-mk1-with-activated-carbon", amount = 5 },
		{ type = "fluid", name = "polluted-air", amount = 2, fluidbox_index = 2 },
	},
    icon = "__bery0zas-pure-it__/graphics/icons/adsorption-coil-mk1-with-activated-carbon.png",
    icon_size = 32,
    subgroup = "terrain",
    results =
    {
		{ type = "item", name= "adsorption-coil-mk1", amount = 5 },
    }
  },
  {
    type = "recipe",
    name = "cellular-carbon-adsorption",
    energy_required = 10,
    category = "air-filtering-adsorption",
    ingredients =
	{
		{ type = "item", name= "adsorption-coil-mk2-with-cellular-carbon", amount = 2 },
		{ type = "fluid", name = "polluted-air", amount = 2, fluidbox_index = 2 },
	},
    icon = "__bery0zas-pure-it__/graphics/icons/adsorption-coil-mk2-with-cellular-carbon.png",
    icon_size = 32,
    subgroup = "terrain",
    results =
    {
		{ type = "item", name= "adsorption-coil-mk2", amount = 2 },
    }
  }
})
