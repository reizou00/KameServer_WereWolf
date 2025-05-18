
# しゃがんでいないなら...
execute \
unless predicate debug:detection/jump run \
function debug:player/item/roll_tool/sneak/unless

# しゃがんでいるなら...
execute \
if predicate debug:detection/sneak run \
function debug:player/item/roll_tool/sneak/if

# 使ったな！
execute \
at @s[scores={reizo_itemused.using=1..}] run \
function debug:player/item/roll_tool/using