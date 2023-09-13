execute store result score @s MotionZ run data get entity @s Motion.[2] 10000000
scoreboard players operation @s MotionZ *= ?RotCorr RotCorX
execute store result entity @s Motion.[2] double 0.0000001 run scoreboard players get @s MotionZ