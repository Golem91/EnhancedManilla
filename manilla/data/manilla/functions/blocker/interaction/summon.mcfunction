#summon interaction entity
execute align xyz run summon minecraft:interaction ~0.5 ~ ~0.5 {width:1.02f,height:1.02f,Passengers:[{id:"minecraft:arrow",NoGravity:1b,pickup:0b,damage:0,PierceLevel:100b,Silent:1b,crit:0b,Tags:["blocker","init"]}],Tags:["blocker"]}
#transfer UUID to arrow passenger
execute on origin run data modify entity @e[type=arrow,tag=init,limit=1] Owner set from entity @s UUID
#transfer enchantments
execute if entity @s[tag=silk_touch] run tag @e[type=arrow,tag=init,limit=1] add silk_touch
execute if entity @s[tag=fortunel] run tag @e[type=arrow,tag=init,limit=1] add fortunel
execute if entity @s[tag=fortunell] run tag @e[type=arrow,tag=init,limit=1] add fortunell
execute if entity @s[tag=fortunelll] run tag @e[type=arrow,tag=init,limit=1] add fortunelll
#transfer tiers
execute if entity @s[tag=basic] run tag @e[type=arrow,tag=init,limit=1] add basic
execute if entity @s[tag=advanced] run tag @e[type=arrow,tag=init,limit=1] add advanced
execute if entity @s[tag=elite] run tag @e[type=arrow,tag=init,limit=1] add elite
#init revoke
tag @e[type=arrow] remove init