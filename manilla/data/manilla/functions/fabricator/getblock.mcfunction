#turn planks into slabs
execute if block ~ ~1 ~ minecraft:air if block ~ ~ ~ minecraft:oak_planks run fill ~ ~ ~ ~ ~1 ~ minecraft:oak_slab 
execute if block ~ ~1 ~ minecraft:air if block ~ ~ ~ minecraft:birch_planks run fill ~ ~ ~ ~ ~1 ~ minecraft:birch_slab 
execute if block ~ ~1 ~ minecraft:air if block ~ ~ ~ minecraft:jungle_planks run fill ~ ~ ~ ~ ~1 ~ minecraft:jungle_slab 
execute if block ~ ~1 ~ minecraft:air if block ~ ~ ~ minecraft:acacia_planks run fill ~ ~ ~ ~ ~1 ~ minecraft:acacia_slab 
execute if block ~ ~1 ~ minecraft:air if block ~ ~ ~ minecraft:spruce_planks run fill ~ ~ ~ ~ ~1 ~ minecraft:spruce_slab 
execute if block ~ ~1 ~ minecraft:air if block ~ ~ ~ minecraft:dark_oak_planks run fill ~ ~ ~ ~ ~1 ~ minecraft:dark_oak_slab 
execute if block ~ ~1 ~ minecraft:air if block ~ ~ ~ minecraft:cherry_planks run fill ~ ~ ~ ~ ~1 ~ minecraft:cherry_slab 
execute if block ~ ~1 ~ minecraft:air if block ~ ~ ~ minecraft:mangrove_planks run fill ~ ~ ~ ~ ~1 ~ minecraft:mangrove_slab 
execute if block ~ ~1 ~ minecraft:air if block ~ ~ ~ minecraft:warped_planks run fill ~ ~ ~ ~ ~1 ~ minecraft:warped_slab 
execute if block ~ ~1 ~ minecraft:air if block ~ ~ ~ minecraft:crimson_planks run fill ~ ~ ~ ~ ~1 ~ minecraft:crimson_slab 

#turn stripped logs into planks
execute if block ~ ~1 ~ minecraft:air if block ~ ~2 ~ minecraft:air if block ~ ~3 ~ minecraft:air if block ~ ~ ~ minecraft:stripped_oak_log run fill ~ ~ ~ ~ ~3 ~ minecraft:oak_planks 
execute if block ~ ~1 ~ minecraft:air if block ~ ~2 ~ minecraft:air if block ~ ~3 ~ minecraft:air if block ~ ~ ~ minecraft:stripped_birch_log run fill ~ ~ ~ ~ ~3 ~ minecraft:birch_planks 
execute if block ~ ~1 ~ minecraft:air if block ~ ~2 ~ minecraft:air if block ~ ~3 ~ minecraft:air if block ~ ~ ~ minecraft:stripped_jungle_log run fill ~ ~ ~ ~ ~3 ~ minecraft:jungle_planks 
execute if block ~ ~1 ~ minecraft:air if block ~ ~2 ~ minecraft:air if block ~ ~3 ~ minecraft:air if block ~ ~ ~ minecraft:stripped_acacia_log run fill ~ ~ ~ ~ ~3 ~ minecraft:acacia_planks 
execute if block ~ ~1 ~ minecraft:air if block ~ ~2 ~ minecraft:air if block ~ ~3 ~ minecraft:air if block ~ ~ ~ minecraft:stripped_spruce_log run fill ~ ~ ~ ~ ~3 ~ minecraft:spruce_planks 
execute if block ~ ~1 ~ minecraft:air if block ~ ~2 ~ minecraft:air if block ~ ~3 ~ minecraft:air if block ~ ~ ~ minecraft:stripped_dark_oak_log run fill ~ ~ ~ ~ ~3 ~ minecraft:dark_oak_planks 
execute if block ~ ~1 ~ minecraft:air if block ~ ~2 ~ minecraft:air if block ~ ~3 ~ minecraft:air if block ~ ~ ~ minecraft:stripped_cherry_log run fill ~ ~ ~ ~ ~3 ~ minecraft:cherry_planks 
execute if block ~ ~1 ~ minecraft:air if block ~ ~2 ~ minecraft:air if block ~ ~3 ~ minecraft:air if block ~ ~ ~ minecraft:stripped_mangrove_log run fill ~ ~ ~ ~ ~3 ~ minecraft:mangrove_planks 
execute if block ~ ~1 ~ minecraft:air if block ~ ~2 ~ minecraft:air if block ~ ~3 ~ minecraft:air if block ~ ~ ~ minecraft:stripped_warped_stem run fill ~ ~ ~ ~ ~3 ~ minecraft:warped_planks 
execute if block ~ ~1 ~ minecraft:air if block ~ ~2 ~ minecraft:air if block ~ ~3 ~ minecraft:air if block ~ ~ ~ minecraft:stripped_crimson_stem run fill ~ ~ ~ ~ ~3 ~ minecraft:crimson_planks 

#turn logs into stripped logs
execute if block ~ ~ ~ minecraft:oak_log run setblock ~ ~ ~ minecraft:stripped_oak_log 
execute if block ~ ~ ~ minecraft:birch_log run setblock ~ ~ ~ minecraft:stripped_birch_log 
execute if block ~ ~ ~ minecraft:jungle_log run setblock ~ ~ ~ minecraft:stripped_jungle_log 
execute if block ~ ~ ~ minecraft:acacia_log run setblock ~ ~ ~ minecraft:stripped_acacia_log 
execute if block ~ ~ ~ minecraft:spruce_log run setblock ~ ~ ~ minecraft:stripped_spruce_log 
execute if block ~ ~ ~ minecraft:dark_oak_log run setblock ~ ~ ~ minecraft:stripped_dark_oak_log 
execute if block ~ ~ ~ minecraft:cherry_log run setblock ~ ~ ~ minecraft:stripped_cherry_log 
execute if block ~ ~ ~ minecraft:mangrove_log run setblock ~ ~ ~ minecraft:stripped_mangrove_log 
execute if block ~ ~ ~ minecraft:warped_stem run setblock ~ ~ ~ minecraft:stripped_warped_stem 
execute if block ~ ~ ~ minecraft:crimson_stem run setblock ~ ~ ~ minecraft:stripped_crimson_stem 

#reset scoreboard
scoreboard players reset @s timer
tag @s remove fabricate

#particles
execute if block ~ ~ ~ #manilla:slabs positioned ~ ~2 ~ run function manilla:fabricator/particle/slab
execute if block ~ ~ ~ #manilla:planks positioned ~ ~4 ~ run function manilla:fabricator/particle/plank
execute if block ~ ~ ~ #manilla:stripped_logs positioned ~ ~1 ~ run function manilla:fabricator/particle/stripped_log