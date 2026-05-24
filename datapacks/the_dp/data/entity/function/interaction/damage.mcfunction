# TODO: maybe play anim? health too?


execute if score @s entity.attack_cd matches 1.. run return 0
scoreboard players remove @s entity.health 1
scoreboard players set @s entity.attack_cd 10
say ouch im hurttt :(

execute if score @s entity.health matches 1.. run return 0



execute if score phase phase matches 4 run scoreboard players add killed_plants phase 1
execute if score phase phase matches 6 run scoreboard players add killed_plants phase 1

# kill smth here

particle minecraft:tinted_leaves{color:[0.3176470588,0.568627451,0.2,1.0]} ~ ~0.5 ~ 0.2 0.2 0.2 0 10 normal @a
particle item{item:{id:"moss_block"}} ~ ~0.5 ~ 0.3 0.3 0.3 0.3 30 normal @a

execute if entity @s[tag=aj.entity_sapling.root] run return run function aj:entity_sapling/remove/this
function entity:interaction/kill_generic with entity @s data
