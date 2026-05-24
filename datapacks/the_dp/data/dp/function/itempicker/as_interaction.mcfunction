data remove entity @s interaction
execute if entity @s[tag=itempicker.picked_up] run return run tellraw @p[tag=target] "there's nothing here bruh."
execute as @p[tag=target] if items entity @s weapon.mainhand * run return run tellraw @s "your hand is full!"
execute unless score phase phase matches 7 on vehicle if data entity @s data.item.components."minecraft:custom_data"{fuse:1b} run return run tellraw @p[tag=target] "a fuse? why do i need that..?"

tag @s add itempicker.picked_up
execute on vehicle run item replace entity @p[tag=target] weapon.mainhand from entity @s contents
execute on vehicle run data modify entity @s data.item set from entity @s item
execute on vehicle run data modify entity @s item set value {id:"flint",count:1,components:{"minecraft:item_model":"air"}}

# Specific to item
execute on vehicle if data entity @s data.item.components."minecraft:custom_data"{fuse:1b} if score phase phase matches 7 run scoreboard players add collected_fuses phase 1