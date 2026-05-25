#now spawn more plants.

#ay 9, generator done, leave.

execute positioned 21.0 -60.0 0.5 run playsound dp:effects.tada block @a[distance=0..32] ~ ~ ~ 1.5 1.0 0.0


function entity:reset

execute as @e[tag=aj.entrance.root] run function aj:entrance/animations/init/play

scoreboard players set death_timer phase -1
scoreboard players set spawn_threshold entity.spawn 99999999
scoreboard players set spawn_plant entity.spawn -111000000

function dp:dialogue/phase_10