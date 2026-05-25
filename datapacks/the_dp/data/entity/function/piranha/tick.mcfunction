scoreboard players remove @s piranha_cooldown 1
execute if score @s piranha_cooldown matches ..0 if entity @p[tag=!dead,distance=0..4,gamemode=!spectator] run function aj:entity_piranha/animations/attack/play
execute if score @s piranha_cooldown matches ..0 if entity @p[tag=!dead,distance=0..4,gamemode=!spectator] run scoreboard players set @s piranha_cooldown 50