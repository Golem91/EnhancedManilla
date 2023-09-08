scoreboard players add @a[tag=refill,predicate=!manilla:fullmana] mana 50
tag @a[predicate=manilla:fullmana] remove refill

scoreboard players set @a[scores={mana=1001..}] mana 1000

#>reschedule function
schedule function manilla:mana/fill 10t