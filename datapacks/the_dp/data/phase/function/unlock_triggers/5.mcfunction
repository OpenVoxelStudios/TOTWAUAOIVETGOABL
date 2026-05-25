bossbar set killed_plants visible false
execute as @n[tag=phase5_chem_wall,type=item_display,tag=aj.vine_wall.root] run function aj:vine_wall/animations/open/play

scoreboard players set spawn_threshold entity.spawn 350


scoreboard players set dialog_temp phase 0
function dp:dialogue/phase_5