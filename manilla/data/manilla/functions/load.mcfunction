scoreboard objectives add timer dummy
scoreboard objectives add health dummy
scoreboard objectives add count dummy
scoreboard objectives add distance dummy
scoreboard objectives add operation dummy
scoreboard objectives add operation1 dummy

scoreboard objectives add click minecraft.used:minecraft.warped_fungus_on_a_stick

#inventory container systems
scoreboard objectives add h_container dummy
scoreboard objectives add h_contfinal dummy
scoreboard objectives add mana dummy

#team setup
team add nocram
team modify nocram collisionRule never
team modify nocram color dark_purple

#>un-/schedule mana refill function
schedule clear manilla:mana/fill
schedule function manilla:mana/fill 10t