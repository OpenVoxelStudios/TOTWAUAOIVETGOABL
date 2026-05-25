# TODO: those fills probably useless (they are but shh idk)
fill 25 -58 47 26 -60 47 air
# fill 25 -58 48 26 -60 48 air

bossbar set death_timer visible false

gamemode spectator @a[tag=!dead]

execute at @e[tag=aj.entrance.root] as @p[tag=!dead] run function aj:entrance/apply_skin
execute as @e[tag=aj.entrance.root] run function aj:entrance/animations/leave/play

function dp:dialogue/phase_11