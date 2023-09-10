execute store result score #damage cd_Uses run data get entity @s SelectedItem.tag.Damage
execute as @s[scores={cd_ufoas=1..},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{durability:{manual:0b}}}}] run scoreboard players add #damage cd_Uses 1
scoreboard players operation #damage cd_Uses += @s cd_dMain
execute store result score #prevdamage cd_Uses run data get entity @s SelectedItem.tag.durability.prevUses
execute unless score #damage cd_Uses = #prevdamage cd_Uses run function uses:main/update

tag @s remove durability_main
scoreboard players reset @s cd_ufoas