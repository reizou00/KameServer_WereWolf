
# Tagの付与
tag @s add KameServer_WereWolf.Job_WereWolf

# 人狼の人数を計算
execute \
store result score $WereWolf KameSrever_WereWolf.Roll \
if entity @a[tag=KameServer_WereWolf.Job_WereWolf]

execute \
unless score $WereWolf KameSrever_WereWolf.Roll matches 1 run \
function kame_werewolf:system/start/job_roll/error

# まだset_upされていないときにOnlyonceを1にセット、これがset_upにつながるため数を変えてはいけない。
execute \
unless score @s KameSrever_WereWolf.Roll_Onlyonce_WereWolf matches 2 run \
scoreboard players set @s KameSrever_WereWolf.Roll_Onlyonce_WereWolf 1