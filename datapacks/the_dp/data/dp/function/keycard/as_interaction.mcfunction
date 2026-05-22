scoreboard players operation OPERATION_TEMP keycard.ids = @s keycard.ids

execute as @e[distance=..20,tag=keycard.marker,type=marker] if score @s keycard.ids = OPERATION_TEMP keycard.ids at @s run fill ~ ~ ~ ~ ~ ~ air replace barrier

tellraw @a[tag=debug] "UNLOCKED DOOR"