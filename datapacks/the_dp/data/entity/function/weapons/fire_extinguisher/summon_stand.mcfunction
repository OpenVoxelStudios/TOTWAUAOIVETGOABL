execute at @p[tag=current_entity] rotated as @p[tag=current_entity] positioned ~ ~1.2 ~ positioned ^ ^ ^0.5 run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Small:1b,DisabledSlots:4144959,Tags:["fire_extinguisher_stand","new"],Silent:1b}
data modify entity @n[type=armor_stand,tag=fire_extinguisher_stand,tag=new] Motion set from entity @s Pos
scoreboard players set @n[type=armor_stand,tag=fire_extinguisher_stand,tag=new] entity.spawn 600
tag @n[type=armor_stand,tag=fire_extinguisher_stand,tag=new] remove new
kill @s