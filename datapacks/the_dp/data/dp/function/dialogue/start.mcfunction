tag @r add d.main

execute as @p[tag=d.main] run tellraw @a ["\n<",{selector:"@s"},"> hey guys! I'm ",{selector:"@s"}," and welcome to another abandoned building adventure!"]

schedule function dp:dialogue/start_1 4s replace