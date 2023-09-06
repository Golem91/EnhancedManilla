scoreboard players set @s count 0
$execute at @e[type=interaction,nbt={ArmorItems:[{},{},{},{tag:{UUID:$(UUID)}}]}] run scoreboard players add @s count 1
tellraw @a [{"text":"Count is: ","color":"white"},{"score":{"name":"@s","objective":"count"},"color":"red"}]