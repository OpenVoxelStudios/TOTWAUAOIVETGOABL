fill 25 -58 47 26 -60 47 barrier

gamemode spectator @a[tag=!dead]

execute at @e[tag=aj.entrance.root] as @p[tag=!dead] run function aj:entrance/apply_skin
execute as @e[tag=aj.entrance.root] run function aj:entrance/animations/close/play

say uh oh
