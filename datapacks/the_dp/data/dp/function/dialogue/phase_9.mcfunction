tag @r add d.main

function dp:dialogue/ding
execute as @p[tag=d.main] run tellraw @a ["\n<",{selector:"@s"},">: all the fuses are in place which means we can turn on the generator."]

schedule function dp:dialogue/phase_9_1 4s replace