
#particle smoke
execute if entity @s[tag=no_camera] run return 0
execute positioned ^ ^ ^0.2 if block ~ ~ ~ #air_like run return run function entity:camera/raycast
particle dust{color:[1.0,1.0,0.0],scale:1} ~ ~0.2 ~ 0.8 0 0.8 0 9 normal @a[distance=0..6]
execute if entity @p[tag=!dead,gamemode=!spectator,distance=0..2.5] run damage @p[tag=!dead,gamemode=!spectator,distance=0..2.5] 2 sweet_berry_bush
execute if entity @p[tag=!dead,gamemode=!spectator,distance=0..2.5] run tag @s add no_camera
execute if entity @p[tag=!dead,gamemode=!spectator,distance=0..2.5] run effect give @p[tag=!dead,gamemode=!spectator,distance=0..2.5] poison 7 0 false
execute if entity @p[tag=!dead,gamemode=!spectator,distance=0..2.5] run function aj:entity_camera/as_root {command:'function aj:entity_camera/animations/vanish/play'}