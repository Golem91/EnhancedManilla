data modify storage manilla:item Item set from entity @s Inventory.[{Slot:-106b}].tag
execute if predicate manilla:offhand/basic1 run tag @s add basic1
execute if predicate manilla:offhand/advanced1 run tag @s add advanced1
execute if predicate manilla:offhand/elite1 run tag @s add elite1

execute if entity @s[tag=basic1] run data remove storage manilla:item Item.CustomModelData
execute if entity @s[tag=advanced1] run data remove storage manilla:item Item.CustomModelData
execute if entity @s[tag=elite1] run data remove storage manilla:item Item.CustomModelData

execute if entity @s[tag=basic1] run item replace entity @s weapon.mainhand with minecraft:warped_fungus_on_a_stick{CustomModelData:1}
execute if entity @s[tag=advanced1] run item replace entity @s weapon.mainhand with minecraft:warped_fungus_on_a_stick{CustomModelData:2}
execute if entity @s[tag=elite1] run item replace entity @s weapon.mainhand with minecraft:warped_fungus_on_a_stick{CustomModelData:3}

execute if entity @s[tag=basic1] run item modify entity @s weapon.mainhand manilla:tag_copy
execute if entity @s[tag=advanced1] run item modify entity @s weapon.mainhand manilla:tag_copy
execute if entity @s[tag=elite1] run item modify entity @s weapon.mainhand manilla:tag_copy

execute unless entity @s[tag=basic1] unless entity @s[tag=advanced1] unless entity @s[tag=elite1] run item replace entity @s weapon.mainhand from entity @s weapon.offhand

item replace entity @s weapon.offhand with minecraft:air

tag @s remove basic1
tag @s remove advanced1
tag @s remove elite1

playsound minecraft:item.dye.use block @s ~ ~ ~