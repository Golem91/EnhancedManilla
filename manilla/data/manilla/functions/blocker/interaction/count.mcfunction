#reset count
scoreboard players set @s count 0
scoreboard players set @s ccount 0
#add 1 to count for every arrow with said Owner UUID
$execute at @e[tag=blocker,type=arrow,tag=!ray,nbt={Owner:$(UUID)}] run scoreboard players add @s count 1
$execute at @e[tag=blocker,type=interaction,nbt={Passengers:[{Owner:$(UUID)}]},tag=!used] run scoreboard players add @s ccount 1