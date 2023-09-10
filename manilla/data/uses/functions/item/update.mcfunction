data modify storage durability:custom item set from entity @s Item
scoreboard players operation #damage cd_Uses = @s cd_Uses
scoreboard players set #prevdamage cd_Uses 0
function uses:update
data modify entity @s Item set from storage durability:custom item
execute if score #uses cd_Uses matches 0 unless data storage durability:custom item.tag.durability.Unbreakable run kill @s
scoreboard players reset @s cd_Uses