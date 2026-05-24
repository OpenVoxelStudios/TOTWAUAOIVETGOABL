advancement revoke @s only dp:fuse_interact

execute unless items entity @s weapon.mainhand *[minecraft:custom_data~{fuse:1b}] run return run say noo fuse broo

tag @s add target
execute at @s as @n[distance=..10,tag=generator.fuse.interaction,type=interaction] if data entity @s interaction run function dp:generator/as_interaction
tag @s remove target