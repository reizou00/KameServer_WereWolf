
# テスト文
tellraw @s "roll_job/init処理"

# 人狼と市民の数を計算するスコアを0に設定する。
scoreboard players set $Citizen KameSrever_WereWolf.Roll 0
scoreboard players set $WereWolf KameSrever_WereWolf.Roll 0