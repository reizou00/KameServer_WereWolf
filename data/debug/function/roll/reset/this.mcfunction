
# スコアリセット
scoreboard players reset @s KameSrever_WereWolf.Roll
scoreboard players reset @s KameSrever_WereWolf.Roll_Onlyonce_Citizen
scoreboard players reset @s KameSrever_WereWolf.Roll_Onlyonce_WereWolf

# Tagリセット
tag @s remove KameServer_WereWolf.Rolled
tag @s remove KameServer_WereWolf.Job_Citizen
tag @s remove KameServer_WereWolf.Job_WereWolf

#> 演出も付けよう。
    # 音が必要
    playsound entity.ender_dragon.flap master @s ~ ~ ~ 1 0.5
    # particleのや～つ。
    particle minecraft:dust{color:[0.5,0.5,0.5],scale:1} ~ ~1 ~ 0.3 0.5 0.3 0 10 normal @s
    particle minecraft:entity_effect{color:[0.5, 0.5, 0.5, 1.0]} ~ ~1 ~ 0.3 0.5 0.3 0 10 normal @s