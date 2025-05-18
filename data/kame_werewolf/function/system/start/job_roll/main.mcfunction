
# まだロールしてない人対象
execute \
at @s[tag=!KameServer_WereWolf.Rolled] run \
function kame_werewolf:system/start/job_roll/unless_rolled

# ロール済み、ゲーム終了後に外すこと。
tag @s add KameServer_WereWolf.Rolled

#> Tag付け
    # 人狼
    execute \
    as @a[scores={KameSrever_WereWolf.Roll=2}] at @s run \
    tag @s add KameServer_WereWolf.Job_WereWolf
    # 市民
    execute \
    as @a[scores={KameSrever_WereWolf.Roll=0..1}] at @s run \
    tag @s add KameServer_WereWolf.Job_Citizen

#> 人狼と市民の数を計算
    # 人狼
    execute \
    store result score $WereWolf KameSrever_WereWolf.Roll \
    at @s[tag=KameServer_WereWolf.Job_WereWolf] run \
    scoreboard players set @s KameSrever_WereWolf.Roll_Onlyonce_WereWolf 1
    # 市民
    execute \
    store result score $Citizen KameSrever_WereWolf.Roll \
    at @s[tag=KameServer_WereWolf.Job_Citizen] run \
    scoreboard players set @s KameSrever_WereWolf.Roll_Onlyonce_Citizen 1