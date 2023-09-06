#get Owners UUID
data modify storage manilla:interaction LeftUUID set from entity @s attack.player
#add 1 to been hit value
scoreboard players add @s count 1
#reset attack on interaction
data remove entity @s attack
playsound minecraft:block.amethyst_block.hit block @a ~ ~ ~
#break block/-s when hit 4 times
execute if score @s count matches 4.. run function manilla:ray/break with storage manilla:interaction
#clear LeftUUID values
data remove storage manilla:interaction LeftUUID