bery0zas.pure_it.recipe_categories = 
{
	"bery0zas-air-filtering-machine",
	"bery0zas-air-filtering-item",
	"bery0zas-air-filtering-suction",
	"bery0zas-air-filtering-sparging",
	"bery0zas-air-filtering-chemistry",
	"bery0zas-air-filtering-absorption",
	"bery0zas-air-filtering-adsorption",
	"bery0zas-air-filtering-burning"
}

function bery0zas.pure_it.add_crafting_categories()
	table.insert(data.raw["character"]["character"].crafting_categories, "bery0zas-air-filtering-machine")
	table.insert(data.raw["assembling-machine"]["assembling-machine-1"].crafting_categories, "bery0zas-air-filtering-machine")
	table.insert(data.raw["assembling-machine"]["assembling-machine-1"].crafting_categories, "bery0zas-air-filtering-item")
	table.insert(data.raw["assembling-machine"]["assembling-machine-2"].crafting_categories, "bery0zas-air-filtering-machine")
	table.insert(data.raw["assembling-machine"]["assembling-machine-2"].crafting_categories, "bery0zas-air-filtering-item")
	table.insert(data.raw["assembling-machine"]["assembling-machine-3"].crafting_categories, "bery0zas-air-filtering-machine")
	table.insert(data.raw["assembling-machine"]["assembling-machine-3"].crafting_categories, "bery0zas-air-filtering-item")
	table.insert(data.raw["assembling-machine"]["chemical-plant"].crafting_categories, "bery0zas-air-filtering-chemistry")
	table.insert(data.raw["furnace"]["stone-furnace"].crafting_categories, "bery0zas-air-filtering-burning")
	table.insert(data.raw["furnace"]["steel-furnace"].crafting_categories, "bery0zas-air-filtering-burning")
	table.insert(data.raw["furnace"]["electric-furnace"].crafting_categories, "bery0zas-air-filtering-burning")
end

function bery0zas.pure_it.angels_halite_recipe(ore_number)
	table.insert(data.raw.recipe["angelsore" .. ore_number .. "-crushed-processing"].normal.results, { name = "bery0zas-halite", probability = 0.05, amount = 1 })
	table.insert(data.raw.recipe["angelsore" .. ore_number .. "-chunk-processing"].normal.results, { name = "bery0zas-halite", probability = 0.1, amount = 1 })
	table.insert(data.raw.recipe["angelsore" .. ore_number .. "-chunk-processing"].expensive.results, { name = "bery0zas-halite", probability = 0.05, amount = 1 })
	table.insert(data.raw.recipe["angelsore" .. ore_number .. "-crystal-processing"].normal.results, { name = "bery0zas-halite", probability = 0.2, amount = 1 })
	table.insert(data.raw.recipe["angelsore" .. ore_number .. "-crystal-processing"].expensive.results, { name = "bery0zas-halite", probability = 0.1, amount = 1 })
	table.insert(data.raw.recipe["angelsore" .. ore_number .. "-pure-processing"].normal.results, { name = "bery0zas-halite", probability = 0.4, amount = 1 })
	table.insert(data.raw.recipe["angelsore" .. ore_number .. "-pure-processing"].expensive.results, { name = "bery0zas-halite", probability = 0.2, amount = 1 })
end