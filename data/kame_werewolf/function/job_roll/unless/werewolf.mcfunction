
#> 人狼と市民の数を計算
    # 人狼
    execute \
    if score @s[tag=!KameServer_WereWolf.Rolled] KameSrever_WereWolf.Roll matches 2 run \
    scoreboard players add $WereWolf KameSrever_WereWolf.Roll 1
    # 市民
    execute \
    if score @s[tag=!KameServer_WereWolf.Rolled] KameSrever_WereWolf.Roll matches 1 run \
    scoreboard players add $Citizen KameSrever_WereWolf.Roll 1