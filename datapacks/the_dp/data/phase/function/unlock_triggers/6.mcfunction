#now spawn more plants.

scoreboard players set killed_plants phase 0

bossbar set killed_plants players @a
bossbar set killed_plants max 100
bossbar set killed_plants style notched_20
bossbar set killed_plants value 0
bossbar set killed_plants visible true

scoreboard players set spawn_threshold entity.spawn 80
function dp:dialogue/phase_6