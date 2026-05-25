

scoreboard players set killed_plants_temp phase 2
execute if entity @n[tag=fire_extinguisher_stand,distance=..3] run return run function entity:root/register_kill_count


# Choose what entity to summon
data modify storage dp:entity entity set value "piranha"
execute if score phase phase matches 5.. if predicate {"condition":"minecraft:random_chance","chance":0.4} run data modify storage dp:entity entity set value "crown_piranha"
execute if score phase phase matches 6.. if predicate {"condition":"minecraft:random_chance","chance":0.4} run data modify storage dp:entity entity set value "trap"


function entity:summon with storage dp:entity