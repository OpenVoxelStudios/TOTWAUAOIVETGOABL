
#now spawn more plants.

#aay 7. find some fuses around the place.

bossbar set killed_plants visible false
execute as @n[tag=phase7_gen_wall,type=item_display,tag=aj.vine_wall.root] run function aj:vine_wall/animations/open/play

scoreboard players set spawn_threshold entity.spawn 80

scoreboard players set dialog_temp phase 0
function dp:dialogue/phase_7

give @s acacia_boat[attribute_modifiers=[{amount:3,type:"attack_damage",operation:"add_value",slot:"mainhand",id:"a"},{amount:-0.6,type:"attack_speed",operation:"add_value",slot:"mainhand",id:"a"}]]