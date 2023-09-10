scoreboard objectives add timer dummy
scoreboard objectives add health dummy
scoreboard objectives add count dummy
scoreboard objectives add number dummy
scoreboard objectives add distance dummy
scoreboard objectives add operation dummy
scoreboard objectives add operation1 dummy

scoreboard objectives add click minecraft.used:minecraft.warped_fungus_on_a_stick

scoreboard objectives add PosX dummy
scoreboard objectives add PosY dummy
scoreboard objectives add PosZ dummy
scoreboard objectives add RotX dummy
scoreboard objectives add RotY dummy
scoreboard objectives add RotCorX dummy
scoreboard objectives add RotCorY dummy

scoreboard players set ?RotCorr RotCorX -1
scoreboard players set ?RotCorr RotCorY -1

#inventory container systems
scoreboard objectives add h_container dummy
scoreboard objectives add h_contfinal dummy
scoreboard objectives add mana dummy

#>un-/schedule mana refill function
schedule clear manilla:mana/fill
schedule function manilla:mana/fill 10t