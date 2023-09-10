data modify storage durability:custom item set from entity @s Inventory[{Slot:-106b}]
function uses:update
item modify entity @s weapon.offhand uses:update
item modify entity @s weapon.offhand uses:getdamage
item modify entity @s weapon.offhand uses:getlore
execute if score #uses cd_Uses matches 0 unless data storage durability:custom item.tag.durability.Unbreakable run item replace entity @s weapon.offhand with air