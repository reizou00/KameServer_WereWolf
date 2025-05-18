
# スコア作成
scoreboard objectives add KameSrever_WereWolf.CoolTime dummy
scoreboard objectives add KameSrever_WereWolf.Roll dummy
scoreboard objectives add KameSrever_WereWolf.Roll_Onlyonce_WereWolf dummy
scoreboard objectives add KameSrever_WereWolf.Roll_Onlyonce_Citizen dummy

# ライブラリ呼び出し
function reizo_itemused:reload

tellraw @a "DataPack導入完了。"