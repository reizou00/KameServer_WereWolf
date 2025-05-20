#> スコアでエラー検知
    # エラー
    execute \
    if score $WereWolf KameSrever_WereWolf.Roll matches ..1 run \
    data merge storage kame_werewolf:system {Error:true}
    # 成功
    execute \
    if score $WereWolf KameSrever_WereWolf.Roll matches 2 run \
    data merge storage kame_werewolf:system {Error:false}