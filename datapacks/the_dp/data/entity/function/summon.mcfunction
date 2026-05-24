#! summon {
#!   entity: string
#! }

#$execute at @s run function entity:$(entity)/summon
execute rotated ~ 0 run function aj:entity_sapling/summon {args:{animation:'small_grow',start_animation:true}}
$execute as @n[tag=aj.entity_sapling.root,distance=..10] run function entity:root/on_summon {entity:"$(entity)"}