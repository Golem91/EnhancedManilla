execute if block ~ ~ ~ minecraft:observer[facing=south] positioned ~ ~ ~1 run setblock ~ ~ ~ minecraft:air destroy
execute if block ~ ~ ~ minecraft:observer[facing=north] positioned ~ ~ ~-1 run setblock ~ ~ ~ minecraft:air destroy
execute if block ~ ~ ~ minecraft:observer[facing=east] positioned ~1 ~ ~ run setblock ~ ~ ~ minecraft:air destroy
execute if block ~ ~ ~ minecraft:observer[facing=west] positioned ~-1 ~ ~ run setblock ~ ~ ~ minecraft:air destroy
execute if block ~ ~ ~ minecraft:observer[facing=up] positioned ~ ~1 ~ run setblock ~ ~ ~ minecraft:air destroy
execute if block ~ ~ ~ minecraft:observer[facing=down] positioned ~ ~-1 ~ run setblock ~ ~ ~ minecraft:air destroy
tag @s remove break
scoreboard players reset @s timer