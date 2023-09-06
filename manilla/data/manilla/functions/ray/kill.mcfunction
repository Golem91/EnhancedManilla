data modify storage manilla:uuid2 UUID set from entity @s ArmorItems.[3].tag.UUID
#count number of existing selections of UUID...
function manilla:ray/limitcount with storage manilla:uuid2

#remove selection if player is not sneaking
execute as @a run function manilla:ray/nosneak with storage manilla:uuid2 

#select block
execute unless block ~ ~ ~ #manilla:unbreakable if score @s count matches ..9 align xyz positioned ~0.5 ~ ~0.5 summon minecraft:interaction run function manilla:ray/init with storage manilla:uuid2
execute unless block ~ ~ ~ #manilla:unbreakable if score @s count matches ..9 run playsound minecraft:entity.item_frame.remove_item block @a ~ ~ ~
execute unless block ~ ~ ~ #manilla:unbreakable if score @s count matches 10.. run playsound minecraft:entity.skeleton.step block @a ~ ~ ~

kill @s

#reset uuid storage
#data modify storage manilla:uuid2 UUID.[0] set value 0
#data modify storage manilla:uuid2 UUID.[1] set value 0
#data modify storage manilla:uuid2 UUID.[2] set value 0
#data modify storage manilla:uuid2 UUID.[3] set value 0