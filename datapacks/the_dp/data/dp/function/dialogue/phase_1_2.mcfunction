function dp:dialogue/ding
execute as @p[tag=d.main] run tellraw @a ["\n<",{selector:"@s"},">: so yeah today we're exploring a botanic lab, which people spontaneously left a few decades ago for reasons unknown that won't be anything related to foreshadowing"]

tag @a remove d.main