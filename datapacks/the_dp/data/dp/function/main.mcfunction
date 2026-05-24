execute as @n[tag=lobby] at @s as @a[distance=..5,tag=!debug] at @s run function dp:lobby/tick

#execute as @e[type=item,nbt={Age:20s}] run data modify entity @s PickupDelay set value 0
execute as @e[type=item,nbt={Age:20s}] run data modify entity @s Age set value -32768

effect give @a saturation infinite 200 true

execute if score CAMERA_TP phase matches 1 as @a[tag=!dead] run spectate @n[tag=aj.entrance.camera] @s

# D E A T H timer
execute if score death_timer phase matches 0.. run scoreboard players add death_timer phase 1
execute if score death_timer phase matches 24000.. run function dp:story/collective_death