scoreboard players add @e[scores={entity.growth=0..}] entity.growth 1
# TODO: make the 250 a variable that decreases with difficulty.
# i gotchu: #growth_threshold entity.growth
execute as @e[scores={entity.growth=0..}] at @s if score @s entity.growth > #growth_threshold entity.growth run function entity:grow with entity @s data
#scoreboard players set @s entity.should_grow 1 why do we need this?

scoreboard players remove @e[scores={entity.health=0..,entity.attack_cd=1..}] entity.attack_cd 1

# Entity ticks
execute as @e[tag=aj.entity_piranha.root] at @s run function entity:piranha/tick