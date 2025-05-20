
# reizo:内心笑ってたのか。\
        (今の僕のitigに対する言葉なんで気にすんな、次のバージョンにはこのコメント消しとくよ。)

#> init処理
    # trueではないことを願う。
    execute \
    unless data storage kameserever_werewolf:init \
    {\
    job_roll:true\
    } run \
    function kame_werewolf:system/start/job_roll/init
    # もう一度実行しないように、trueにする。
    data merge storage kameserever_werewolf:init \
    {\
    job_roll:true\
    }


# まだロールしてない人対象
execute \
at @s[tag=!KameServer_WereWolf.Rolled] run \
function kame_werewolf:system/start/job_roll/unless_rolled with storage kameserever_werewolf:macros

# ロール済み、ゲーム終了後に外すこと。
tag @s add KameServer_WereWolf.Rolled

#> 役職の定義
    # 人狼最初に人狼を置いとかないとエラー処理が出来ない。
    execute \
    as @a[scores={KameSrever_WereWolf.Roll=2}] at @s run \
    function kame_werewolf:system/start/job_roll/set_job/werewolf with storage kameserever_werewolf:macros
    # 市民
    execute \
    at @s[scores={KameSrever_WereWolf.Roll=0..1}] run \
    function kame_werewolf:system/start/job_roll/set_job/citizen