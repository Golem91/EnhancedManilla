data modify storage manilla:uuid UUID set from entity @s UUID
execute at @s summon minecraft:armor_stand run function manilla:ray/summon_data with storage manilla:uuid
execute anchored eyes rotated as @s run tp @e[type=armor_stand,tag=raycast,tag=uinit,limit=1,sort=nearest] ^ ^ ^ ~ ~
scoreboard players reset @s click
tag @e[tag=uinit] remove uinit
