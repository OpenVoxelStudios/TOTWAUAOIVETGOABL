execute if data entity @s {OnGround:1b} run particle spit ~ ~ ~ 0.7 0.2 0.7 0 5 normal @a
scoreboard players remove @s entity.spawn 1

execute unless score @s entity.spawn matches ..0 run return fail
scoreboard players reset @s entity.spawn

kill @s
