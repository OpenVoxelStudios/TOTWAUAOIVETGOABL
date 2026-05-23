data remove entity @s attack

execute on vehicle run scoreboard players operation OPERATION_TEMP entity.strength = @s entity.strength

# -1 = unkillable
execute if score OPERATION_TEMP entity.strength matches -1 run return run say this plant seems to be too strong to be killed

# 0 = anything
execute if score OPERATION_TEMP entity.strength matches 0 on vehicle run return run function entity:interaction/damage

# 1 = needs any item {weapon: 1b}
execute if score OPERATION_TEMP entity.strength matches 1 if items entity @n[type=player,tag=target] weapon.mainhand *[minecraft:custom_data~{weapon:1b}] on vehicle run return run function entity:interaction/damage

# 2 = strong item {weapon: 1b, strong: 1b}
execute if score OPERATION_TEMP entity.strength matches 2 if items entity @n[type=player,tag=target] weapon.mainhand *[minecraft:custom_data~{weapon:1b, strong: 1b}] on vehicle run return run function entity:interaction/damage

# 3 = super strong item {weapon: 1b, strongest: 1b}
execute if score OPERATION_TEMP entity.strength matches 2 if items entity @n[type=player,tag=target] weapon.mainhand *[minecraft:custom_data~{weapon:1b, strongest: 1b}] on vehicle run return run function entity:interaction/damage


# fallback
say im not strong enough
