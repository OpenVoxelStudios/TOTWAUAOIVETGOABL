#check if all fuses have been found (scoreboardd)

execute unless score collected_fuses phase matches 4.. run return fail
scoreboard players set collected_fuses phase 0

function phase:unlock {phase:8}

execute as @e[tag=phase7.dialog] at @s unless entity @p[distance=..3] run return fail
execute unless score dialog_temp phase matches 0 run return fail

scoreboard players set dialog_temp phase 1
function dp:dialogue/generator