execute store result entity @s transformation.translation[0] float -0.05 run data get storage dp:entity width 10
data modify entity @s transformation.translation[2] set from entity @s transformation.translation[0]

data modify entity @s transformation.scale[0] set from storage dp:entity width
data modify entity @s transformation.scale[1] set from storage dp:entity height
data modify entity @s transformation.scale[2] set from entity @s transformation.scale[0]

tag @s remove entity.frozen.temp
