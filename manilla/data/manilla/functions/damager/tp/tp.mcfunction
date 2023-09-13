execute on origin at @s run particle dust_color_transition 0.188 1.000 0.431 1.25 0.412 0.110 0.678 ~ ~ ~ 0.412 0.110 0.678 1 20 normal
execute on origin run tp @s ^ ^ ^
execute on origin at @s run particle dust_color_transition 0.412 0.110 0.678 1.25 0.188 1.000 0.431 ~ ~ ~ 0.412 0.110 0.678 1 20 normal
playsound minecraft:entity.enderman.teleport block @a ~ ~ ~
execute on origin if predicate manilla:damager/basic run function manilla:mana/remove {count:50}
execute on origin if predicate manilla:damager/advanced run function manilla:mana/remove {count:25}
execute on origin if predicate manilla:damager/elite run function manilla:mana/remove {count:5}
execute on origin run scoreboard players add @s cd_manualDamage 5
kill @s