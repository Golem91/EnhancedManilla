#fill update mana indicator
execute store result storage manilla:qnt mana int 0.2 run scoreboard players get @s mana
function manilla:mana/manaattri with storage manilla:qnt

#refill mana when in mana pool
execute at @s if block ~ ~ ~ #manilla:slabs[waterlogged=true] if block ~1 ~1 ~ minecraft:potted_blue_orchid if block ~-1 ~1 ~ minecraft:potted_blue_orchid if block ~ ~1 ~1 minecraft:potted_blue_orchid if block ~ ~1 ~-1 minecraft:potted_blue_orchid if block ~1 ~1 ~1 minecraft:potted_blue_orchid if block ~-1 ~1 ~1 minecraft:potted_blue_orchid if block ~1 ~1 ~-1 minecraft:potted_blue_orchid if block ~-1 ~1 ~-1 minecraft:potted_blue_orchid run tag @s add refill