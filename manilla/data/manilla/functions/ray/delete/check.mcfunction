data modify storage manilla:uuid UUID set from entity @s UUID
#count existing markers
function manilla:ray/delete/count with storage manilla:uuid
execute as @s[tag=basic] run scoreboard players set @s operation 50
execute as @s[tag=advanced] run scoreboard players set @s operation 20
execute as @s[tag=elite] run scoreboard players set @s operation 1
scoreboard players operation @s operation *= @s count
scoreboard players operation @s mana += @s operation

function manilla:ray/delete/kill with storage manilla:uuid

tag @s remove basic
tag @s remove advanced
tag @s remove elite

data remove storage manilla:uuid UUID