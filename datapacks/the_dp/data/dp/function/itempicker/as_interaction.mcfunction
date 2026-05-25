data remove entity @s interaction
execute if entity @s[tag=itempicker.picked_up] run return run return fail

execute as @p[tag=target] if items entity @s weapon.mainhand * run title @s times 0 10 20
execute as @p[tag=target] if items entity @s weapon.mainhand * run return run title @s actionbar ["",{italic:true,text:"my hand is full..."}]

execute unless score phase phase matches 7 on vehicle if data entity @s data.item.components."minecraft:custom_data"{fuse:1b} run title @s times 0 10 20
execute unless score phase phase matches 7 on vehicle if data entity @s data.item.components."minecraft:custom_data"{fuse:1b} run return run title @p[tag=target] actionbar ["",{italic:true,text:"a fuse? why do i need that..?"}]

tag @s add itempicker.picked_up
execute on vehicle run item replace entity @p[tag=target] weapon.mainhand from entity @s contents
execute on vehicle run data modify entity @s data.item set from entity @s item
execute on vehicle run data modify entity @s item set value {id:"flint",count:1,components:{"minecraft:item_model":"air"}}

# Specific to item
execute on vehicle if data entity @s data.item.components."minecraft:custom_data"{fuse:1b} if score phase phase matches 7 run scoreboard players add collected_fuses phase 1