#>placer
#spawn block placer
execute as @e[type=item,nbt={Item:{id:"minecraft:amethyst_block"}}] at @s positioned ~ ~ ~0.225 align xyz if block ~ ~ ~ minecraft:dispenser unless block ~ ~ ~ minecraft:dispenser{CustomName:'{"color":"#8800D6","text":"Block Placer"}'} positioned ~0.5 ~ ~0.5 run function manilla:placer/spawn
execute as @e[type=item,nbt={Item:{id:"minecraft:amethyst_block"}}] at @s positioned ~ ~ ~-0.225 align xyz if block ~ ~ ~ minecraft:dispenser unless block ~ ~ ~ minecraft:dispenser{CustomName:'{"color":"#8800D6","text":"Block Placer"}'} positioned ~0.5 ~ ~0.5 run function manilla:placer/spawn
execute as @e[type=item,nbt={Item:{id:"minecraft:amethyst_block"}}] at @s positioned ~ ~0.225 ~ align xyz if block ~ ~ ~ minecraft:dispenser unless block ~ ~ ~ minecraft:dispenser{CustomName:'{"color":"#8800D6","text":"Block Placer"}'} positioned ~0.5 ~ ~0.5 run function manilla:placer/spawn
execute as @e[type=item,nbt={Item:{id:"minecraft:amethyst_block"}}] at @s positioned ~ ~-0.225 ~ align xyz if block ~ ~ ~ minecraft:dispenser unless block ~ ~ ~ minecraft:dispenser{CustomName:'{"color":"#8800D6","text":"Block Placer"}'} positioned ~0.5 ~ ~0.5 run function manilla:placer/spawn
execute as @e[type=item,nbt={Item:{id:"minecraft:amethyst_block"}}] at @s positioned ~0.225 ~ ~ align xyz if block ~ ~ ~ minecraft:dispenser unless block ~ ~ ~ minecraft:dispenser{CustomName:'{"color":"#8800D6","text":"Block Placer"}'} positioned ~0.5 ~ ~0.5 run function manilla:placer/spawn
execute as @e[type=item,nbt={Item:{id:"minecraft:amethyst_block"}}] at @s positioned ~-0.225 ~ ~ align xyz if block ~ ~ ~ minecraft:dispenser unless block ~ ~ ~ minecraft:dispenser{CustomName:'{"color":"#8800D6","text":"Block Placer"}'} positioned ~0.5 ~ ~0.5 run function manilla:placer/spawn

#kill block placer
execute as @e[type=armor_stand,tag=placer] at @s unless block ~ ~ ~ minecraft:dispenser run function manilla:placer/kill

#detect trigger placer
execute as @e[type=armor_stand,tag=placer,tag=!drop] at @s if block ~ ~ ~ minecraft:dispenser[triggered=true,facing=north] if block ~ ~ ~-1 #manilla:airs run tag @s add drop
execute as @e[type=armor_stand,tag=placer,tag=!drop] at @s if block ~ ~ ~ minecraft:dispenser[triggered=true,facing=south] if block ~ ~ ~1 #manilla:airs run tag @s add drop
execute as @e[type=armor_stand,tag=placer,tag=!drop] at @s if block ~ ~ ~ minecraft:dispenser[triggered=true,facing=east] if block ~1 ~ ~ #manilla:airs run tag @s add drop
execute as @e[type=armor_stand,tag=placer,tag=!drop] at @s if block ~ ~ ~ minecraft:dispenser[triggered=true,facing=west] if block ~-1 ~ ~ #manilla:airs run tag @s add drop
execute as @e[type=armor_stand,tag=placer,tag=!drop] at @s if block ~ ~ ~ minecraft:dispenser[triggered=true,facing=up] if block ~ ~1 ~ #manilla:airs run tag @s add drop
execute as @e[type=armor_stand,tag=placer,tag=!drop] at @s if block ~ ~ ~ minecraft:dispenser[triggered=true,facing=down] if block ~ ~-1 ~ #manilla:airs run tag @s add drop
scoreboard players add @e[type=armor_stand,tag=drop] timer 1
execute as @e[type=armor_stand,tag=drop,scores={timer=5..}] at @s as @e[type=item,sort=nearest,limit=1,distance=..1.5] at @s run function manilla:placer/item_get
tag @e[type=armor_stand,tag=drop,scores={timer=5..}] remove drop
scoreboard players reset @e[type=armor_stand,tag=placer,scores={timer=5..}] timer

