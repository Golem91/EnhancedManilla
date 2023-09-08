#get Owners UUID
data modify storage manilla:interaction RightUUID set from entity @s interaction.player

playsound minecraft:block.amethyst_block.resonate block @a ~ ~ ~
#execute if block ~ ~ ~ #manilla:modify/modifiable run playsound minecraft:block.amethyst_block.resonate block @a ~ ~ ~
#execute unless block ~ ~ ~ #manilla:modify/modifiable run playsound minecraft:entity.skeleton.step block @a ~ ~ ~
#particles on non occluded sides
function manilla:ray/break/particles {color:"0.196 0.839 0"}
#execute if block ~ ~ ~ #manilla:modify/modifiable run function manilla:ray/break/particles {color:"0.196 0.839 0"}
#execute unless block ~ ~ ~ #manilla:modify/modifiable run function manilla:ray/break/particles {color:"0.839 0 0"}

function manilla:ray/modify/init with storage manilla:interaction

#kill entities
function manilla:ray/modify/kill with storage manilla:interaction

#clear RightUUID values
#data remove storage manilla:interaction RightUUID

#Data for color values
#0.533 0.000 0.839  > stage 1
#0.839 0 0.796      > stage 2
#0.839 0 0.349      > stage 3
#0.839 0 0          > stage 4