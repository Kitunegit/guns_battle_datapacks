# 出来る限りコメントアウトします

# 非参加者をスぺクに変更
 tag @a[gamemode=spectator,team=!Red,team=!Blue] add spec
 gamemode adventure @a[tag=!spec]
# デス処理消しとく
 tag @a remove death
 scoreboard players reset @a death
# 通知
 tellraw @a {"text":"[System] 30秒の準備時間を開始します。"}
# ショップ処理
 tag @a[team=Red] add nandemoUI
 tag @a[team=Blue] add nandemoUI
 scoreboard players set @a credit 2500
# 無敵化
 effect give @a resistance 30 5 true
 effect give @a slowness 30 8 true
 effect give @a health_boost infinite 4 true
 effect give @a regeneration infinite 1 true
 effect give @a instant_health 1 15 true
 effect give @a saturation 1 50 true
# アイテムリセット
 clear @a
 item replace entity @a container.9 with tacz:ammo_box{AllTypeCreative: 1b}
 item replace entity @a hotbar.7 with cooked_beef 32
# カウントダウン処理流す
 schedule function guns_data:game/battle_start 30s
 schedule function guns_data:game/system/start_count/min_20s 10s
 schedule function guns_data:game/system/start_count/min_10s 20s
# 残り人数カウント
execute as @a[team=Blue,tag=!death] run scoreboard players add $Blue remaining 1
execute as @a[team=Red,tag=!death] run scoreboard players add $Red remaining 1