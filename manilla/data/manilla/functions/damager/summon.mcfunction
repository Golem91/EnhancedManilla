kill @e[tag=damager,tag=ray]
summon minecraft:marker ~ ~ ~ {Tags:["direction"]}
execute as @e[tag=direction] positioned 0.0 0.0 0.0 run function manilla:damager/get_position
execute anchored eyes run summon minecraft:arrow ^ ^ ^0.5 {Tags:["damager","init","ray"],NoGravity:1b,Silent:1b,pickup:0b}

data modify entity @e[type=arrow,tag=init,limit=1] Motion.[0] set from storage manilla:direction PosX
data modify entity @e[type=arrow,tag=init,limit=1] Motion.[1] set from storage manilla:direction PosY
data modify entity @e[type=arrow,tag=init,limit=1] Motion.[2] set from storage manilla:direction PosZ

data modify entity @e[type=arrow,tag=init,limit=1] Owner set from entity @s UUID

execute if predicate manilla:damager/basic run data merge entity @e[type=arrow,tag=init,limit=1] {damage:6}
execute if predicate manilla:damager/advanced run data merge entity @e[type=arrow,tag=init,limit=1] {damage:8}
execute if predicate manilla:damager/elite run data merge entity @e[type=arrow,tag=init,limit=1] {damage:15}

tag @e[type=arrow,tag=init,limit=1] remove init

execute if predicate manilla:damager/basic run function manilla:mana/remove {count:25}
execute if predicate manilla:damager/advanced run function manilla:mana/remove {count:15}
execute if predicate manilla:damager/elite run function manilla:mana/remove {count:1}

scoreboard players add @s cd_manualDamage 1
playsound minecraft:entity.witch.throw block @s ~ ~ ~