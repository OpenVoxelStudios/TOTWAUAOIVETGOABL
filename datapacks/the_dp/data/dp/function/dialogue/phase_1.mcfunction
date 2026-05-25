function dp:dialogue/ding
execute as @r run tellraw @a ["\n<",{selector:"@s"},">: ah there's the keycard!"]

schedule function dp:dialogue/phase_1_2 5s replace