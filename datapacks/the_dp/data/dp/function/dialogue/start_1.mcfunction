function dp:dialogue/ding
execute as @p[tag=d.main] at @s run tellraw @a ["\n<",{selector:"@s"},"> I'm joined here by ",{selector:"@a[distance=0.1..]"}]

schedule function dp:dialogue/start_2 25t replace