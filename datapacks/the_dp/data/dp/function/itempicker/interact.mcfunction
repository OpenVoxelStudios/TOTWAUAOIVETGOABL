advancement revoke @s only dp:itempicker_interact

tag @s add target
execute at @s as @n[distance=..10,tag=itempicker.interaction,type=interaction] if data entity @s interaction run function dp:itempicker/as_interaction
tag @s remove target