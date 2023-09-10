execute unless data storage durability:custom item.tag.durability.stepUses run function uses:generate_steps with storage durability:custom item
scoreboard players operation #damage cd_Uses -= #prevdamage cd_Uses
execute store result score #uses cd_Uses run data get storage durability:custom item.tag.durability.Uses
scoreboard players operation #uses cd_Uses -= #damage cd_Uses
execute store result score #max cd_Uses run data get storage durability:custom item.tag.durability.maxUses
execute if score #uses cd_Uses > #max cd_Uses run scoreboard players operation #uses cd_Uses = #max cd_Uses
execute if score #uses cd_Uses matches ..0 run scoreboard players set #uses cd_Uses 0
execute store result storage durability:custom item.tag.durability.Uses int 1 run scoreboard players get #uses cd_Uses

scoreboard players operation #max cd_Uses -= #uses cd_Uses
execute store result score #temp cd_Uses run data get storage durability:custom item.tag.durability.stepUses
execute store result storage durability:custom item.tag.Damage int 0.001 run scoreboard players operation #max cd_Uses *= #temp cd_Uses
execute store result storage durability:custom item.tag.durability.prevUses int 1 run data get storage durability:custom item.tag.Damage
execute if score #uses cd_Uses matches 0 store result score @s cd_sound run data get storage durability:custom item.tag.durability.Sound
function uses:lore with storage durability:custom item.tag.durability

execute if score @s cd_sound matches 0 at @s run playsound minecraft:item.shield.break master @s ~ ~ ~ 1
execute if score @s cd_sound matches 1 at @s run playsound minecraft:block.beacon.deactivate master @s ~ ~ ~ 0.2