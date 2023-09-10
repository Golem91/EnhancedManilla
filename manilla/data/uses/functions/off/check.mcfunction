execute store result score #damage cd_Uses run data get entity @s Inventory[{Slot:-106b}].tag.Damage
execute as @s[scores={cd_ufoas=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{durability:{manual:0b}}}]}] run scoreboard players add #damage cd_Uses 1
scoreboard players operation #damage cd_Uses += @s cd_dOff
execute store result score #prevdamage cd_Uses run data get entity @s Inventory[{Slot:-106b}].tag.durability.prevUses
execute unless score #damage cd_Uses = #prevdamage cd_Uses run function uses:off/update

tag @s remove durability_off