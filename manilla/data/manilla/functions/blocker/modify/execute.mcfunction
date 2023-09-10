#> grass and dirt
execute if block ~ ~ ~ #manilla:modify/to_farmland on passengers on origin unless predicate manilla:sneaking run setblock ~ ~ ~ minecraft:farmland
execute if block ~ ~ ~ #manilla:modify/to_dirt on passengers on origin unless predicate manilla:sneaking run setblock ~ ~ ~ minecraft:dirt
execute if block ~ ~ ~ #manilla:modify/to_dirt_path on passengers on origin if predicate manilla:sneaking run setblock ~ ~ ~ minecraft:dirt_path
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
