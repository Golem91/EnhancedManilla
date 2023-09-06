execute as @e[type=slime,tag=marker] at @s unless block ~ ~ ~ #manilla:unbreakable run setblock ~ ~ ~ air destroy
playsound block.amethyst_block.break block @a ~ ~ ~ 3
execute as @e[type=slime,tag=marker] at @s run tp @s ~ -100 ~