bery0zas.pure_it = {}

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

bery0zas.pure_it.triggers = {}
bery0zas.pure_it.triggers["integrate-bobplates"] = mods["bobplates"] and settings.startup["bery0zas-pure-it-integrate-bobs"].value
bery0zas.pure_it.triggers["integrate-angelspetrochem"] = mods["angelspetrochem"] and settings.startup["bery0zas-pure-it-integrate-angelspetrochem"].value
bery0zas.pure_it.triggers["leave-halite"] = not (mods["angelspetrochem"] and settings.startup["bery0zas-pure-it-integrate-angelspetrochem"].value) or settings.startup["bery0zas-pure-it-leave-halite"].value

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

	if mods["angelspetrochem"] then
		table.insert(data.raw["assembling-machine"]["angels-chemical-plant"].crafting_categories, "bery0zas-air-filtering-chemistry")
		table.insert(data.raw["assembling-machine"]["angels-chemical-plant-2"].crafting_categories, "bery0zas-air-filtering-chemistry")
		table.insert(data.raw["assembling-machine"]["angels-chemical-plant-3"].crafting_categories, "bery0zas-air-filtering-chemistry")
		table.insert(data.raw["assembling-machine"]["angels-chemical-plant-4"].crafting_categories, "bery0zas-air-filtering-chemistry")
		table.insert(data.raw["assembling-machine"]["advanced-chemical-plant"].crafting_categories, "bery0zas-air-filtering-chemistry")
		table.insert(data.raw["assembling-machine"]["advanced-chemical-plant-2"].crafting_categories, "bery0zas-air-filtering-chemistry")
	end
end
