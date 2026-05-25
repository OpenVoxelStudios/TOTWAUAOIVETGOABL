
execute as @n[tag=generator.flip] at @s run setblock ~ ~ ~ lever[face=wall,facing=south,powered=false]
execute as @n[tag=generator.flip] at @s run tp @s ~1 ~ ~
execute unless entity @n[tag=generator.flip] run summon marker 18 -59 0 {Tags:["generator.flip"]}

execute as @n[tag=generator.flip] at @s unless block ~ ~ ~ lever run return run kill @s
execute at @n[tag=generator.flip] run playsound block.lever.click block @a[distance=0..16] ~ ~ ~ 1.0 1.0 0.0

schedule function dp:generator/flip_levers 3t