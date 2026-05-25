function entity:camera/available_locations
execute as @n[tag=camera_spawn_pos,tag=!camera_spawn_occupied,sort=random] at @s rotated as @s run function entity:camera/summon2
