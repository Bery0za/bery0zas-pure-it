if bery0zas.pure_it.triggers["integrate-angelspetrochem"] then require("prototypes.integration.angelspetrochem-updates") end

if mods["angelspetrochem"] then
	data.raw["assembling-machine"]["angels-air-filter"].energy_source.emissions_per_minute = 0
	data.raw["assembling-machine"]["angels-air-filter-2"].energy_source.emissions_per_minute = 0
end