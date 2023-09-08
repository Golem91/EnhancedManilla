scoreboard players set @s count 0
$execute at @e[type=interaction,tag=marker,nbt={Passengers:[{ArmorItems:[{},{},{},{tag:{UUID:$(UUID)}}]}]}] run scoreboard players add @s count 1
#type
$execute at @e[type=interaction,tag=marker,tag=basic,nbt={Passengers:[{ArmorItems:[{},{},{},{tag:{UUID:$(UUID)}}]}]}] run tag @s add basic
$execute at @e[type=interaction,tag=marker,tag=advanced,nbt={Passengers:[{ArmorItems:[{},{},{},{tag:{UUID:$(UUID)}}]}]}] run tag @s add advanced
$execute at @e[type=interaction,tag=marker,tag=elite,nbt={Passengers:[{ArmorItems:[{},{},{},{tag:{UUID:$(UUID)}}]}]}] run tag @s add elite