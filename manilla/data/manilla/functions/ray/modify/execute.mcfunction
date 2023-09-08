#> grass and dirt
execute if entity @a[tag=nonsneaking] at @s if block ~ ~ ~ #manilla:modify/to_farmland run setblock ~ ~ ~ minecraft:farmland
execute if entity @a[tag=nonsneaking] at @s if block ~ ~ ~ #manilla:modify/to_dirt run setblock ~ ~ ~ minecraft:dirt
execute if entity @a[tag=sneaking] at @s if block ~ ~ ~ #manilla:modify/to_dirt_path run setblock ~ ~ ~ minecraft:dirt_path
#> woods
execute at @s if block ~ ~ ~ minecraft:oak_wood run setblock ~ ~ ~ minecraft:stripped_oak_wood
execute at @s if block ~ ~ ~ minecraft:spruce_wood run setblock ~ ~ ~ minecraft:stripped_spruce_wood
execute at @s if block ~ ~ ~ minecraft:birch_wood run setblock ~ ~ ~ minecraft:stripped_birch_wood
execute at @s if block ~ ~ ~ minecraft:jungle_wood run setblock ~ ~ ~ minecraft:stripped_jungle_wood
execute at @s if block ~ ~ ~ minecraft:acacia_wood run setblock ~ ~ ~ minecraft:stripped_acacia_wood
execute at @s if block ~ ~ ~ minecraft:dark_oak_wood run setblock ~ ~ ~ minecraft:stripped_dark_oak_wood
execute at @s if block ~ ~ ~ minecraft:cherry_wood run setblock ~ ~ ~ minecraft:stripped_cherry_wood
execute at @s if block ~ ~ ~ minecraft:mangrove_wood run setblock ~ ~ ~ minecraft:stripped_mangrove_wood
execute at @s if block ~ ~ ~ minecraft:warped_hyphae run setblock ~ ~ ~ minecraft:stripped_warped_hyphae
execute at @s if block ~ ~ ~ minecraft:crimson_hyphae run setblock ~ ~ ~ minecraft:stripped_crimson_hyphae
#> logs
execute at @s if block ~ ~ ~ minecraft:oak_log run setblock ~ ~ ~ minecraft:stripped_oak_log
execute at @s if block ~ ~ ~ minecraft:spruce_log run setblock ~ ~ ~ minecraft:stripped_spruce_log
execute at @s if block ~ ~ ~ minecraft:birch_log run setblock ~ ~ ~ minecraft:stripped_birch_log
execute at @s if block ~ ~ ~ minecraft:jungle_log run setblock ~ ~ ~ minecraft:stripped_jungle_log
execute at @s if block ~ ~ ~ minecraft:acacia_log run setblock ~ ~ ~ minecraft:stripped_acacia_log
execute at @s if block ~ ~ ~ minecraft:dark_oak_log run setblock ~ ~ ~ minecraft:stripped_dark_oak_log
execute at @s if block ~ ~ ~ minecraft:cherry_log run setblock ~ ~ ~ minecraft:stripped_cherry_log
execute at @s if block ~ ~ ~ minecraft:mangrove_log run setblock ~ ~ ~ minecraft:stripped_mangrove_log
execute at @s if block ~ ~ ~ minecraft:warped_stem run setblock ~ ~ ~ minecraft:stripped_warped_stem
execute at @s if block ~ ~ ~ minecraft:crimson_stem run setblock ~ ~ ~ minecraft:stripped_crimson_stem
#> pumpkin
execute at @s if block ~ ~ ~ minecraft:pumpkin run setblock ~ ~ ~ minecraft:carved_pumpkin
execute at @s if block ~ ~ ~ minecraft:carved_pumpkin run summon item ~ ~ ~ {Item:{id:"minecraft:pumpkin_seeds",Count:4}}

#> template
#execute if entity @a[tag=nonsneaking] at @s if block ~ ~ ~ air run setblock ~ ~ ~ cave_air
#execute if entity @a[tag=sneaking] at @s if block ~ ~ ~ air run setblock ~ ~ ~ void_air
#execute at @s if block ~ ~ ~ air run setblock ~ ~ ~ cave_air
