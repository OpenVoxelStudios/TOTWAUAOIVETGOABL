advancement revoke @s only dp:keycard_interact

# if keycard in hand TODO: animate model
execute unless items entity @s weapon.mainhand *[minecraft:custom_data~{keycard:1b}] run return run say i no keycard

execute at @s as @n[distance=..10,tag=keycard.interaction,type=interaction] if data entity @s interaction run function dp:keycard/as_interaction
