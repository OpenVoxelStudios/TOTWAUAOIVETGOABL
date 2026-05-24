execute as @e[type=item,nbt={Age:20s}] run data modify entity @s Age set value -32768
#execute as @e[type=item] run data modify entity @s PickupDelay set value 0

effect give @a saturation infinite 200 true


execute if score CAMERA_TP phase matches 1 as @a[tag=!dead] run spectate @n[tag=aj.entrance.camera] @s