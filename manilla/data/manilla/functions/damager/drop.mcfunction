execute store result score @s DropY run data get entity @s Motion.[1] 10000000
scoreboard players set @s operation 100000
scoreboard players operation @s DropY -= @s operation
execute store result entity @s Motion.[1] double 0.0000001 run scoreboard players get @s DropY