#>breaker
#spawn block breaker
execute as @e[type=item,nbt={Item:{id:"minecraft:amethyst_block"}}] at @s positioned ~ ~ ~0.225 align xyz if block ~ ~ ~ minecraft:observer positioned ~0.5 ~ ~0.5 unless entity @e[type=armor_stand,tag=breaker,limit=1,sort=nearest,distance=..0.5] run function manilla:breaker/spawn
execute as @e[type=item,nbt={Item:{id:"minecraft:amethyst_block"}}] at @s positioned ~ ~ ~-0.225 align xyz if block ~ ~ ~ minecraft:observer positioned ~0.5 ~ ~0.5 unless entity @e[type=armor_stand,tag=breaker,limit=1,sort=nearest,distance=..0.5] run function manilla:breaker/spawn
execute as @e[type=item,nbt={Item:{id:"minecraft:amethyst_block"}}] at @s positioned ~ ~0.225 ~ align xyz if block ~ ~ ~ minecraft:observer positioned ~0.5 ~ ~0.5 unless entity @e[type=armor_stand,tag=breaker,limit=1,sort=nearest,distance=..0.5] run function manilla:breaker/spawn
execute as @e[type=item,nbt={Item:{id:"minecraft:amethyst_block"}}] at @s positioned ~ ~-0.225 ~ align xyz if block ~ ~ ~ minecraft:observer positioned ~0.5 ~ ~0.5 unless entity @e[type=armor_stand,tag=breaker,limit=1,sort=nearest,distance=..0.5] run function manilla:breaker/spawn
execute as @e[type=item,nbt={Item:{id:"minecraft:amethyst_block"}}] at @s positioned ~0.225 ~ ~ align xyz if block ~ ~ ~ minecraft:observer positioned ~0.5 ~ ~0.5 unless entity @e[type=armor_stand,tag=breaker,limit=1,sort=nearest,distance=..0.5] run function manilla:breaker/spawn
execute as @e[type=item,nbt={Item:{id:"minecraft:amethyst_block"}}] at @s positioned ~-0.225 ~ ~ align xyz if block ~ ~ ~ minecraft:observer positioned ~0.5 ~ ~0.5 unless entity @e[type=armor_stand,tag=breaker,limit=1,sort=nearest,distance=..0.5] run function manilla:breaker/spawn

#kill block breaker
execute as @e[type=armor_stand,tag=breaker] at @s unless block ~ ~ ~ minecraft:observer run function manilla:breaker/kill

#detect trigger breaker
execute as @e[type=armor_stand,tag=breaker,tag=!break] at @s if block ~ ~ ~ minecraft:observer[facing=south] unless block ~ ~ ~1 #manilla:unbreakable run tag @s add break
execute as @e[type=armor_stand,tag=breaker,tag=!break] at @s if block ~ ~ ~ minecraft:observer[facing=north] unless block ~ ~ ~-1 #manilla:unbreakable run tag @s add break
execute as @e[type=armor_stand,tag=breaker,tag=!break] at @s if block ~ ~ ~ minecraft:observer[facing=east] unless block ~1 ~ ~ #manilla:unbreakable run tag @s add break
execute as @e[type=armor_stand,tag=breaker,tag=!break] at @s if block ~ ~ ~ minecraft:observer[facing=west] unless block ~-1 ~ ~ #manilla:unbreakable run tag @s add break
execute as @e[type=armor_stand,tag=breaker,tag=!break] at @s if block ~ ~ ~ minecraft:observer[facing=up] unless block ~ ~1 ~ #manilla:unbreakable run tag @s add break
execute as @e[type=armor_stand,tag=breaker,tag=!break] at @s if block ~ ~ ~ minecraft:observer[facing=down] unless block ~ ~-1 ~ #manilla:unbreakable run tag @s add break
scoreboard players add @e[type=armor_stand,tag=break] timer 1
execute as @e[type=armor_stand,tag=break,scores={timer=40..}] at @s run function manilla:breaker/break

