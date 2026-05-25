data remove entity @s attack

function aj:entity_sapling/as_root {command:'scoreboard players operation OPERATION_TEMP entity.strength = @s entity.strength'}
# aj rig used doesn't matter apparently

# -1 = unkillable
execute if score OPERATION_TEMP entity.strength matches -1 run title @s times 0 10 20
execute if score OPERATION_TEMP entity.strength matches -1 run return run title @p[tag=target] actionbar ["",{italic:true,text:"this plant seems too strong to be killed"}]

# 0 = anything
execute if score OPERATION_TEMP entity.strength matches 0 run return run function aj:entity_sapling/as_root {command:'function entity:interaction/damage'}

# 1 = needs any item {weapon: 1b}
execute if score OPERATION_TEMP entity.strength matches 1 if items entity @p[tag=target] weapon.mainhand *[minecraft:custom_data~{weapon: 1b}] run return run function aj:entity_sapling/as_root {command:'function entity:interaction/damage'}

# 2 = strong item {weapon: 1b, strong: 1b}
execute if score OPERATION_TEMP entity.strength matches 2 if items entity @p[tag=target] weapon.mainhand *[minecraft:custom_data~{weapon: 1b, strong: 1b}] run return run function aj:entity_sapling/as_root {command:'function entity:interaction/damage'}
execute if score OPERATION_TEMP entity.strength matches 2 if items entity @p[tag=target] weapon.mainhand *[minecraft:custom_data~{weapon: 1b, strongest: 1b}] run return run function aj:entity_sapling/as_root {command:'function entity:interaction/damage'}

# 3 = super strong item {weapon: 1b, strongest: 1b}
# reserve for liquid nitrogen
execute if score OPERATION_TEMP entity.strength matches 3 if items entity @p[tag=target] weapon.mainhand *[minecraft:custom_data~{weapon: 1b, strongest: 1b}] run return run function aj:entity_sapling/as_root {command:'function entity:interaction/damage'}


# fallback
title @s times 0 10 20
title @p[tag=target] actionbar ["",{italic:true,text:"I'm not strong enough!"}]
