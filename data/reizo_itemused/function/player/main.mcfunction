
# 使ってる？使ってない？どっちなんだい！
execute if score @s[scores={reizoTools.using=1..}] reizoTools.usend matches 0 run function reizo_itemused:relase_using

# クリックを離したな！
scoreboard players set @s reizoTools.usend 0
