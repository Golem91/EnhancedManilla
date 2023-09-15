#save motion for bouncing
tag @s[tag=ground] remove ground
tag @s[nbt={inGround:1b}] add ground
tag @s[nbt={OnGround:1b}] add ground

execute store result score @s[tag=!ground] MotionX run data get entity @s Motion[0] 1000000
execute store result score @s[tag=!ground] MotionY run data get entity @s Motion[1] 1000000
execute store result score @s[tag=!ground] MotionZ run data get entity @s Motion[2] 1000000

#bounce
execute as @s[tag=ground] run data merge entity @s {inGround:0b}

execute as @s[tag=ground,scores={MotionX=..-1}] unless block ~-0.9 ~ ~ #manilla:airs run tag @s add bounceX
execute as @s[tag=ground,scores={MotionX=1..}] unless block ~0.9 ~ ~ #manilla:airs run tag @s add bounceX
execute as @s[tag=ground,scores={MotionY=1..}] unless block ~ ~0.9 ~ #manilla:airs run tag @s add bounceY
execute as @s[tag=ground,scores={MotionY=..-1}] unless block ~ ~-0.9 ~ #manilla:airs run tag @s add bounceY
execute as @s[tag=ground,scores={MotionZ=1..}] unless block ~ ~ ~0.9 #manilla:airs run tag @s add bounceZ
execute as @s[tag=ground,scores={MotionZ=..-1}] unless block ~ ~ ~-0.9 #manilla:airs run tag @s add bounceZ

execute as @s[tag=ground,scores={MotionX=1..}] unless block ~0.1 ~ ~ #manilla:airs run tag @s add bounceX
execute as @s[tag=ground,scores={MotionX=..-1}] unless block ~-0.1 ~ ~ #manilla:airs run tag @s add bounceX
execute as @s[tag=ground,scores={MotionY=1..}] unless block ~ ~0.1 ~ #manilla:airs run tag @s add bounceY
execute as @s[tag=ground,scores={MotionY=..-1}] unless block ~ ~-0.1 ~ #manilla:airs run tag @s add bounceY
execute as @s[tag=ground,scores={MotionZ=1..}] unless block ~ ~ ~0.1 #manilla:airs run tag @s add bounceZ
execute as @s[tag=ground,scores={MotionZ=..-1}] unless block ~ ~ ~-0.1 #manilla:airs run tag @s add bounceZ

kill @s[tag=ground,tag=!bounceX,tag=!bounceY,tag=!bounceZ]

execute as @s[tag=ground,tag=bounceX] store result entity @s Motion[0] double -0.000001 run scoreboard players get @s MotionX
execute as @s[tag=ground,tag=!bounceX] store result entity @s Motion[0] double 0.000001 run scoreboard players get @s MotionX
execute as @s[tag=ground,tag=bounceY] store result entity @s Motion[1] double -0.000001 run scoreboard players get @s MotionY
execute as @s[tag=ground,tag=!bounceY] store result entity @s Motion[1] double 0.000001 run scoreboard players get @s MotionY
execute as @s[tag=ground,tag=bounceZ] store result entity @s Motion[2] double -0.000001 run scoreboard players get @s MotionZ
execute as @s[tag=ground,tag=!bounceZ] store result entity @s Motion[2] double 0.000001 run scoreboard players get @s MotionZ

execute as @e[tag=bounceX] at @s run playsound minecraft:block.amethyst_block.hit block @a ~ ~ ~ 
execute as @e[tag=bounceY] at @s run playsound minecraft:block.amethyst_block.hit block @a ~ ~ ~ 
execute as @e[tag=bounceZ] at @s run playsound minecraft:block.amethyst_block.hit block @a ~ ~ ~ 

tag @s[tag=ground,tag=bounceX] remove bounceX
tag @s[tag=ground,tag=bounceY] remove bounceY
tag @s[tag=ground,tag=bounceZ] remove bounceZ
