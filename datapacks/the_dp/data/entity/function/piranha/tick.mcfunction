
scoreboard players remove @s piranha_cooldown 1
execute if score @s piranha_cooldown matches ..0 if entity @p[tag=!dead,distance=0..4,gamemode=!spectator] if entity @s[tag=aj.entity_crown_piranha.root] run function aj:entity_crown_piranha/animations/attack/play
execute if score @s piranha_cooldown matches ..0 if entity @p[tag=!dead,distance=0..4,gamemode=!spectator] unless entity @s[tag=aj.entity_crown_piranha.root] run function aj:entity_piranha/animations/attack/play
execute if score @s piranha_cooldown matches ..0 if entity @p[tag=!dead,distance=0..4,gamemode=!spectator] if entity @s[tag=aj.entity_crown_piranha.root] run scoreboard players set @s piranha_cooldown 75
execute if score @s piranha_cooldown matches ..0 if entity @p[tag=!dead,distance=0..4,gamemode=!spectator] unless entity @s[tag=aj.entity_crown_piranha.root] run scoreboard players set @s piranha_cooldown 50
