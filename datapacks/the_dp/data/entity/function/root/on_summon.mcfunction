scoreboard players set @s entity.growth 0
$data modify entity @s data.plant set value "$(entity)"
tellraw @a[tag=debug] "hello i spawned"