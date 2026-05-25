function phase:tick/7_2

execute unless score collected_fuses phase matches 4.. run return fail
scoreboard players set collected_fuses phase 0

function phase:unlock {phase:8}