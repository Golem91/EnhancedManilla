scoreboard players set @s h_contfinal 6
scoreboard players operation @s h_contfinal += @s h_container
execute store result storage manilla:qnt hearts int 1 run scoreboard players get @s h_contfinal
function manilla:healthcont/cont_set_attri with storage manilla:qnt