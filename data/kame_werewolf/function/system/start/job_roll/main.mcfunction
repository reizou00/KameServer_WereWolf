

# まだロールしてない人対象
execute \
at @s[tag=!KameServer_WereWolf.Rolled] run \
function kame_werewolf:system/start/job_roll/unless_rolled with storage kame_werewolf:macros

# ロール済み、ゲーム終了後に外すこと。
tag @s add KameServer_WereWolf.Rolled

