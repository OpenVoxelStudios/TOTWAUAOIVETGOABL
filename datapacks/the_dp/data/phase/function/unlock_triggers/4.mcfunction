tp @a[tag=!dead] 26.0 -60.0 46.0 180 8
gamemode adventure @a[tag=!dead]
#data modify entity @n[type=item_display,tag=ground_vines] transformation.translation[1] set value 0.52

bossbar set death_timer players @a
bossbar set death_timer max 14400
bossbar set death_timer style progress
bossbar set death_timer value 0
bossbar set death_timer visible true

scoreboard players set death_timer phase 0
scoreboard players set killed_plants phase 0

bossbar set killed_plants players @a
bossbar set killed_plants max 30
bossbar set killed_plants style notched_10
bossbar set killed_plants value 0
bossbar set killed_plants visible true

scoreboard players set spawn_threshold entity.spawn 150
scoreboard players set spawn_plant entity.spawn 0

function dp:dialogue/phase_4