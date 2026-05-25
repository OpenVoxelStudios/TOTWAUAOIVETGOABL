function dp:dialogue/ding
execute as @p[tag=!d.main] run tellraw @a ["\n<",{selector:"@s"},">: ",{bold:true,text:"nerd."}]

tag @a remove d.main
schedule function dp:dialogue/phase_4_4 6s replace