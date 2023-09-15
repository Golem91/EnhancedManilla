$execute as @e[tag=blocker,type=interaction,nbt={Passengers:[{Owner:$(UUID)}]}] at @s run kill @e[type=item_display,distance=..0.5,tag=blocker]
$kill @e[tag=blocker,type=interaction,nbt={Passengers:[{Owner:$(UUID)}]}]
$kill @e[tag=blocker,type=arrow,tag=!ray,nbt={Owner:$(UUID)}]
