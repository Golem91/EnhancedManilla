$summon minecraft:interaction ~ ~ ~ {Tags:["marker","uinit"],width:1.02f,height:1.02f,Passengers:[{id:"minecraft:armor_stand",Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["marker"],ArmorItems:[{},{},{},{id:"minecraft:black_dye",Count:1b,tag:{CustomModelData:1,UUID:$(UUID)}}]}]}
$scoreboard players remove @a[nbt={UUID:$(UUID)},predicate=manilla:breaker_basic] mana 50
$scoreboard players remove @a[nbt={UUID:$(UUID)},predicate=manilla:breaker_advanced] mana 20
$scoreboard players remove @a[nbt={UUID:$(UUID)},predicate=manilla:breaker_elite] mana 1
playsound minecraft:entity.item_frame.remove_item block @a ~ ~ ~