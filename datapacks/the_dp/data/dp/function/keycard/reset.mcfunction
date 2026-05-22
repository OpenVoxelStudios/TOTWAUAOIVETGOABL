execute as @e[tag=keycard.marker] at @s run fill ~ ~ ~ ~ ~ ~ barrier replace #air
tag @e[tag=keycard.interaction.used] remove keycard.interaction.used

data merge entity @n[type=block_display,tag=entrance_door] {transformation:{translation:[-0.5,-0.5,-0.5]},start_interpolation:1,interpolation_duration:40}
