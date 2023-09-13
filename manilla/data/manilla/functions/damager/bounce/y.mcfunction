execute store result score @s MotionY run data get entity @s Motion.[1] 10000000
scoreboard players operation @s MotionY *= ?RotCorr RotCorX
execute store result entity @s Motion.[1] double 0.0000001 run scoreboard players get @s MotionY