execute if score @s nitrogen matches 30.. run return fail
scoreboard players add @s nitrogen 1

execute unless score @s nitrogen matches 30.. run return fail

tag @s add entity.frozen
execute if entity @s[tag=aj.entity_sapling.root] run function aj:entity_sapling/animations/pause_all
execute unless entity @s[tag=aj.entity_sapling.root] run function entity:root/freeze_generic with entity @s data

summon block_display ~ ~ ~ {Tags:["entity.kill_when_reset", "entity.frozen.display", "entity.frozen.temp"], block_state: {Name: "minecraft:ice"}, transformation:{translation:[0.0f,0.0f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.0f,0.0f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}

execute store result storage dp:entity width float 0.1 run data get entity @n[tag=aj.global.node.entity_hitbox] width 10
execute store result storage dp:entity height float 0.1 run data get entity @n[tag=aj.global.node.entity_hitbox] height 10

execute as @n[tag=entity.frozen.temp] at @s run function entity:weapons/liquid_nitrogen/as_ice
ride @n[tag=entity.frozen.display] mount @s

execute if score @s entity.strength matches 3.. run scoreboard players set @s entity.strength 2
