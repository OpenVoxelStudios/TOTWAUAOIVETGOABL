tag @r add d.temp

function dp:dialogue/ding
execute as @r run tellraw @a ["\n<",{selector:"@s"},">: oh hey it did break!"]

schedule function dp:dialogue/phase_2_1 2s replace