
#change arrow rotation to match inGround value
execute store result score @s RotX run data get entity @s Rotation.[0]
execute store result score @s RotY run data get entity @s Rotation.[1]
scoreboard players operation @s RotX *= ?RotCorr RotCorX
scoreboard players operation @s RotY *= ?RotCorr RotCorY
execute store result entity @s Rotation.[0] float 1 run scoreboard players get @s RotX
execute store result entity @s Rotation.[1] float 1 run scoreboard players get @s RotY
#add tag for later processing
tag @s add inGround