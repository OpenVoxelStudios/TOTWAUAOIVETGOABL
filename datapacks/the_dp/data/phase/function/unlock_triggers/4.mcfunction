tp @a[tag=!dead] 26.0 -60.0 46.0 180 8
gamemode adventure @a[tag=!dead]
data modify entity @n[type=item_display,tag=ground_vines] transformation.translation[1] set value 0.52

scoreboard players set death_timer phase 0
scoreboard players set killed_plants phase 0

bossbar set killed_plants players @a
bossbar set killed_plants max 10
bossbar set killed_plants style notched_10
bossbar set killed_plants value 0
bossbar set killed_plants visible true