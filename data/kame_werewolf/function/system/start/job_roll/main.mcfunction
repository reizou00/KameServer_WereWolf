
#> init処理
    # trueではないことを願う。
    execute \
    unless data storage kamewerewolf:init \
    {\
    job_roll:true\
    } run \
    function kame_werewolf:system/start/job_roll/init
    # もう一度実行しないように、trueにする。
    data merge storage kamewerewolf:init \
    {\
    job_roll:true\
    }


# まだロールしてない人対象
execute \
at @s[tag=!KameServer_WereWolf.Rolled] run \
function kame_werewolf:system/start/job_roll/unless_rolled with storage kamewerewolf:macros

# ロール済み、ゲーム終了後に外すこと。
tag @s add KameServer_WereWolf.Rolled