$execute as @e[type=interaction,nbt={Passengers:[{ArmorItems:[{},{},{},{tag:{UUID:$(RightUUID)}}]}]}] run kill @s
$execute as @e[type=armor_stand,tag=marker,nbt={ArmorItems:[{},{},{},{tag:{UUID:$(RightUUID)}}]}] run kill @s