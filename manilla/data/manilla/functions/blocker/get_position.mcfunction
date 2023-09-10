#teleport in front of player at 0 0 0
tp @s ^ ^ ^2
#store position
data modify storage manilla:direction PosX set from entity @s Pos.[0]
data modify storage manilla:direction PosY set from entity @s Pos.[1]
data modify storage manilla:direction PosZ set from entity @s Pos.[2]
#kill
kill @s