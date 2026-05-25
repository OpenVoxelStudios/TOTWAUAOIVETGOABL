# Generated with MC-Build

execute store result score #players fake_player_id if entity @a[tag=!dead,gamemode=!spectator]
execute if score #players fake_player_id matches 1 run return run damage @s 9
execute summon mannequin run function steve:fake_player/zzz/0
scoreboard players operation @s fake_player_id = @n[type=mannequin,tag=fake_player,tag=new,distance=0..0.1] fake_player_id
gamemode spectator
spectate @n[type=mannequin,tag=fake_player,tag=new,distance=0..0.1]
execute summon wandering_trader run function steve:fake_player/zzz/1