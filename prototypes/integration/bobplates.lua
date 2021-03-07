bery0zas.pure_it.integration.bobplates = {}

bery0zas.functions.alter_recipe("bery0zas-spray-surface-recycling", "energy_required", nil, nil, nil, 5)
bery0zas.functions.alter_recipe("bery0zas-spray-surface-recycling", "ingredients", "name", "bery0zas-polluted-spray-surface", "amount", 3)
bery0zas.functions.alter_recipe("bery0zas-spray-surface-recycling", "results", "name", "bery0zas-spray-surface", "amount", 3)

bery0zas.functions.alter_recipe("bery0zas-oxygen-sparging", "ingredients", "name", "bery0zas-oxygen", "name", "oxygen")
bery0zas.functions.alter_recipe("bery0zas-oxygen-sparging", "ingredients", "name", "oxygen", "amount", 100)
bery0zas.functions.alter_recipe("bery0zas-oxygen-sparging", "results", "name", "bery0zas-oxygen-sparged-water", "amount", 20)

bery0zas.functions.alter_recipe("bery0zas-oxygen-sparged-water-absorption", "ingredients", "name", "bery0zas-oxygen-sparged-water", "amount", 8)
bery0zas.functions.alter_recipe("bery0zas-oxygen-sparged-water-absorption-with-spraying", "ingredients", "name", "bery0zas-oxygen-sparged-water", "amount", 6)

bery0zas.functions.remove_technology_recipe("bery0zas-air-purification-2", "bery0zas-oxygen-extraction")

bery0zas.functions.remove_recipe("bery0zas-oxygen-extraction")

bery0zas.functions.remove_fluid("bery0zas-oxygen")