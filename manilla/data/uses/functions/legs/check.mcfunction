execute store result score #damage cd_Uses run data get entity @s Inventory[{Slot:101b}].tag.Damage
execute store result score #prevdamage cd_Uses run data get entity @s Inventory[{Slot:101b}].tag.durability.prevUses
execute unless score #damage cd_Uses = #prevdamage cd_Uses run function uses:legs/update