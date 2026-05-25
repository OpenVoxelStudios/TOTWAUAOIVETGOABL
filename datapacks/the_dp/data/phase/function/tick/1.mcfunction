function phase:bulb/tick

execute as @e[tag=phase1_bulb] at @s unless entity @p[distance=..5] run return fail
execute unless score dialog_temp phase matches 0 run return fail

scoreboard players set dialog_temp phase 1
function dp:dialogue/bulb