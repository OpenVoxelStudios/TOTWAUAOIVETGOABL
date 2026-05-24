data remove entity @s interaction
execute if entity @s[tag=generator.fuse.placed] run return fail

tag @s add generator.fuse.placed
scoreboard players operation OPERATION_TEMP generator.fuses = @s generator.fuses

execute as @e[distance=..20,tag=generator.fuse.display,type=text_display] if score @s generator.fuses = OPERATION_TEMP generator.fuses run data modify entity @s background set value -16713472
item replace entity @n[type=player,tag=target] weapon.mainhand with air

scoreboard players add placed_fuses phase 1