#>fabricator
#spawn fabricator
execute as @e[type=item,nbt={Item:{id:"minecraft:amethyst_block"}}] at @s positioned ~ ~ ~0.225 align xyz if block ~ ~ ~ minecraft:stonecutter positioned ~0.5 ~ ~0.5 unless entity @e[type=armor_stand,tag=fabricator,limit=1,sort=nearest,distance=..0.5] run function manilla:fabricator/spawn
execute as @e[type=item,nbt={Item:{id:"minecraft:amethyst_block"}}] at @s positioned ~ ~ ~-0.225 align xyz if block ~ ~ ~ minecraft:stonecutter positioned ~0.5 ~ ~0.5 unless entity @e[type=armor_stand,tag=fabricator,limit=1,sort=nearest,distance=..0.5] run function manilla:fabricator/spawn
execute as @e[type=item,nbt={Item:{id:"minecraft:amethyst_block"}}] at @s positioned ~ ~0.225 ~ align xyz if block ~ ~ ~ minecraft:stonecutter positioned ~0.5 ~ ~0.5 unless entity @e[type=armor_stand,tag=fabricator,limit=1,sort=nearest,distance=..0.5] run function manilla:fabricator/spawn
execute as @e[type=item,nbt={Item:{id:"minecraft:amethyst_block"}}] at @s positioned ~ ~-0.225 ~ align xyz if block ~ ~ ~ minecraft:stonecutter positioned ~0.5 ~ ~0.5 unless entity @e[type=armor_stand,tag=fabricator,limit=1,sort=nearest,distance=..0.5] run function manilla:fabricator/spawn
execute as @e[type=item,nbt={Item:{id:"minecraft:amethyst_block"}}] at @s positioned ~ ~0.475 ~ align xyz if block ~ ~ ~ minecraft:stonecutter positioned ~0.5 ~ ~0.5 unless entity @e[type=armor_stand,tag=fabricator,limit=1,sort=nearest,distance=..0.5] run function manilla:fabricator/spawn
execute as @e[type=item,nbt={Item:{id:"minecraft:amethyst_block"}}] at @s positioned ~-0.225 ~ ~ align xyz if block ~ ~ ~ minecraft:stonecutter positioned ~0.5 ~ ~0.5 unless entity @e[type=armor_stand,tag=fabricator,limit=1,sort=nearest,distance=..0.5] run function manilla:fabricator/spawn

#kill fabricator
execute as @e[type=armor_stand,tag=fabricator] at @s unless block ~ ~ ~ minecraft:stonecutter run function manilla:fabricator/kill

#detect trigger fabricator
execute as @e[type=armor_stand,tag=fabricator,tag=!fabricate] at @s positioned ~ ~1 ~ if block ~ ~ ~ #manilla:logs run tag @s add fabricate
execute as @e[type=armor_stand,tag=fabricator,tag=!fabricate] at @s positioned ~ ~1 ~ if block ~ ~ ~ #manilla:stripped_logs if block ~ ~1 ~ #manilla:airs if block ~ ~2 ~ #manilla:airs if block ~ ~3 ~ #manilla:airs run tag @s add fabricate
execute as @e[type=armor_stand,tag=fabricator,tag=!fabricate] at @s positioned ~ ~1 ~ if block ~ ~ ~ #manilla:planks if block ~ ~1 ~ #manilla:airs run tag @s add fabricate
scoreboard players add @e[type=armor_stand,tag=fabricate] timer 1
execute as @e[type=armor_stand,tag=fabricate,scores={timer=40..}] at @s positioned ~ ~1 ~ run function manilla:fabricator/getblock
#reset timer if area is occupied
execute as @e[type=armor_stand,tag=fabricate] at @s positioned ~ ~1 ~ if block ~ ~ ~ #manilla:stripped_logs unless block ~ ~1 ~ #manilla:airs unless block ~ ~2 ~ #manilla:airs unless block ~ ~3 ~ #manilla:airs run function manilla:fabricator/cancel_planks
execute as @e[type=armor_stand,tag=fabricate] at @s positioned ~ ~1 ~ if block ~ ~ ~ #manilla:planks unless block ~ ~1 ~ #manilla:airs run function manilla:fabricator/cancel_slabs

