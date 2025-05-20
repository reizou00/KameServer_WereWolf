
#> ジョブの数を反映
    # 市民の人数を計算
    execute \
    store result score $Citizen KameSrever_WereWolf.Roll \
    if entity @e[tag=KameServer_WereWolf.Job_Citizen]
    # 人狼の数を計算
    execute \
    store result score $WereWolf KameSrever_WereWolf.Roll \
    if entity @e[tag=KameServer_WereWolf.Job_WereWolf]

#> 人狼がnowの設定数人より多かったり少なかったりすると困るので...
function kame_werewolf:system/limit/main with storage kame_werewolf:macros