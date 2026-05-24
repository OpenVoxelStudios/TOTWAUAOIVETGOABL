scoreboard players remove @s entity.spawn 1

execute unless score @s entity.spawn matches ..0 run return fail
scoreboard players reset @s entity.spawn

kill @s
