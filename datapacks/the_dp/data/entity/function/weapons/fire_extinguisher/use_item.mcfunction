advancement revoke @s only entity:use_fire_extinguisher

execute if items entity @s weapon.* flint[damage=1000] run title @s times 0 10 20
execute if items entity @s weapon.* flint[damage=1000] run return run title @s actionbar "There's nothing left....nice."

execute if items entity @s weapon.offhand flint[custom_model_data={strings:["fire_extinguisher"]}] run item modify entity @s weapon.offhand entity:fire_extinguisher_durability
execute if items entity @s weapon.mainhand flint[custom_model_data={strings:["fire_extinguisher"]}] run item modify entity @s weapon.mainhand entity:fire_extinguisher_durability

execute if predicate {"condition":"minecraft:random_chance","chance":0.7} anchored eyes positioned ^-0.35 ^ ^ run particle spit ~ ~ ~ ^ ^ ^100000 0.00001 0 normal @a
execute if predicate {"condition":"minecraft:random_chance","chance":0.3} anchored eyes rotated ~5 ~ positioned ^-0.35 ^ ^ run particle spit ~ ~ ~ ^ ^ ^100000 0.00001 0 normal @a
execute if predicate {"condition":"minecraft:random_chance","chance":0.3} anchored eyes rotated ~-5 ~ positioned ^-0.35 ^ ^ run particle spit ~ ~ ~ ^ ^ ^100000 0.00001 0 normal @a
execute if predicate {"condition":"minecraft:random_chance","chance":0.3} anchored eyes rotated ~ ~-5 positioned ^-0.35 ^ ^ run particle spit ~ ~ ~ ^ ^ ^100000 0.00001 0 normal @a


tag @s add current_entity
execute rotated as @s positioned 0.0 0.0 0.0 positioned ^ ^ ^0.7 summon marker run function entity:weapons/fire_extinguisher/summon_stand
tag @s remove current_entity
