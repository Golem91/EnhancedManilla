#summon marker
summon minecraft:marker ~ ~ ~ {Tags:["direction"]}
#get direction vector for casting
execute as @e[tag=direction] positioned 0.0 0.0 0.0 run function manilla:blocker/get_position
#summon arrow
function manilla:blocker/summon