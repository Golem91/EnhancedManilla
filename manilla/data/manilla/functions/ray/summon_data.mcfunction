$data merge entity @s {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b,NoBasePlate:1b,Tags:["raycast","uinit"],ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b,tag:{UUID:$(UUID)}}]}

#reset uuid storage for safety
data modify storage manilla:uuid UUID.[0] set value 0
data modify storage manilla:uuid UUID.[1] set value 0
data modify storage manilla:uuid UUID.[2] set value 0
data modify storage manilla:uuid UUID.[3] set value 0