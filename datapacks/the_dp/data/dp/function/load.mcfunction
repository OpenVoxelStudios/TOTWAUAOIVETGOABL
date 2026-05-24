#temp
function dp:reset

# for autocomplete
scoreboard objectives add generator.ids dummy
scoreboard objectives add keycard.ids dummy
scoreboard objectives add itempicker dummy

# i just want auto complete :sob:
bossbar add killed_plants "Killed Plants"

fill 25 -58 48 26 -60 48 barrier
gamerule natural_health_regeneration false
gamerule fall_damage false