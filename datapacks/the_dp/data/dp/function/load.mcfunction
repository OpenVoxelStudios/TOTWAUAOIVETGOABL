#temp
#function dp:reset
function custom_heal:load

# for autocomplete
scoreboard objectives add generator.ids dummy
scoreboard objectives add keycard.ids dummy
scoreboard objectives add itempicker dummy
scoreboard objectives add music dummy
#5595 ticks long

# i just want auto complete :sob:
bossbar add killed_plants "Killed Plants"
bossbar add death_timer "Time Left"

fill 25 -58 48 26 -60 48 barrier
gamerule natural_health_regeneration false
gamerule fall_damage false

scoreboard objectives add deaths deathCount

team add players
team modify players friendlyFire false