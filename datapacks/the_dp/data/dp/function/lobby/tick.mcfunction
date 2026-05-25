execute if entity @s[type=!player] run return fail

execute if entity @n[distance=..1,tag=lobby.tp.-z] run return run tp @s ~ ~ ~-15
execute if entity @n[distance=..1,tag=lobby.tp.+z] run return run tp @s ~ ~ ~15

execute if entity @n[distance=..1,tag=lobby.tp.-x] run return run tp @s ~-15 ~ ~
execute if entity @n[distance=..1,tag=lobby.tp.+x] run return run tp @s ~15 ~ ~