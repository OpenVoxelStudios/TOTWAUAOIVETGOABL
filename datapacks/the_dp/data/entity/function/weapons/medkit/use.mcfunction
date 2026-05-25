scoreboard players set @s medkit_used 0
execute unless items entity @s weapon.mainhand carrot_on_a_stick[item_name="Medkit"] run return run title @s times 0 10 20
execute unless items entity @s weapon.mainhand carrot_on_a_stick[item_name="Medkit"] run return run title @s actionbar ["",{italic:true,text:"Hold Medkit in your main hand."}]

execute if items entity @s weapon.mainhand carrot_on_a_stick[damage=50] run return fail

execute store result score #health medkit_used run data get entity @s Health
execute if score #health medkit_used matches 20.. run title @s times 0 10 20
execute if score #health medkit_used matches 20.. run return run title @s actionbar ["",{italic:true,text:"Sharing is caring :3"}]

item modify entity @s weapon.mainhand entity:medkit_durability
scoreboard players set @s c.heal 20000
function custom_heal:apply_heal

