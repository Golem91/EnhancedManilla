data modify storage manilla:item Item set from entity @s SelectedItem.tag
data remove storage manilla:item Item.CustomModelData

item replace entity @s[predicate=manilla:blocker/basic] weapon.mainhand with warped_fungus_on_a_stick{CustomModelData:7}
item replace entity @s[predicate=manilla:blocker/advanced] weapon.mainhand with warped_fungus_on_a_stick{CustomModelData:8}
item replace entity @s[predicate=manilla:blocker/elite] weapon.mainhand with warped_fungus_on_a_stick{CustomModelData:9}

item modify entity @s weapon.mainhand manilla:tag_copy

playsound minecraft:item.dye.use block @s ~ ~ ~

tag @s add switch