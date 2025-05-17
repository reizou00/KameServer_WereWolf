
# まだロールしてない人対象
execute \
at @s[tag=!KameServer_WereWolf.Rolled] run \
function kame_werewolf:job_roll/unless/rolled

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