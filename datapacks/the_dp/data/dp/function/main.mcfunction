execute as @n[tag=lobby] at @s as @a[distance=..15,tag=!debug] at @s run function dp:lobby/tick
#execute as @e[type=item,nbt={Age:20s}] run data modify entity @s PickupDelay set value 0
execute as @e[type=item,nbt={Age:20s}] run data modify entity @s Age set value -32768

effect give @a saturation infinite 200 true
#effect give @a weakness infinite 200 true
team join players @a

execute if score CAMERA_TP phase matches 1 as @a[tag=!dead] run spectate @n[tag=aj.entrance.camera] @s

# D E A T H timer
execute if score death_timer phase matches 0.. run scoreboard players add death_timer phase 1

scoreboard players set bossbar phase 14400
scoreboard players operation bossbar phase -= death_timer phase

execute if score death_timer phase matches 0.. store result bossbar death_timer value run scoreboard players get bossbar phase
execute positioned 14 -58 35 if score death_timer phase matches 14400.. run effect give @a[distance=0..58] wither infinite 10 true
execute at @n[tag=lobby.spawn] run effect clear @a[distance=0..20] wither


execute if score death_timer phase matches 5000.. as @a at @s if predicate {"condition":"minecraft:all_of","terms":[{"condition":"minecraft:entity_properties","entity":"this","predicate":{"periodic_tick":200}},{"condition":"minecraft:random_chance","chance":0.3}]} \
run particle minecraft:campfire_cosy_smoke ~ ~5 ~ 2 2 2 0 5 normal @s


execute if score death_timer phase matches 8000.. as @a at @s if predicate {"condition":"minecraft:all_of","terms":[{"condition":"minecraft:entity_properties","entity":"this","predicate":{"periodic_tick":180}},{"condition":"minecraft:random_chance","chance":0.5}]} \
run particle minecraft:campfire_cosy_smoke ~ ~5 ~ 2 2 2 0 5 normal @s


execute if score death_timer phase matches 9000.. as @a at @s if predicate {"condition":"minecraft:all_of","terms":[{"condition":"minecraft:entity_properties","entity":"this","predicate":{"periodic_tick":120}},{"condition":"minecraft:random_chance","chance":0.5}]} \
run particle minecraft:campfire_cosy_smoke ~ ~5 ~ 2 2 2 0 5 normal @s

execute if score death_timer phase matches 12000.. as @a at @s if predicate {"condition":"minecraft:all_of","terms":[{"condition":"minecraft:entity_properties","entity":"this","predicate":{"periodic_tick":80}},{"condition":"minecraft:random_chance","chance":0.6}]} \
run particle minecraft:campfire_cosy_smoke ~ ~5 ~ 2 2 2 0 5 normal @s

execute if score death_timer phase matches 14400.. as @a at @s if predicate {"condition":"minecraft:all_of","terms":[{"condition":"minecraft:entity_properties","entity":"this","predicate":{"periodic_tick":20}},{"condition":"minecraft:random_chance","chance":0.6}]} \
run particle minecraft:campfire_cosy_smoke ~ ~5 ~ 3 3 3 0 5 normal @s


execute as @a[scores={deaths=1..}] at @s run function dp:on_death

tag @a[gamemode=!spectator,tag=dead] remove dead

stopsound @a music
scoreboard players add @a music 1
execute as @a if score @s music matches 5595.. run scoreboard players set @s music 0
execute as @a at @s if score @s music matches 20 run stopsound @s ambient dp:effects.ambience
execute as @a at @s if score @s music matches 20 run playsound dp:effects.ambience ambient @s ~ ~ ~ 0.4 1.0 0.0