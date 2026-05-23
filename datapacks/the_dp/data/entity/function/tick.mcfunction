scoreboard players add @e[scores={entity.growth=0..}] entity.growth 1
# TODO: make the 250 a variable that decreases with difficulty.
scoreboard players set @e[scores={entity.growth=250..}] entity.should_grow 1

# Entity ticks
execute as @e[tag=aj.entity_piranha.root] at @s run function entity:piranha/tick