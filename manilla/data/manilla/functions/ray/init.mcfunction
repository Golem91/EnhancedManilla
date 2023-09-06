attribute @s minecraft:generic.max_health base set 100
effect give @s invisibility infinite 1 true
effect give @s instant_health 1 200 true
$data merge entity @s {Passengers:[{id:"minecraft:armor_stand",Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["marker"],ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b,tag:{CustomModelData:1,UUID:$(UUID)}}]}]}
$scoreboard players remove @a[nbt={UUID:$(UUID)}] mana 1