#> copper and cut copper
execute if block ~ ~ ~ minecraft:exposed_copper run setblock ~ ~ ~ minecraft:copper_block
execute if block ~ ~ ~ minecraft:weathered_copper run setblock ~ ~ ~ minecraft:exposed_copper
execute if block ~ ~ ~ minecraft:oxidized_copper run setblock ~ ~ ~ minecraft:weathered_copper
execute if block ~ ~ ~ minecraft:exposed_cut_copper run setblock ~ ~ ~ minecraft:cut_copper
execute if block ~ ~ ~ minecraft:weathered_cut_copper run setblock ~ ~ ~ minecraft:exposed_cut_copper
execute if block ~ ~ ~ minecraft:oxidized_cut_copper run setblock ~ ~ ~ minecraft:weathered_cut_copper

#> stairs
execute if block ~ ~ ~ #manilla:modify/copper_stairs run function manilla:blocker/modify/stairs
#> slabs
execute if block ~ ~ ~ #manilla:modify/copper_slabs run function manilla:blocker/modify/slabs

##> "wags" <##
execute if block ~ ~ ~ minecraft:waxed_oxidized_copper run setblock ~ ~ ~ minecraft:oxidized_copper
execute if block ~ ~ ~ minecraft:waxed_weathered_copper run setblock ~ ~ ~ minecraft:weathered_copper
execute if block ~ ~ ~ minecraft:waxed_exposed_copper run setblock ~ ~ ~ minecraft:exposed_copper
execute if block ~ ~ ~ minecraft:waxed_copper_block run setblock ~ ~ ~ minecraft:copper_block
