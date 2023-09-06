scoreboard players add @a[tag=refill,predicate=!manilla:fullmana] mana 1
tag @a[predicate=manilla:fullmana] remove refill

#>reschedule function
schedule function manilla:mana/fill 10t