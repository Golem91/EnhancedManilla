data modify storage manilla:uuid UUID set from entity @s UUID
#set tags
function manilla:blocker/mana/settag with storage manilla:uuid
#count interactions
function manilla:blocker/interaction/count with storage manilla:uuid
#regrant mana
function manilla:blocker/mana/revoke
#kill interactions
function manilla:blocker/interaction/kill with storage manilla:uuid
#tag reset
tag @s remove basic
tag @s remove advanced
tag @s remove elite