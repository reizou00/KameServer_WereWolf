
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