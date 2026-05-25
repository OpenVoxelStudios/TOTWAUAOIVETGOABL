tag @r[tag=!d.main] add d.two

function dp:dialogue/ding
execute as @r[tag=!d.main, tag=!d.two] run tellraw @a ["\n<",{selector:"@s"},"> hello!"]
execute as @r[tag=!d.main, tag=d.two] run tellraw @a ["\n<",{selector:"@s"},"> wassup"]

tag @a remove d.two