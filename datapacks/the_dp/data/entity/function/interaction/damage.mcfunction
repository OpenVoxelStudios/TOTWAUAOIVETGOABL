# TODO: maybe play anim? health too?


execute if score @s entity.attack_cd matches 1.. run return 0
scoreboard players remove @s entity.health 1
scoreboard players set @s entity.attack_cd 10
say ouch im hurttt :(

execute if score @s entity.health matches 1.. run return 0


scoreboard players set killed_plants_temp phase 1
execute if entity @s[tag=plant.growth.medium] run scoreboard players set killed_plants_temp phase 2
execute if entity @s[tag=plant.growth.large] run scoreboard players set killed_plants_temp phase 4
execute if entity @s[tag=entity.frozen] run scoreboard players set killed_plants_temp phase 6
function entity:root/register_kill_count


# kill smth here

particle minecraft:tinted_leaves{color:[0.3176470588,0.568627451,0.2,1.0]} ~ ~0.5 ~ 0.2 0.2 0.2 0 10 normal @a
particle item{item:{id:"moss_block"}} ~ ~0.5 ~ 0.3 0.3 0.3 0.3 30 normal @a


execute on passengers if entity @s[tag=entity.frozen.display] run kill @s
execute if entity @s[tag=aj.entity_sapling.root] run return run function aj:entity_sapling/remove/this
function entity:interaction/kill_generic with entity @s data
