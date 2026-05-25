function dp:dialogue/ding
execute as @r run tellraw @a ["\n<",{selector:"@s"},">: the upstairs door open! i really hope we get something else to help us escape faster!"]

schedule function dp:dialogue/phase_5_1 11s replace