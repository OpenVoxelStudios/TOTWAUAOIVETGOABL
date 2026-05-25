tag @e[tag=camera_spawn_pos] remove camera_spawn_occupied
execute as @e[tag=camera_spawn_pos] at @s if entity @n[tag=aj.entity_camera.root,distance=0..1] run tag @s add camera_spawn_occupied
execute as @e[tag=camera_spawn_pos] at @s rotated as @s rotated ~ 45 positioned ^ ^ ^3 if entity @p[tag=!dead,gamemode=!spectator,distance=0..2] run tag @s add camera_spawn_occupied
