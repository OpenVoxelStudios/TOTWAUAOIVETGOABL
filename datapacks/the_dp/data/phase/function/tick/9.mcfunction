#smth that does generator puzzle tick

scoreboard players set puzzle_progress phase 0
execute as @e[tag=generator.puzzle,scores={generator.ids=1}] at @s if block ~ ~ ~ lever[powered=true] run scoreboard players add puzzle_progress phase 1
execute as @e[tag=generator.puzzle,scores={generator.ids=0}] at @s if block ~ ~ ~ lever[powered=false] run scoreboard players add puzzle_progress phase 1


# hey steve put a bar progress reset in generator/reset to display while puzzle inactive
execute as @n[type=item_display,tag=gen_progress_bar] store result entity @s transformation.scale[0] float 1 run scoreboard players get puzzle_progress phase
execute as @n[type=item_display,tag=gen_progress_bar] store result entity @s transformation.translation[0] float 0.05 run data get entity @s transformation.scale[0] 10
#execute as @n[type=item_display,tag=gen_progress_bar] store result entity @s transformation.scale[2] float 0.0104166667 run data get entity @s transformation.scale[0]

data modify entity @n[type=item_display,tag=gen_progress_bar] start_interpolation set value 0



execute unless score puzzle_progress phase matches 6 run return fail
scoreboard players add puzzle_iterations_timeout phase 1
execute if score puzzle_iterations_timeout phase matches ..20 run return fail
scoreboard players reset puzzle_iterations_timeout

scoreboard players add puzzle_iterations phase 1
execute if score puzzle_iterations phase matches 5.. run return run function phase:unlock {phase: 10}

execute as @e[tag=generator.puzzle,type=marker] store result score @s generator.ids run random value 0..1
function dp:generator/flip_levers
execute positioned 21.0 -60.0 0.5 run playsound dp:effects.tada block @a[distance=0..32] ~ ~ ~ 1.5 1.0 0.0
execute positioned 21.0 -60.0 0.5 as @r run tellraw @a[distance=0..16] ["\n<",{selector:"@s"},">: nice! now do another!"]