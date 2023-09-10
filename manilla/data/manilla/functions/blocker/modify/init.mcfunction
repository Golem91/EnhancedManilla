$execute as @e[tag=blocker,type=interaction,nbt={Passengers:[{Owner:$(UUID)}]}] at @s run function manilla:blocker/modify/execute
#count the number of valid blocks to be modified
scoreboard players reset @a number
$execute as @e[tag=blocker,type=interaction,nbt={Passengers:[{Owner:$(UUID)}]}] on passengers on origin run scoreboard players add @s number 1