data remove entity @s interaction

execute if entity @s[tag=keycard.interaction.used] run return fail

tag @s add keycard.interaction.used
scoreboard players operation OPERATION_TEMP keycard.ids = @s keycard.ids

execute as @e[distance=..20,tag=keycard.marker,type=marker] if score @s keycard.ids = OPERATION_TEMP keycard.ids at @s run fill ~ ~ ~ ~ ~ ~ air replace barrier
data merge entity @n[type=item_display,tag=entrance_door,distance=0..20] {transformation:{translation:[1,5.1,-1]},start_interpolation:1,interpolation_duration:40}

execute if entity @s[tag=keycard.phase.1] run function phase:unlock {phase:1}
tellraw @a[tag=debug] "UNLOCKED DOOR"