#main and offhand
execute if data entity @s SelectedItem.tag.durability run tag @s add durability_main
execute if data entity @s Inventory[{Slot:-106b}].tag.durability run tag @s add durability_off

#elytra
execute if data entity @s Inventory[{Slot:102b,id:"minecraft:elytra"}].tag.durability run function uses:chest/check