execute if entity @s[tag=aj.entity_sapling.root] run return run function entity:grow_sapling with entity @s data

$function aj:entity_$(plant)/animations/large_grow/play
scoreboard players reset @s entity.growth