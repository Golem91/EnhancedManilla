#sound
scoreboard players reset @a[scores={cd_sound=0..}] cd_sound

#anvil
execute as @a[nbt={Inventory:[{tag:{RepairCost:1,durability:{}}}]}] run function uses:anvil

execute as @a[scores={cd_manualDamage=-1000..},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{durability:{manual:1b}}}}] run scoreboard players operation @s cd_dMain += @s cd_manualDamage
execute as @a[scores={cd_manualDamage=-1000..},nbt=!{SelectedItem:{id:"minecraft:warped_fungus_on_a_stick"}},nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{durability:{manual:1b}}}]}] run scoreboard players operation @s cd_dOff += @s cd_manualDamage
#mainhand
execute as @a[scores={cd_ufoas=1..},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{durability:{}}}}] run tag @s add durability_main
execute as @a[scores={cd_dMain=-1000..}] run function uses:main/check
execute as @a[tag=durability_main] run function uses:main/check

#offhand
execute as @a[scores={cd_ufoas=1..},nbt=!{SelectedItem:{id:"minecraft:warped_fungus_on_a_stick"}}] run tag @s add durability_off
execute as @a[scores={cd_dOff=-1000..}] run function uses:off/check
execute as @a[tag=durability_off] run function uses:off/check

scoreboard players reset @a[scores={cd_ufoas=1..}] cd_ufoas
scoreboard players reset @a[scores={cd_dMain=-1000..}] cd_dMain
scoreboard players reset @a[scores={cd_dOff=-1000..}] cd_dOff
scoreboard players reset @a[scores={cd_manualDamage=-1000..}] cd_manualDamage
#armor
execute as @a[scores={cd_dtaken=1..}] run function uses:armorcheck

#revoke
advancement revoke @a[advancements={uses:durability=true}] only uses:durability
advancement revoke @a[advancements={uses:inventory=true}] only uses:inventory
