$execute store result score #temp cd_Uses run data get storage durability:custom real.$(id) 1000
execute store result score #max cd_Uses run data get storage durability:custom item.tag.durability.maxUses
execute unless data storage durability:custom item.tag.durability.Uses run data modify storage durability:custom item.tag.durability.Uses set from storage durability:custom item.tag.durability.maxUses
execute unless data storage durability:custom item.tag.display.Lore run data modify storage durability:custom item.tag.display.Lore set value [""]
execute store result storage durability:custom item.tag.durability.stepUses int 1 run scoreboard players operation #temp cd_Uses /= #max cd_Uses
