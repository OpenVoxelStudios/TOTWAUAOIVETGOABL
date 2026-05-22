data modify entity @n[tag=phase1_bulb_display,type=item_display] transformation.scale set value [0,0,0]
data modify entity @n[type=interaction,tag=phase1_bulb] height set value 0
particle explosion
execute as @n[tag=phase1_bulb_door,type=item_display,tag=aj.vine_wall.root] run function aj:vine_wall/animations/open_small/play

function phase:unlock {phase:2}