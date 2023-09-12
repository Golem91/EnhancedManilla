execute as @s[tag=basic] run scoreboard players set @s operation 50
execute as @s[tag=advanced] run scoreboard players set @s operation 20
execute as @s[tag=elite] run scoreboard players set @s operation 1
scoreboard players operation @s operation *= @s ccount
scoreboard players operation @s mana += @s operation