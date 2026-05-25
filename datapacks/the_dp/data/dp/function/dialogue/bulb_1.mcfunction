tag @r add d.temp

function dp:dialogue/ding
execute as @p[tag=d.temp] run tellraw @a ["\n<",{selector:"@s"},">: I bet if we hit it enough times, the door will open!"]

schedule function dp:dialogue/bulb_2 5s replace