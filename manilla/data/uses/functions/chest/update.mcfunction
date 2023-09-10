data modify storage durability:custom item set from entity @s Inventory[{Slot:102b}]
function uses:update
item modify entity @s armor.chest uses:update
item modify entity @s armor.chest uses:getdamage
item modify entity @s armor.chest uses:getlore
execute if score #uses cd_Uses matches 0 unless data storage durability:custom item.tag.durability.Unbreakable run item replace entity @s armor.chest with air