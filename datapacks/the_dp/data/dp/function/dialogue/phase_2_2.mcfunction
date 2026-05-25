function dp:dialogue/ding
execute as @p[tag=d.temp] run tellraw @a ["\n<",{selector:"@s"},">: yeah i dont like this, i wanna get outta here."]

tag @a remove d.temp
tag @a remove d.other