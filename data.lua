angelsmods = angelsmods or {}
angelsmods.functions = angelsmods.functions or {}

bery0zas = bery0zas or {}
bery0zas.functions = bery0zas.functions or {}
bery0zas.data = bery0zas.data or {}

require("prototypes.bery0zas-functions")

require("prototypes.predefined")
require("prototypes.entity")
require("prototypes.item")
require("prototypes.fluid")
require("prototypes.recipe")
require("prototypes.technology")

bery0zas.functions.register_recipe_categories()
bery0zas.functions.add_crafting_categories()
