advancement revoke @s only phase:player_hit_bulb

execute if score attack_cooldown bulb matches 1.. run return fail
execute unless items entity @s weapon.mainhand *[minecraft:custom_data~{weapon:1b}] run title @s times 0 10 20
execute unless items entity @s weapon.mainhand *[minecraft:custom_data~{weapon:1b}] run return run title @s actionbar ["",{italic:true,text:"I need a weapon for this plant..."}]

playsound minecraft:block.big_dripleaf.hit block @a[distance=0..32] ~ ~ ~ 1.5 0.7 0.0
playsound minecraft:block.big_dripleaf.hit block @a[distance=0..32] ~ ~ ~ 1.5 0.7 0.0
playsound minecraft:block.big_dripleaf.hit block @a[distance=0..32] ~ ~ ~ 1.5 0.7 0.0
playsound minecraft:block.big_dripleaf.hit block @a[distance=0..32] ~ ~ ~ 1.5 0.7 0.0
playsound minecraft:block.big_dripleaf.hit block @a[distance=0..32] ~ ~ ~ 1.5 0.7 0.0
playsound minecraft:block.big_dripleaf.hit block @a[distance=0..32] ~ ~ ~ 1.5 0.7 0.0
playsound minecraft:block.big_dripleaf.hit block @a[distance=0..32] ~ ~ ~ 1.5 0.7 0.0
playsound minecraft:block.big_dripleaf.hit block @a[distance=0..32] ~ ~ ~ 1.5 0.7 0.0
playsound minecraft:block.big_dripleaf.hit block @a[distance=0..32] ~ ~ ~ 1.5 0.7 0.0
playsound minecraft:block.big_dripleaf.hit block @a[distance=0..32] ~ ~ ~ 1.5 0.7 0.0

execute at @n[tag=phase1_bulb_display] run particle item{item:{id: "minecraft:flint", count: 1, components: {"minecraft:custom_model_data": {strings: ["bulb_plant"]}}}} ~ ~1 ~ 0.2 0.4 0.2 0.2 50 normal @a

scoreboard players set attack_cooldown bulb 10
scoreboard players remove health bulb 1

execute if score health bulb matches 0 run function phase:bulb/break