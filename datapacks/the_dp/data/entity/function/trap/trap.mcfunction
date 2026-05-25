function aj:entity_trap/animations/capture/play
#ay trapped
scoreboard players add @s entity_trap.capture_timer 1
execute as @p[tag=!dead,gamemode=!spectator,distance=0..1.2] run function steve:fake_player/summon