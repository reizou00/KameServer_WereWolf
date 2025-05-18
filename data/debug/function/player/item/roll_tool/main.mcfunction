
# しゃがんでいないなら...
execute \
unless predicate debug:detection/jump run \
function debug:player/item/roll_tool/unless_sneak


# しゃがんでいるなら自分対象。
execute \
if predicate debug:detection/sneak run \
tag @s add reizoDebugTag.Approve_Roll