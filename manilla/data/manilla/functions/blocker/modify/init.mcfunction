scoreboard players reset @a number
#count the number of valid blocks to be modified
$execute as @e[tag=blocker,type=interaction,nbt={Passengers:[{Owner:$(UUID)}]}] at @s if block ~ ~ ~ #manilla:modify/modifiable on passengers on origin run scoreboard players add @s number 1
#execute on passengers on origin run tellraw @a {"score":{"objective": "number","name": "@s"}}
#modify blocks
$execute as @e[tag=blocker,type=interaction,nbt={Passengers:[{Owner:$(UUID)}]}] at @s if block ~ ~ ~ #manilla:modify/modifiable run function manilla:blocker/modify/execute