advancement revoke @s only entity:player_hit_entity


tag @s add target

scoreboard players set OPERATION_TEMP entity.strength -1
execute at @s as @n[distance=..10,tag=aj.global.node.entity_hitbox,type=interaction] if data entity @s attack at @s run function entity:interaction/as_interaction

tag @s remove target