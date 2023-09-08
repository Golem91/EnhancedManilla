data modify storage manilla:uuid2 UUID set from entity @s ArmorItems.[3].tag.UUID
#count number of existing selections of UUID...
function manilla:ray/limitcount with storage manilla:uuid2

#remove selection if player is not sneaking
execute as @a run function manilla:ray/nosneak with storage manilla:uuid2 

#select block
execute unless score @s count matches 1.. unless score @s count matches ..1 run scoreboard players set @s count 0
#
execute unless block ~ ~ ~ #manilla:unbreakable if score @s[tag=basic] count matches ..9 align xyz positioned ~0.5 ~ ~0.5 unless entity @e[type=interaction,sort=nearest,distance=..0.4] run function manilla:ray/init with storage manilla:uuid2
execute unless block ~ ~ ~ #manilla:unbreakable if score @s[tag=advanced] count matches ..19 align xyz positioned ~0.5 ~ ~0.5 unless entity @e[type=interaction,sort=nearest,distance=..0.4] run function manilla:ray/init with storage manilla:uuid2
execute unless block ~ ~ ~ #manilla:unbreakable if score @s[tag=elite] count matches ..49 align xyz positioned ~0.5 ~ ~0.5 unless entity @e[type=interaction,sort=nearest,distance=..0.4] run function manilla:ray/init with storage manilla:uuid2

execute unless score @s[tag=basic] count matches ..9 run playsound minecraft:entity.skeleton.step block @a ~ ~ ~
execute unless score @s[tag=advanced] count matches ..19 run playsound minecraft:entity.skeleton.step block @a ~ ~ ~
execute unless score @s[tag=elite] count matches ..49 run playsound minecraft:entity.skeleton.step block @a ~ ~ ~

#add enchantment tags to interaction & remove uinit tag
execute if entity @s[tag=silk_touch] as @e[type=interaction,tag=uinit] run tag @s add silk_touch
execute if entity @s[tag=fortuneI] as @e[type=interaction,tag=uinit] run tag @s add fortuneI
execute if entity @s[tag=fortuneII] as @e[type=interaction,tag=uinit] run tag @s add fortuneII
execute if entity @s[tag=fortuneIII] as @e[type=interaction,tag=uinit] run tag @s add fortuneIII
#type
execute if entity @s[tag=basic] as @e[type=interaction,tag=uinit] run tag @s add basic
execute if entity @s[tag=advanced] as @e[type=interaction,tag=uinit] run tag @s add advanced
execute if entity @s[tag=elite] as @e[type=interaction,tag=uinit] run tag @s add elite

tag @e[type=interaction,tag=marker,tag=uinit] remove uinit

kill @s

#reset uuid storage
#data modify storage manilla:uuid2 UUID.[0] set value 0
#data modify storage manilla:uuid2 UUID.[1] set value 0
#data modify storage manilla:uuid2 UUID.[2] set value 0
#data modify storage manilla:uuid2 UUID.[3] set value 0