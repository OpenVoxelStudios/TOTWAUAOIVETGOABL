# wait for fuses to be placed

execute unless score placed_fuses phase matches 4 run return fail 
scoreboard players set placed_fuses phase 0

function phase:unlock {phase:9}