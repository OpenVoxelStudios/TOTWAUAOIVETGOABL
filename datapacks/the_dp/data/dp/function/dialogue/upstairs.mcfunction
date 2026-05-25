function dp:dialogue/ding
execute as @r run tellraw @a ["\n<",{selector:"@s"},">: those plants look a lot like security cameras even though I haven't seen any yet!"]

schedule function dp:dialogue/upstairs_1 3s replace