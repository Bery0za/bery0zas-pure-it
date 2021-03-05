bery0zas = bery0zas or {}

bery0zas.common = bery0zas.common or {}
require("prototypes.common")

bery0zas.functions = bery0zas.functions or {}
require("prototypes.bery0zas-functions")

bery0zas.pure_it = {}
require("prototypes.pure-it")

require("prototypes.entity")
require("prototypes.item")
require("prototypes.fluid")
require("prototypes.recipe")
require("prototypes.technology")

bery0zas.functions.register_recipe_categories(bery0zas.pure_it.recipe_categories)
bery0zas.pure_it.add_crafting_categories()
