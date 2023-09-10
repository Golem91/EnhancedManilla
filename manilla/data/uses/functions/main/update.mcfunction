data modify storage durability:custom item set from entity @s SelectedItem
function uses:update
item modify entity @s weapon.mainhand uses:update
item modify entity @s weapon.mainhand uses:getdamage
item modify entity @s weapon.mainhand uses:getlore
execute if score #uses cd_Uses matches 0 unless data storage durability:custom item.tag.durability.Unbreakable run item replace entity @s weapon.mainhand with air