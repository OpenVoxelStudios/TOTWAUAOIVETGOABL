execute unless score @s entity_trap.capture_timer matches 1.. if entity @p[tag=!dead,distance=0..1.2] run function entity:trap/trap
execute if score @s entity_trap.capture_timer matches 1.. run scoreboard players add @s entity_trap.capture_timer 1
execute if score @s entity_trap.capture_timer matches 100 run function aj:entity_trap/animations/release/play