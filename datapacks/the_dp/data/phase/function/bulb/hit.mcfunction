advancement revoke @s only phase:player_hit_bulb

execute if score attack_cooldown bulb matches 1.. run return fail
scoreboard players set attack_cooldown bulb 10
scoreboard players remove health bulb 1

execute if score health bulb matches 0 run function phase:bulb/break