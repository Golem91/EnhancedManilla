$execute as @a[nbt={UUID:$(RightUUID)}] if predicate manilla:sneaking run tag @s add sneaking
$execute as @a[nbt={UUID:$(RightUUID)}] unless predicate manilla:sneaking run tag @s add nonsneaking

#call executing function
$execute as @e[type=interaction,nbt={Passengers:[{ArmorItems:[{},{},{},{tag:{UUID:$(RightUUID)}}]}]}] at @s run function manilla:ray/modify/execute

#remove tags
tag @a remove sneaking
tag @a remove nonsneaking