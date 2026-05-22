advancement revoke @s only phase:player_hit_bulb

execute if score attack_cooldown bulb matches 1.. run return 0
scoreboard players remove health bulb 1

execute if score health bulb matches 0 run function phase:bulb/break