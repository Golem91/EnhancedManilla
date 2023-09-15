#get Owner UUID
data modify storage manilla:uuid UUID set from entity @s Owner
#give owner tier tag
execute if entity @s[tag=basic] on origin run tag @s add basic
execute if entity @s[tag=advanced] on origin run tag @s add advanced
execute if entity @s[tag=elite] on origin run tag @s add elite
#revoke mana
#execute on origin unless predicate manilla:sneaking run function manilla:blocker/interaction/count with storage manilla:uuid
#execute on origin unless predicate manilla:sneaking run function manilla:blocker/mana/revoke
#kill interaction if Owner is not sneaking
#execute on origin unless predicate manilla:sneaking run function manilla:blocker/interaction/kill with storage manilla:uuid
#get number of interaction entities
function manilla:blocker/interaction/count with storage manilla:uuid
#execute to specific counts
execute positioned ^ ^ ^0.06 align xyz positioned ~0.5 ~ ~0.5 unless entity @e[type=interaction,tag=blocker,distance=..0.5] unless block ~ ~ ~ #manilla:unbreakable if score @s count matches ..9 if entity @s[tag=basic] run tag @s add able
execute positioned ^ ^ ^0.06 align xyz positioned ~0.5 ~ ~0.5 unless entity @e[type=interaction,tag=blocker,distance=..0.5] unless block ~ ~ ~ #manilla:unbreakable if score @s count matches ..24 if entity @s[tag=advanced] run tag @s add able
execute positioned ^ ^ ^0.06 align xyz positioned ~0.5 ~ ~0.5 unless entity @e[type=interaction,tag=blocker,distance=..0.5] unless block ~ ~ ~ #manilla:unbreakable if score @s count matches ..49 if entity @s[tag=elite] run tag @s add able
#remove mana
execute if entity @s[tag=able] positioned ^ ^ ^0.06 align xyz run function manilla:blocker/interaction/summon
execute if entity @s[tag=able,tag=basic] on origin run function manilla:blocker/mana/remove {count:50}
execute if entity @s[tag=able,tag=advanced] on origin run function manilla:blocker/mana/remove {count:20}
execute if entity @s[tag=able,tag=elite] on origin run function manilla:blocker/mana/remove {count:1}
#positive feedback
execute if entity @s[tag=able] run playsound minecraft:entity.item_frame.remove_item block @a ~ ~ ~
#negative feedback
execute unless entity @s[tag=able] run playsound minecraft:entity.skeleton.step block @a ~ ~ ~
#kill raycast entity
kill @s

tag @a remove basic
tag @a remove advanced
tag @a remove elite