# Generated with MC-Build

execute unless entity @p[tag=!dead,gamemode=!spectator,distance=0..25] run return 0
data modify entity @s wander_target set value [I;0,0,0]
execute store result entity @s wander_target[0] int 1 run data get entity @p[tag=!dead,gamemode=!spectator,distance=0..25] Pos[0]
execute store result entity @s wander_target[1] int 1 run data get entity @p[tag=!dead,gamemode=!spectator,distance=0..25] Pos[1]
execute store result entity @s wander_target[2] int 1 run data get entity @p[tag=!dead,gamemode=!spectator,distance=0..25] Pos[2]