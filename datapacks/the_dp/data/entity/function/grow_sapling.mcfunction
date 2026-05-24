scoreboard players reset @s entity.growth
# plant is string

$function aj:entity_$(plant)/summon {args:{animation:'medium_grow',start_animation:true}}
function aj:entity_sapling/animations/medium_grow/play

$execute as @n[tag=aj.entity_$(plant).root,distance=0..10] run data modify entity @s data.plant set value "$(plant)"
$execute as @n[tag=aj.entity_$(plant).root,distance=0..10] run scoreboard players set @s entity.growth 0