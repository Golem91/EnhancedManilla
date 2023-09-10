execute store result score #damage cd_Uses run data get entity @s Inventory[{Slot:100b}].tag.Damage
execute store result score #prevdamage cd_Uses run data get entity @s Inventory[{Slot:100b}].tag.durability.prevUses
execute unless score #damage cd_Uses = #prevdamage cd_Uses run function uses:feet/update