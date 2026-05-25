# Generated with MC-Build

effect give @s invisibility infinite 1 true
item replace entity @s weapon with milk_bucket[item_model="air",use_remainder={id:"bucket",count:1,components:{"minecraft:item_model":"air"}}]
item replace entity @s weapon.mainhand with milk_bucket[item_model="air",use_remainder={id:"bucket",count:1,components:{"minecraft:item_model":"air"}}]
item replace entity @s weapon.offhand with milk_bucket[item_model="air",use_remainder={id:"bucket",count:1,components:{"minecraft:item_model":"air"}}]
tag @s add current_trader
execute as @e[tag=fake_player,type=mannequin] if score @s fake_player_id = @n[tag=current_trader,distance=0..0.1,type=wandering_trader] fake_player_id run tag @s add current_mannequin
execute as @a if score @s fake_player_id = @n[tag=current_trader,distance=0..0.1,type=wandering_trader] fake_player_id run function steve:zzz/1
execute store result score #health fake_player_id run data get entity @n[tag=current_mannequin] Health
execute if score #health fake_player_id matches ..80 run return run function steve:fake_player/kill
tag @p[tag=current_player] remove current_player
scoreboard players remove @s fake_player_cooldown 1
execute if score @s fake_player_cooldown matches ..0 if entity @p[tag=!dead,gamemode=!spectator,distance=0..2] run function steve:zzz/2
tp @n[tag=current_mannequin] @s
execute if entity @p[tag=!dead,gamemode=!spectator,distance=0..25] run rotate @n[tag=current_mannequin] facing entity @p[tag=!dead,gamemode=!spectator,distance=0..25]
function steve:zzz/3
tag @s remove current_trader
tag @n[tag=current_mannequin] remove current_mannequin