scoreboard players reset * phase

scoreboard players set phase phase 0

#phase 1, which is bulb
scoreboard players set health bulb 5
scoreboard players set attack_cooldown bulb 0
data modify entity @n[tag=phase1_bulb_display,type=item_display] transformation.scale set value [2,2,2]
execute as @n[tag=phase1_bulb_door,type=item_display,tag=aj.vine_wall.root] run function aj:vine_wall/animations/reset_noint_small/play
data modify entity @n[type=interaction,tag=phase1_bulb] height set value 2

#feet tickling plants
data modify entity @n[type=item_display,tag=ground_vines] transformation.translation[1] set value -0.1
data modify entity @n[type=item_display,tag=ground_vines] item.components."minecraft:custom_model_data".colors set value [[1,0,1]]

data modify entity @n[type=item_display,tag=ambient_ground_vines] item.components."minecraft:custom_model_data".colors set value [[1,0.5,0.2]]


#phase 2, which closes the door
fill 25 -58 47 26 -60 47 air


#phase 5 chem door close
execute as @n[tag=phase5_chem_wall,type=item_display,tag=aj.vine_wall.root] run function aj:vine_wall/animations/reset_noint/play

#phase 7 wall close
execute as @n[tag=phase7_gen_wall,type=item_display,tag=aj.vine_wall.root] run function aj:vine_wall/animations/reset_noint/play