#>new player health set
execute as @a[tag=!initd] run attribute @s generic.max_health base set 6
tag @a[tag=!initd] add initd

#>health containers
execute as @a run function manilla:healthcont/cont_set

#>mana
execute as @a run function manilla:mana/manabar
#set creative players mana to max
scoreboard players set @a[gamemode=creative] mana 1000

#>raycasting blocker
#summon raycast entity (arrow)
execute as @a[predicate=manilla:click,predicate=manilla:breaker_basic,predicate=manilla:breaker_basic_mana] at @s run function manilla:blocker/init
execute as @a[predicate=manilla:click,predicate=manilla:breaker_advanced,predicate=manilla:breaker_advanced_mana] at @s run function manilla:blocker/init
execute as @a[predicate=manilla:click,predicate=manilla:breaker_elite,predicate=manilla:breaker_elite_mana] at @s run function manilla:blocker/init
#summon interactions a.s.o.
execute as @e[tag=inGround] at @s run function manilla:blocker/inblock
#detect raycast entity block hit (inGround:1b)
execute as @e[type=arrow,tag=blocker,tag=ray,tag=!inGround,nbt={inGround:1b}] at @s run function manilla:blocker/inblock_rotate
#failed to execute of too less mana
execute as @a[predicate=manilla:click,predicate=manilla:breaker_basic,predicate=!manilla:breaker_basic_mana] at @s run playsound minecraft:entity.skeleton.step block @s ~ ~ ~
execute as @a[predicate=manilla:click,predicate=manilla:breaker_advanced,predicate=!manilla:breaker_advanced_mana] at @s run playsound minecraft:entity.skeleton.step block @s ~ ~ ~
execute as @a[predicate=manilla:click,predicate=manilla:breaker_elite,predicate=!manilla:breaker_elite_mana] at @s run playsound minecraft:entity.skeleton.step block @s ~ ~ ~
#not selected detection
execute as @a[predicate=!manilla:breaker_basic,predicate=!manilla:breaker_advanced,predicate=!manilla:breaker_elite] run function manilla:blocker/unselect
#break block detection
execute as @e[type=minecraft:interaction,nbt={attack:{}}] at @s run function manilla:blocker/leftclick
#modify block detection
execute as @e[type=minecraft:interaction,nbt={interaction:{}}] at @s run function manilla:blocker/rightclick
#display particles at selected block location
execute as @e[type=interaction,tag=blocker] unless score @s count matches 0.. unless score @s count matches ..0 run scoreboard players set @s count 0
execute as @e[type=interaction,tag=blocker] at @s if score @s count matches 0 run function manilla:blocker/particle {color:"0.533 0.000 0.839"}
execute as @e[type=interaction,tag=blocker] at @s if score @s count matches 1 run function manilla:blocker/particle {color:"0.839 0 0.796"}
execute as @e[type=interaction,tag=blocker] at @s if score @s count matches 2 run function manilla:blocker/particle {color:"0.839 0 0.349"}
execute as @e[type=interaction,tag=blocker] at @s if score @s count matches 3 run function manilla:blocker/particle {color:"0.839 0 0"}
#particles!!!
execute as @e[type=arrow,tag=!blocker] at @s run particle minecraft:dust 0.533 0.000 0.839 0.3 ~ ~ ~ 0 0 0 1 10
execute as @e[type=arrow,tag=blocker,tag=ray] at @s run particle minecraft:dust 0.533 0.000 0.839 0.3 ~ ~ ~ 0 0 0 1 10 normal

#reset click
scoreboard players reset @a click

execute as @a[nbt=!{Inventory:[{Slot:103b,tag:{HideFlags:2}}]}] run item modify entity @a armor.head manilla:disable_armor
execute as @a[nbt=!{Inventory:[{Slot:102b,tag:{HideFlags:2}}]}] run item modify entity @a armor.chest manilla:disable_armor
execute as @a[nbt=!{Inventory:[{Slot:101b,tag:{HideFlags:2}}]}] run item modify entity @a armor.legs manilla:disable_armor
execute as @a[nbt=!{Inventory:[{Slot:100b,tag:{HideFlags:2}}]}] run item modify entity @a armor.feet manilla:disable_armor

execute as @e[type=arrow,tag=!ray,tag=blocker] run data merge entity @s {life:0}