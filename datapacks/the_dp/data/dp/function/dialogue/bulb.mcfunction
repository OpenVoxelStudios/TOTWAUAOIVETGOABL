function dp:dialogue/ding
execute as @r run tellraw @a ["\n<",{selector:"@s"},">: oh dang a bunch of doors here are blocked by vines. although i notice that one of these doors is connected to this weird bulb plant!"]

schedule function dp:dialogue/bulb_1 6s replace