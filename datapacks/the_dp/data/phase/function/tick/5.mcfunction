execute positioned -29 -52 8 if entity @p[tag=!dead,distance=0..4] run function phase:unlock {phase:6}

execute as @e[tag=phase5.dialog] at @s unless entity @p[distance=..3] run return fail
execute unless score dialog_temp phase matches 0 run return fail

function entity:camera/summon
function entity:camera/summon

function entity:camera/summon
function entity:camera/summon


scoreboard players set dialog_temp phase 1
function dp:dialogue/upstairs