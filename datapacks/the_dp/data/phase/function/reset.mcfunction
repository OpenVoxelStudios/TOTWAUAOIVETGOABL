scoreboard players reset * phase

scoreboard players set phase phase 0

#phase 1, which is bulb
scoreboard players set health bulb 5
scoreboard players set attack_cooldown bulb 0
data modify entity @n[tag=phase1_bulb_display,type=item_display] transformation.scale set value [1.25,2,1.25]
execute as @n[tag=phase1_bulb_door,type=item_display,tag=aj.vine_wall.root] run function aj:vine_wall/animations/reset_noint_small/play
data modify entity @n[type=interaction,tag=phase1_bulb] height set value 2

#phase 2, which closes the door
fill 25 -58 47 26 -60 47 air


