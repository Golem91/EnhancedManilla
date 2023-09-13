execute store result score @s MotionX run data get entity @s Motion.[0] 10000000
scoreboard players operation @s MotionX *= ?RotCorr RotCorX
execute store result entity @s Motion.[0] double 0.0000001 run scoreboard players get @s MotionX