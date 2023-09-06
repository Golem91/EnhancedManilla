playsound block.amethyst_block.break block @a ~ ~ ~
playsound minecraft:entity.item_frame.add_item block @a ~ ~ ~
summon minecraft:item ~ ~0.5 ~ {Item:{id:"minecraft:amethyst_block",Count:1b}}

#particle
#execute at @s align xyz run particle minecraft:dust 0.533 0.000 0.839 0.3 ~0.5 ~ ~ 0.2 0 0 0 1 normal
#execute at @s align xyz run particle minecraft:dust 0.533 0.000 0.839 0.3 ~0.5 ~ ~1 0.2 0 0 0 1 normal
#execute at @s align xyz run particle minecraft:dust 0.533 0.000 0.839 0.3 ~ ~ ~0.5 0 0 0.2 0 1 normal
#execute at @s align xyz run particle minecraft:dust 0.533 0.000 0.839 0.3 ~1 ~ ~0.5 0 0 0.2 0 1 normal
#execute at @s align xyz run particle minecraft:dust 0.533 0.000 0.839 0.3 ~0.5 ~-1 ~ 0.2 0 0 0 1 normal
#execute at @s align xyz run particle minecraft:dust 0.533 0.000 0.839 0.3 ~0.5 ~-1 ~1 0.2 0 0 0 1 normal
#execute at @s align xyz run particle minecraft:dust 0.533 0.000 0.839 0.3 ~ ~-1 ~0.5 0 0 0.2 0 1 normal
#execute at @s align xyz run particle minecraft:dust 0.533 0.000 0.839 0.3 ~1 ~-1 ~0.5 0 0 0.2 0 1 normal
#execute at @s align xyz run particle minecraft:dust 0.533 0.000 0.839 0.3 ~1 ~-0.5 ~1 0 0.2 0 0 1 normal
#execute at @s align xyz run particle minecraft:dust 0.533 0.000 0.839 0.3 ~1 ~-0.5 ~ 0 0.2 0 0 1 normal
#execute at @s align xyz run particle minecraft:dust 0.533 0.000 0.839 0.3 ~ ~-0.5 ~1 0 0.2 0 0 1 normal
#execute at @s align xyz run particle minecraft:dust 0.533 0.000 0.839 0.3 ~ ~-0.5 ~ 0 0.2 0 0 1 normal

kill @s