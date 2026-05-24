execute if entity @s[tag=aj.entity_sapling.root] run return run function entity:grow_sapling with entity @s data

tag @s remove plant.growth.medium
tag @s add plant.growth.large

$function aj:entity_$(plant)/animations/large_grow/play
scoreboard players reset @s entity.growth
