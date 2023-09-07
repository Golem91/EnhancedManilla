#get Owners UUID
data modify storage manilla:interaction LeftUUID set from entity @s attack.player
#add 1 to been hit value
scoreboard players add @s count 1
#reset attack on interaction
data remove entity @s attack
playsound minecraft:block.amethyst_block.hit block @a ~ ~ ~
#particles on non occluded sides
execute if score @s count matches 1 run function manilla:ray/break/particles {color:"0.533 0.000 0.839"}
execute if score @s count matches 2 run function manilla:ray/break/particles {color:"0.839 0 0.796"}
execute if score @s count matches 3 run function manilla:ray/break/particles {color:"0.839 0 0.349"}
execute if score @s count matches 4 run function manilla:ray/break/particles {color:"0.839 0 0 "}

#break block/-s when hit 4 times
execute if score @s count matches 4.. run function manilla:ray/break with storage manilla:interaction
#clear LeftUUID values
data remove storage manilla:interaction LeftUUID

#Data for color values
#0.533 0.000 0.839  > stage 1
#0.839 0 0.796      > stage 2
#0.839 0 0.349      > stage 3
#0.839 0 0          > stage 4