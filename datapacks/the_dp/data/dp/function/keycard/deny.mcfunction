data remove entity @s interaction
execute if entity @s[tag=keycard.interaction.used] run return fail

scoreboard players operation OPERATION_TEMP keycard.ids = @s keycard.ids

execute as @e[distance=..20,tag=keycard.display,type=text_display] if score @s keycard.ids = OPERATION_TEMP keycard.ids run data modify entity @s background set value -55808
schedule function dp:keycard/reset_color 50t replace