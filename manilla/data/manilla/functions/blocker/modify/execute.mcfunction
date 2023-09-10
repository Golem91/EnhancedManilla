#> grass and dirt
execute if entity @a[tag=nonsneaking] if block ~ ~ ~ #manilla:modify/to_farmland run setblock ~ ~ ~ minecraft:farmland
execute if entity @a[tag=nonsneaking] if block ~ ~ ~ #manilla:modify/to_dirt run setblock ~ ~ ~ minecraft:dirt
execute if entity @a[tag=sneaking] if block ~ ~ ~ #manilla:modify/to_dirt_path run setblock ~ ~ ~ minecraft:dirt_path
#> woods
execute if block ~ ~ ~ #manilla:woods run function manilla:blocker/modify/woods
#> logs
execute if block ~ ~ ~ #manilla:logs run function manilla:blocker/modify/logs
#> pumpkin
execute if block ~ ~ ~ minecraft:pumpkin run summon item ~ ~ ~ {Item:{id:"minecraft:pumpkin_seeds",Count:4}}
execute if block ~ ~ ~ minecraft:pumpkin run setblock ~ ~ ~ minecraft:carved_pumpkin
#> copper
execute if block ~ ~ ~ #manilla:modify/copper run function manilla:blocker/modify/copper
#reset tags
tag @a remove nonsneaking
tag @a remove sneaking

#> template
#execute if entity @a[tag=nonsneaking] if block ~ ~ ~ air run setblock ~ ~ ~ cave_air
#execute if entity @a[tag=sneaking] if block ~ ~ ~ air run setblock ~ ~ ~ void_air
#execute if block ~ ~ ~ air run setblock ~ ~ ~ cave_air
