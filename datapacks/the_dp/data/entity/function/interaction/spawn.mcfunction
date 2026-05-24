#! spawn {
#!   height: float,
#!   width:  float,
#! }

return 0
#this shouldn't run. where tf is it?!
execute on passengers if entity @s[tag=entity.hitbox] run kill @s

$summon interaction ~ ~ ~ {Tags:["entity.hitbox", "entity.kill_when_reset", "hitbox.temp"], height: $(height)f, width: $(width)f}
ride @n[tag=hitbox.temp] mount @s
tag @e[tag=hitbox.temp] remove hitbox.temp
