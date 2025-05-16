
#> ライブラリの呼び出し
function sid:player/main

#> ジョブごとの動作
    # 人狼
    execute at @s[tag=KameServer_WereWolf.Job_WereWolf] run function kame_werewolf:player/job/werewolf/main


# !:絶対にresetは一番下に置くこと
#> data君たちお疲れ様!また頑張ってくれ!
function sid:player/reset
