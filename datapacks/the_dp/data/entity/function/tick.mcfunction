scoreboard players add @e[scores={entity.growth=0..},tag=!entity.frozen] entity.growth 1
execute as @e[scores={entity.growth=0..}] at @s if score @s entity.growth > #growth_threshold entity.growth run function entity:grow with entity @s data
#scoreboard players set @s entity.should_grow 1 why do we need this?

scoreboard players remove @e[scores={entity.health=0..,entity.attack_cd=1..}] entity.attack_cd 1

# Entity ticks
execute as @e[tag=aj.entity_piranha.root,tag=entity.grown] at @s run function entity:piranha/tick
execute as @e[tag=aj.entity_surveillance.root,tag=entity.grown] at @s run function entity:surveillance/tick
execute as @e[tag=aj.entity_trap.root,tag=entity.grown] at @s run function entity:trap/tick

# Disabled spawns
execute as @e[tag=fire_extinguisher_stand,scores={entity.spawn=0..}] at @s run function entity:root/disabled_spawn
