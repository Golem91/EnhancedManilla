data modify storage durability:custom item set from entity @s Inventory[{Slot:100b}]
function uses:update
item modify entity @s armor.feet uses:update
item modify entity @s armor.feet uses:getdamage
item modify entity @s armor.feet uses:getlore
execute if score #uses cd_Uses matches 0 unless data storage durability:custom item.tag.durability.Unbreakable run item replace entity @s armor.feet with air