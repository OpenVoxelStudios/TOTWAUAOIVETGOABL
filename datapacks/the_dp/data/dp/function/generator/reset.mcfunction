# FUSE
tag @e remove generator.fuse.placed
execute as @e[tag=generator.fuse.display,type=text_display] run data modify entity @s background set value -55808
execute as @e[tag=fuse_holder] run data modify entity @s transformation.scale set value [0,0,0]


# PUZZLE
scoreboard players set puzzle_iterations phase 0
execute as @e[tag=generator.puzzle,type=marker] store result score @s generator.ids run random value 0..1
execute as @e[tag=generator.puzzle,type=marker] at @s run fill ~ ~ ~ ~ ~ ~ lever[face=wall,facing=south,powered=false]

execute as @n[type=item_display,tag=gen_progress_bar] run data modify entity @s transformation.scale[0] set value 0f
execute as @n[type=item_display,tag=gen_progress_bar] store result entity @s transformation.translation[0] float 0.05 run data get entity @s transformation.scale[0] 10