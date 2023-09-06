#break block at UUIDd interactions with enchantment
$execute if entity @s[tag=silk_touch] as @e[type=interaction,nbt={Passengers:[{ArmorItems:[{},{},{},{tag:{UUID:$(LeftUUID)}}]}]}] at @s unless block ~ ~ ~ #manilla:unbreakable run function manilla:ray/break/silk_touch
$execute if entity @s[tag=fortuneI] as @e[type=interaction,nbt={Passengers:[{ArmorItems:[{},{},{},{tag:{UUID:$(LeftUUID)}}]}]}] at @s unless block ~ ~ ~ #manilla:unbreakable run function manilla:ray/break/fortunel
$execute if entity @s[tag=fortuneII] as @e[type=interaction,nbt={Passengers:[{ArmorItems:[{},{},{},{tag:{UUID:$(LeftUUID)}}]}]}] at @s unless block ~ ~ ~ #manilla:unbreakable run function manilla:ray/break/fortunell
$execute if entity @s[tag=fortuneIII] as @e[type=interaction,nbt={Passengers:[{ArmorItems:[{},{},{},{tag:{UUID:$(LeftUUID)}}]}]}] at @s unless block ~ ~ ~ #manilla:unbreakable run function manilla:ray/break/fortunelll

$execute as @e[type=interaction,nbt={Passengers:[{ArmorItems:[{},{},{},{tag:{UUID:$(LeftUUID)}}]}]}] at @s unless block ~ ~ ~ #manilla:unbreakable run function manilla:ray/break/normal

#kill marker armor stands with appropriate Owner UUID
$execute as @e[type=armor_stand,tag=marker,nbt={ArmorItems:[{},{},{},{tag:{UUID:$(LeftUUID)}}]}] run kill @s

#playsound to make it sound pretty
playsound block.amethyst_block.break block @a ~ ~ ~ 3