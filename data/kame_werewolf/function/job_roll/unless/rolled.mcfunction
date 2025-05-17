
# 最初はみんな0
scoreboard players set @s KameSrever_WereWolf.Roll 0

# ロールしよう
execute \
unless score $WereWolf KameSrever_WereWolf.Roll matches 2 \
store result score @s KameSrever_WereWolf.Roll run \
random value 1..2

# スコアが2ではないなら...
execute \
unless score $WereWolf KameSrever_WereWolf.Roll matches 2 run \
function kame_werewolf:job_roll/unless/werewolf

# 市民の数を...
execute \
if score @s KameSrever_WereWolf.Roll matches 1 run \
scoreboard players add $Citizen KameSrever_WereWolf.Roll 1