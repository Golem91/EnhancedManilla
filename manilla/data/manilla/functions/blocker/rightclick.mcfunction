#get Owners UUID
data modify storage manilla:interaction UUID set from entity @s interaction.player
#pretty isn't it?
playsound minecraft:block.amethyst_block.resonate block @a ~ ~ ~
#particles on non occluded sides
function manilla:blocker/break/particles {color:"0.196 0.839 0"}
#check if player is sneaking
execute on target unless predicate manilla:sneaking run tag @s add nonsneaking
execute on target if predicate manilla:sneaking run tag @s add sneaking
#break blocks
function manilla:blocker/modify/init with storage manilla:interaction
#kill entities
#function manilla:blocker/interaction/kill with storage manilla:interaction
#clear block of interaction
data remove entity @s interaction

#Data for color values
#0.533 0.000 0.839  > stage 1
#0.839 0 0.796      > stage 2
#0.839 0 0.349      > stage 3
#0.839 0 0          > stage 4