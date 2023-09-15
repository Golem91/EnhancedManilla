data modify storage manilla:item Item set from entity @s SelectedItem.tag
data remove storage manilla:item Item.CustomModelData

item replace entity @s[predicate=manilla:blocker/basic1] weapon.mainhand with warped_fungus_on_a_stick{CustomModelData:1}
item replace entity @s[predicate=manilla:blocker/advanced1] weapon.mainhand with warped_fungus_on_a_stick{CustomModelData:2}
item replace entity @s[predicate=manilla:blocker/elite1] weapon.mainhand with warped_fungus_on_a_stick{CustomModelData:3}

item modify entity @s weapon.mainhand manilla:tag_copy

playsound minecraft:item.dye.use block @s ~ ~ ~