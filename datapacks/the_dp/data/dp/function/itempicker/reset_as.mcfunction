scoreboard players set @s itempicker 0

tag @s remove itempicker.picked_up
execute on passengers run data modify entity @s item set from entity @s data.item
