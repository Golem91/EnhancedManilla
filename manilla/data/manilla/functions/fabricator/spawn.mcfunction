playsound minecraft:block.amethyst_block.hit block @a ~ ~ ~
playsound minecraft:entity.item_frame.remove_item block @a ~ ~ ~
summon armor_stand ~ ~ ~ {NoBasePlate:1b, NoGravity:1b, Marker:1b, Small:1b, Tags:["fabricator"], Invisible:1b, Invulnerable:1b}

#particle
execute at @s align xyz run particle minecraft:dust 0.533 0.000 0.839 0.3 ~0.5 ~ ~ 0.2 0 0 0 1 normal
execute at @s align xyz run particle minecraft:dust 0.533 0.000 0.839 0.3 ~0.5 ~ ~1 0.2 0 0 0 1 normal
execute at @s align xyz run particle minecraft:dust 0.533 0.000 0.839 0.3 ~ ~ ~0.5 0 0 0.2 0 1 normal
execute at @s align xyz run particle minecraft:dust 0.533 0.000 0.839 0.3 ~1 ~ ~0.5 0 0 0.2 0 1 normal
execute at @s align xyz run particle minecraft:dust 0.533 0.000 0.839 0.3 ~0.5 ~-1 ~ 0.2 0 0 0 1 normal
execute at @s align xyz run particle minecraft:dust 0.533 0.000 0.839 0.3 ~0.5 ~-1 ~1 0.2 0 0 0 1 normal
execute at @s align xyz run particle minecraft:dust 0.533 0.000 0.839 0.3 ~ ~-1 ~0.5 0 0 0.2 0 1 normal
execute at @s align xyz run particle minecraft:dust 0.533 0.000 0.839 0.3 ~1 ~-1 ~0.5 0 0 0.2 0 1 normal
execute at @s align xyz run particle minecraft:dust 0.533 0.000 0.839 0.3 ~1 ~-0.5 ~1 0 0.2 0 0 1 normal
execute at @s align xyz run particle minecraft:dust 0.533 0.000 0.839 0.3 ~1 ~-0.5 ~ 0 0.2 0 0 1 normal
execute at @s align xyz run particle minecraft:dust 0.533 0.000 0.839 0.3 ~ ~-0.5 ~1 0 0.2 0 0 1 normal
execute at @s align xyz run particle minecraft:dust 0.533 0.000 0.839 0.3 ~ ~-0.5 ~ 0 0.2 0 0 1 normal

kill @s