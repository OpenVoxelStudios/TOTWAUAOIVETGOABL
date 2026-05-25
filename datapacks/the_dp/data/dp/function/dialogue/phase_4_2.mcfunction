function dp:dialogue/ding
execute as @p[tag=d.main] run tellraw @a ["\n<",{selector:"@s"},">: I assume we have exactly 12 minutes to escape, shown by this convenient bossbar!"]

schedule function dp:dialogue/phase_4_3 8s replace