$execute if entity @e[tag=blocker,tag=!ray,type=arrow,nbt={Owner:$(UUID)},tag=basic] run tag @s add basic
$execute if entity @e[tag=blocker,tag=!ray,type=arrow,nbt={Owner:$(UUID)},tag=advanced] run tag @s add advanced
$execute if entity @e[tag=blocker,tag=!ray,type=arrow,nbt={Owner:$(UUID)},tag=elite] run tag @s add elite