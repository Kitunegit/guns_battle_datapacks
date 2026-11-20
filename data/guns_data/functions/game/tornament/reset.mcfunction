# 参加チームを事前にタグ設定しておきます。
# Red陣営 = Game.Red
# Blue陣営 = Game.Blue


tellraw @a {"text":"[System] ゲームを終了します。"}
effect clear @a
gamemode adventure @a
scoreboard players set @a credit 0
worldborder set 3000000
tag @a remove spec
tag @a remove isGame
tag @a remove death
tag @a remove isArea
tag @a remove Game.Red
tag @a remove Game.Blue
team leave @a
clear @a
execute as @a run spreadplayers -2.5 -16.5 1 4 under -60 true @s

# ボスバー
bossbar set timer players @a
bossbar set timer max 45
bossbar set timer value 45
bossbar set timer name "Round 1: 購入フェーズ"

scoreboard players set $Red Game.WinCount 0
scoreboard players set $Blue Game.WinCount 0

# フェーズセット
scoreboard players set $Phase Game.Phase 0