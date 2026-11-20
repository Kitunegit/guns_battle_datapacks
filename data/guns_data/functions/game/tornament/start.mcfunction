# 参加チームを事前にタグ設定しておきます。
# Red陣営 = Game.Red
# Blue陣営 = Game.Blue

# 非参加者をスぺクに変更
 tag @a[gamemode=spectator,tag=!Game.Red,tag=!Game.Blue] add spec
 gamemode adventure @a[tag=!spec]
# デス処理消しとく
 tag @a remove death
 scoreboard players reset @a death
# 通知
 title @a[tag=Game.Red] subtitle {"text":"// 購入フェーズ //","bold":false}
 title @a[tag=Game.Blue] subtitle {"text":"// 購入フェーズ //","bold":false}
 title @a title {"text":"Round1","bold":true}
 tellraw @a {"text":"[System] 45秒の準備時間を開始します。"}
# ショップ処理
 tag @a[tag=Game.Red] add nandemoUI
 tag @a[tag=Game.Blue] add nandemoUI
 scoreboard players set @a credit 1000
# 無敵化
 effect give @a resistance 30 5 true
 effect give @a slowness 30 8 true
 effect give @a health_boost infinite 4 true
 effect give @a regeneration infinite 1 true
 effect give @a instant_health 1 15 true
 effect give @a saturation 1 50 true
# キルカウントリセット
 scoreboard players reset @a kill_count
# アイテムリセット
 clear @a
 item replace entity @a container.9 with tacz:ammo_box{AllTypeCreative: 1b}
 item replace entity @a hotbar.7 with cooked_beef 32
# カウントダウン処理流す
 schedule function guns_data:game/tornament/battle_start 45s
 schedule function guns_data:game/system/start_count/min_20s 25s
 schedule function guns_data:game/system/start_count/min_10s 30s
# 残り人数カウント
execute as @a[tag=Blue,tag=!death] run scoreboard players add $Blue remaining 1
execute as @a[tag=Red,tag=!death] run scoreboard players add $Red remaining 1

# ボスバー
bossbar set timer players @a
bossbar set timer max 900
bossbar set timer value 900
bossbar set timer name "Round 1: 購入フェーズ"
scoreboard players set $Time Game.Phase 900

scoreboard players set $Red Game.WinCount 0
scoreboard players set $Blue Game.WinCount 0

# フェーズセット
scoreboard players set $Phase Game.Phase 10