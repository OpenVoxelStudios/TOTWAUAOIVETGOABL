scoreboard players add @e[scores={entity.growth=0..}] entity.growth 1
scoreboard players set @e[scores={entity.growth=250..}] entity.should_grow 1

# Entity ticks
execute as @e[tag=aj.entity_piranha.root] at @s run function entity:piranha/tick