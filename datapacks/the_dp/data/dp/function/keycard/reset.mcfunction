execute as @e[tag=keycard.marker] at @s run fill ~ ~ ~ ~ ~ ~ barrier replace #air
tag @e[tag=keycard.interaction.used] remove keycard.interaction.used

data merge entity @n[type=item_display,tag=entrance_door] {transformation:{translation:[1,1,-1]},start_interpolation:1,interpolation_duration:40}
