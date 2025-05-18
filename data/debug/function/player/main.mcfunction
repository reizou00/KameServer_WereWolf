
#> デバッガーは前役職を持っている。
    # 人狼
    tag @s add KameServer_WereWolf.Job_WereWolf
    # アイテム検知
        # お前...人ぶっ殺しソード持ってるな！
        execute \
        if data storage reizo_sid:item \
        {\
        Hand:{\
            Both:"WereWolf_Tool"\
            }\
        } run \
        function debug:player/item/werewolf_tool/main
        
        # お前は、デバッグ用のアイテムの...ロールツールだな。
            # 持ってる
            execute \
            if data storage reizo_sid:item \
            {\
            Hand:\
                {\
                Both:"Debug.Rool_Tool"\
                }\
            } run \
            function debug:player/item/roll_tool/main
            # 持ってない
            execute \
            unless data storage reizo_sid:item \
            {\
            Hand:\
                {\
                Both:"Debug.Rool_Tool"\
                }\
            } run \
            tag @a remove reizoDebugTag.Approve_Roll

    # 市民
    tag @s add KameServer_WereWolf.Job_Citizen