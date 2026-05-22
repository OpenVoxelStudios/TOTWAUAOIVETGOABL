scoreboard players set @s itempicker 0
data modify storage dp:itempicker item set from entity @s data.item

tag @s remove itempicker.picked_up
execute on passengers run data modify entity @s item set from entity @s data.item
execute on passengers run data modify entity @s item set from storage dp:itempicker item
