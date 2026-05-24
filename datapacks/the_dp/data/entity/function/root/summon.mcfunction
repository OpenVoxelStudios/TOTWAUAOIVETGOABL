tag @e[tag=plant_spawn_pos,sort=random,limit=25] add plant_spawn_pos.possible

# TODO: remove tag=!entity.frozen if it CANNOT spawned over a frozen plant
execute as @e[tag=plant_spawn_pos.possible] at @s if entity @n[tag=aj.global.root,tag=entity.kill_when_reset,tag=!entity.frozen,distance=..1] run tag @s remove plant_spawn_pos.possible

execute as @e[tag=plant_spawn_pos.possible,sort=random,limit=1] at @s run function entity:root/real_summon
tag @e[tag=plant_spawn_pos.possible] remove plant_spawn_pos.possible