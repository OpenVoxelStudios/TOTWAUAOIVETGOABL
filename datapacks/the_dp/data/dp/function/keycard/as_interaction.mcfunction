data remove entity @s interaction
execute if entity @s[tag=keycard.interaction.used] run return fail

tag @s add keycard.interaction.used
scoreboard players operation OPERATION_TEMP keycard.ids = @s keycard.ids

execute as @e[distance=..20,tag=keycard.marker,type=marker] if score @s keycard.ids = OPERATION_TEMP keycard.ids at @s run fill ~ ~ ~ ~ ~ ~ air replace barrier
execute as @e[distance=..20,tag=keycard.display,type=text_display] if score @s keycard.ids = OPERATION_TEMP keycard.ids run data modify entity @s background set value -16713472

execute if entity @s[tag=keycard.phase.1] run function phase:unlock {phase:1}