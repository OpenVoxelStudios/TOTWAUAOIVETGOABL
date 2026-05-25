tag @r add d.temp

execute as @r run tellraw @a ["\n<",{selector:"@s"},">: oh hey it did break!"]

schedule function dp:dialogue/phase_2_1 1s replace