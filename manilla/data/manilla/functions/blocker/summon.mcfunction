execute anchored eyes run summon minecraft:arrow ^ ^ ^0.5 {NoGravity:1b,Silent:1b,pickup:0b,damage:0d,shake:0b,crit:0b,PierceLevel:100b,Tags:["blocker","init","ray"]}
#execute anchored eyes run tp @e[tag=ray,tag=init,tag=blocker] ^ ^ ^ ~ ~
#set owner UUID
data modify entity @e[type=arrow,tag=init,limit=1] Owner set from entity @s UUID
#set motion of arrow
data modify entity @e[type=arrow,tag=init,limit=1] Motion.[0] set from storage manilla:direction PosX
data modify entity @e[type=arrow,tag=init,limit=1] Motion.[1] set from storage manilla:direction PosY
data modify entity @e[type=arrow,tag=init,limit=1] Motion.[2] set from storage manilla:direction PosZ

#get enchantments
execute if entity @s[predicate=manilla:silk_touch] as @e[type=arrow,tag=init] run tag @s add silk_touch
execute if entity @s[predicate=manilla:fortunel] as @e[type=arrow,tag=init] run tag @s add fortunel
execute if entity @s[predicate=manilla:fortunell] as @e[type=arrow,tag=init] run tag @s add fortunell
execute if entity @s[predicate=manilla:fortunelll] as @e[type=arrow,tag=init] run tag @s add fortunelll
#get tier
execute if entity @s[predicate=manilla:breaker_basic] as @e[type=arrow,tag=init] run tag @s add basic
execute if entity @s[predicate=manilla:breaker_advanced] as @e[type=arrow,tag=init] run tag @s add advanced
execute if entity @s[predicate=manilla:breaker_elite] as @e[type=arrow,tag=init] run tag @s add elite
#remove init tag
tag @e[tag=blocker,tag=init,tag=ray] remove init