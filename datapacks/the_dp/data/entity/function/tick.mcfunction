scoreboard players add @e[scores={entity.growth=0..},tag=!entity.frozen] entity.growth 1
execute as @e[scores={entity.growth=0..}] at @s if score @s entity.growth > #growth_threshold entity.growth run function entity:grow with entity @s data
#scoreboard players set @s entity.should_grow 1 why do we need this?

scoreboard players remove @e[scores={entity.health=0..,entity.attack_cd=1..}] entity.attack_cd 1

# Entity ticks
execute as @e[tag=aj.entity_piranha.root,tag=entity.grown,tag=!entity.frozen] at @s run function entity:piranha/tick
execute as @e[tag=aj.entity_camera.root] at @s run function entity:camera/tick
execute as @e[tag=aj.entity_trap.root,tag=entity.grown,tag=!entity.frozen] at @s run function entity:trap/tick

# Disabled spawns
execute as @e[tag=fire_extinguisher_stand,scores={entity.spawn=0..}] at @s run function entity:root/disabled_spawn


execute if score phase phase matches 4..9 run scoreboard players add spawn_plant entity.spawn 1
execute if score spawn_plant entity.spawn > spawn_threshold entity.spawn run function entity:root/summon
execute if score spawn_plant entity.spawn > spawn_threshold entity.spawn run scoreboard players set spawn_plant entity.spawn 0


execute if score phase phase matches 5..9 run scoreboard players add spawn_camera entity.spawn 1
execute if score phase phase matches 6..9 if predicate {"condition":"minecraft:random_chance","chance":0.4} run scoreboard players add spawn_camera entity.spawn 1

execute if score spawn_camera entity.spawn matches 350.. run function entity:camera/summon
execute if score spawn_camera entity.spawn matches 350.. run scoreboard players set spawn_camera entity.spawn 0



execute as @a[scores={medkit_used=1..}] at @s run function entity:weapons/medkit/use