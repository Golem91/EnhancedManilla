data modify storage durability:custom item set from entity @s Inventory[{tag:{RepairCost:1,durability:{}}}]
clear @s #minecraft:useable{RepairCost:1,durability:{}}
execute store result storage durability:custom item.tag.Damage int 1 run data get storage durability:custom item.tag.durability.prevUses
data modify storage durability:custom item.tag.RepairCost set value 0
function uses:anvil_give with storage durability:custom item
