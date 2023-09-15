kill @e[tag=bleaker,tag=ray]
summon minecraft:marker ~ ~ ~ {Tags:["direction"]}
execute as @e[tag=direction] positioned 0.0 0.0 0.0 run function manilla:damager/get_position
execute anchored eyes run summon minecraft:arrow ^ ^ ^0.5 {Tags:["bleaker","init","ray"],NoGravity:1b,Silent:1b,pickup:0b,damage:0}

data modify entity @e[type=arrow,tag=init,limit=1] Motion.[0] set from storage manilla:direction PosX
data modify entity @e[type=arrow,tag=init,limit=1] Motion.[1] set from storage manilla:direction PosY
data modify entity @e[type=arrow,tag=init,limit=1] Motion.[2] set from storage manilla:direction PosZ

data modify entity @e[type=arrow,tag=init,limit=1] Owner set from entity @s UUID

tag @e[type=arrow,tag=init,limit=1] remove init

scoreboard players add @s cd_manualDamage 1
playsound minecraft:entity.witch.throw block @s ~ ~ ~