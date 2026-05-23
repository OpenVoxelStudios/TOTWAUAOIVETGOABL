execute as @e[type=item] run data modify entity @s Age set value -32768
execute as @e[type=item] run data modify entity @s PickupDelay set value 0

effect give @a saturation infinite 200 true
