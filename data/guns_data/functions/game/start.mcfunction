tag @a[gamemode=spectator,team=!Red,team=!Blue] add spec
gamemode adventure @a[tag=!spec]
tag @a remove death
tellraw @a {"text":"[System] 30秒の準備時間を開始します。"}
execute as @a run function guns_data:select
scoreboard players set @a credit 2500
execute as @a at @s run playsound ambientsounds:animals.warden player @s ~ ~ ~ 0.5 1.4
effect give @a resistance 20 5 true
effect give @a slowness 20 8 true
effect give @a health_boost infinite 4 true
effect give @a regeneration infinite 1 true
effect give @a instant_health 1 15 true
clear @a
item replace entity @a container.9 with tacz:ammo_box{AllTypeCreative: 1b}
item replace entity @a hotbar.7 with cooked_beef 32
schedule function guns_data:game/battle_start 30s
schedule function guns_data:game/system/start_count/min_20s 10s
schedule function guns_data:game/system/start_count/min_10s 20s
execute as @a[team=Blue,tag=!death] run scoreboard players add $Blue remaining 1
execute as @a[team=Red,tag=!death] run scoreboard players add $Red remaining 1