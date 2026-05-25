function dp:dialogue/ding
execute as @r run tellraw @a ["\n<",{selector:"@s"},">: oh look plants are growing on the ground! i bet if we break them, it'll weaken the other vines blocking rooms!"]

schedule function dp:dialogue/phase_4_5 12s replace