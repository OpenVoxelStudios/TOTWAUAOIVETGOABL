advancement revoke @s only entity:use_liquid_nitrogen

execute if items entity @s weapon.* flint[damage=500] run title @s times 0 10 20
execute if items entity @s weapon.* flint[damage=500] run return run title @s actionbar "There's nothing left....nice."

execute if items entity @s weapon.offhand flint[custom_model_data={strings:["nitrogen"]}] run item modify entity @s weapon.offhand entity:liquid_nitrogen_durability
execute if items entity @s weapon.mainhand flint[custom_model_data={strings:["nitrogen"]}] run item modify entity @s weapon.mainhand entity:liquid_nitrogen_durability

