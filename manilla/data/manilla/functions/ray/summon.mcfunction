data modify storage manilla:uuid UUID set from entity @s UUID
execute at @s summon minecraft:armor_stand run function manilla:ray/summon_data with storage manilla:uuid
execute anchored eyes rotated as @s run tp @e[type=armor_stand,tag=raycast,tag=uinit,limit=1,sort=nearest] ^ ^ ^ ~ ~
scoreboard players reset @s click
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:silk_touch"}]}}}] as @e[type=armor_stand,tag=raycast,tag=uinit] run tag @s add silk_touch 
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:fortune",lvl:1s}]}}}] as @e[type=armor_stand,tag=raycast,tag=uinit] run tag @s add fortuneI
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:fortune",lvl:2s}]}}}] as @e[type=armor_stand,tag=raycast,tag=uinit] run tag @s add fortuneII
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:fortune",lvl:3s}]}}}] as @e[type=armor_stand,tag=raycast,tag=uinit] run tag @s add fortuneIII
tag @e[tag=uinit] remove uinit
