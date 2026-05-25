execute at @n[type=item_display,tag=entrance_door] run playsound dp:effects.door_open block @a ~ ~ ~ 1
data merge entity @n[type=item_display,tag=entrance_door] {transformation:{translation:[1,5.1,-1]},start_interpolation:1,interpolation_duration:130}

data modify entity @n[type=item_display,tag=ambient_ground_vines] item.components."minecraft:custom_model_data".colors set value [[1,0.5,0.2]]

scoreboard players set dialog_temp phase 0
function dp:dialogue/phase_1