
# 最初はみんな0
scoreboard players set @s KameSrever_WereWolf.Roll 0
scoreboard players set @s KameSrever_WereWolf.Roll_Onlyonce_Citizen 0
scoreboard players set @s KameSrever_WereWolf.Roll_Onlyonce_WereWolf 0

# ロールしよう
$execute \
unless score $WereWolf KameSrever_WereWolf.Roll matches $(now) \
store result score @s KameSrever_WereWolf.Roll run \
random value 1..2

#> 役職の定義
    # 人狼最初に人狼を置いとかないとエラー処理が出来ない。
    execute \
    at @s[scores={KameSrever_WereWolf.Roll=2}] run \
    function kame_werewolf:system/start/job_roll/set_job/werewolf
    # 市民
    execute \
    at @s[scores={KameSrever_WereWolf.Roll=0..1}] run \
    function kame_werewolf:system/start/job_roll/set_job/citizen