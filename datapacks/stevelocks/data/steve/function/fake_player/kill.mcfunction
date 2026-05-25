# Generated with MC-Build

gamemode adventure @p[tag=current_player]
execute if entity @p[tag=current_player] run scoreboard players add killed_plants phase 4
kill @n[tag=current_mannequin]
tp @s ~ ~-1000 ~
kill @s
tag @p[tag=current_player] remove current_player