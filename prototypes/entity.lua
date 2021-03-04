bery0zas.entities = {}

require("entities.air-absorber")
require("entities.air-adsorber")
require("entities.air-suction-tower")
require("entities.sparging-column")

bery0zas.functions.register_entity(bery0zas.entities.air_suction_tower, 3)
bery0zas.functions.register_entity(bery0zas.entities.air_absorber, 3)
bery0zas.functions.register_entity(bery0zas.entities.air_adsorber, 1)