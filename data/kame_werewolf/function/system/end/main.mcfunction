
#> Tag消去
    tag @s remove KameServer_WereWolf.Job_Citizen
    tag @s remove KameServer_WereWolf.Job_WereWolf
    tag @s remove KameServer_WereWolf.Rolled

#> スコアリセット
    scoreboard players reset $Citizen
    scoreboard players reset $WereWolf
    scoreboard players reset @s KameSrever_WereWolf.Roll
    scoreboard players reset @s KameSrever_WereWolf.Roll_Onlyonce_Citizen
    scoreboard players reset @s KameSrever_WereWolf.Roll_Onlyonce_WereWolf

#> storageリセット
data remove storage kame_werewolf:init job_roll