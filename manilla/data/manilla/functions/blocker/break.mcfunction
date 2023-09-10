#break block at interactions
$execute on passengers if entity @s[tag=silk_touch] as @e[type=interaction,tag=blocker,nbt={Passengers:[{Owner:$(UUID)}]}] at @s unless block ~ ~ ~ #manilla:unbreakable run function manilla:blocker/break/silk_touch
$execute on passengers if entity @s[tag=fortunel] as @e[type=interaction,tag=blocker,nbt={Passengers:[{Owner:$(UUID)}]}] at @s unless block ~ ~ ~ #manilla:unbreakable run function manilla:blocker/break/fortunel
$execute on passengers if entity @s[tag=fortunell] as @e[type=interaction,tag=blocker,nbt={Passengers:[{Owner:$(UUID)}]}] at @s unless block ~ ~ ~ #manilla:unbreakable run function manilla:blocker/break/fortunell
$execute on passengers if entity @s[tag=fortunell] as @e[type=interaction,tag=blocker,nbt={Passengers:[{Owner:$(UUID)}]}] at @s unless block ~ ~ ~ #manilla:unbreakable run function manilla:blocker/break/fortunelll
$execute on passengers unless entity @s[tag=fortunel,tag=fortunell,tag=fortunelll] as @e[type=interaction,tag=blocker,nbt={Passengers:[{Owner:$(UUID)}]}] at @s unless block ~ ~ ~ #manilla:unbreakable run function manilla:blocker/break/normal
#damage shit
execute on passengers on origin run function manilla:blocker/damage
#kill interactions and arrows
function manilla:blocker/interaction/kill with storage manilla:interaction
#playsound to make it pretty
playsound block.amethyst_block.break block @a ~ ~ ~ 3