# Generated with MC-Build

# effect give @s slowness 200 5 true
# effect give @s slowness 5 20 false
data merge entity @s {Tags:["fake_player_trader","new"],Silent:1b,active_effects:[{id:"invisibility",duration:-1,amplifier:10,show_particles:false}],Invulnerable:1b,attributes:[{base:0.7,id:"scale"}]}
scoreboard players operation @s fake_player_id = @n[type=mannequin,tag=fake_player,tag=new,distance=0..0.1] fake_player_id
tag @s remove new
tag @n[type=mannequin,tag=fake_player,tag=new,distance=0..0.1] remove new