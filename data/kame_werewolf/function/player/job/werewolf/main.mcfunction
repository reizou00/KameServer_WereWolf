
# 使ったな！
execute at @s[tag=KameServer_WereWolf.Job_WereWolf_Used] run \
function kame_werewolf:player/job/werewolf/used/main

# 戻しとこうか。
execute \
if score @s KameSrever_WereWolf.CoolTime matches 0 run \
function kame_werewolf:player/job/werewolf/used/final