tag @r[tag=!d.temp] add d.other
execute unless entity @p[tag=!d.other] run tag @r add d.other

function dp:dialogue/ding
execute as @p[tag=d.other] run tellraw @a ["\n<",{selector:"@s"},">: yo guys? the vines on the ground are growing onto my shoes i dont think the plants liked that."]

schedule function dp:dialogue/phase_2_2 3s replace