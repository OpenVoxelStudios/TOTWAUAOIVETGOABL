#ay dead
execute store result score #health deaths run data get entity @s Health
execute unless score #health deaths matches 1.. run return 0
#ay health

scoreboard players set @s deaths 0
gamemode spectator @s
tag @s add dead
tp @s @r[tag=!dead]


execute store result score #remaining_players deaths if entity @a[tag=!dead,gamemode=!spectator]

execute if score #remaining_players deaths matches 0 as @p at @s run function phase:unlock_triggers/12