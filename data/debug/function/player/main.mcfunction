
#> デバッガーは前役職を持っている。
    # 人狼
    tag @s add KameServer_WereWolf.Job_WereWolf
    # お前...人ぶっ殺しソード持ってるな！
    execute \
    if data storage reizo_sid:item \
    {\
    Hand:{\
        Both:"WereWolf_Tool"\
        }\
    } run \
    function debug:player/werewolf_tool/main
    # 市民
    tag @s add KameServer_WereWolf.Job_Citizen