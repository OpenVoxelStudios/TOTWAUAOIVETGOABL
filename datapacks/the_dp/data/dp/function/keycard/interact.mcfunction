advancement revoke @s only dp:keycard_interact

execute unless items entity @s weapon.mainhand *[minecraft:custom_data~{keycard:1b}] at @s as @n[distance=..10,tag=keycard.interaction,type=interaction] if data entity @s interaction run return run function dp:keycard/deny

execute at @s as @n[distance=..10,tag=keycard.interaction,type=interaction] if data entity @s interaction run function dp:keycard/as_interaction
