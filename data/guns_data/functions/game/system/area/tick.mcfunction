#execute as @a[tag=isArea] if score @s death matches 1.. run function guns_data:game/system/death
#scoreboard players set $Blue remaining 0
#scoreboard players set $Red remaining 0
#scoreboard players set $Red remaining 0
#execute as @a[tag=isArea,team=Blue,tag=!death] run scoreboard players add $Blue remaining 1
#execute as @a[tag=isArea,team=Red,tag=!death] run scoreboard players add $Red remaining 1

#システムメイン
#execute store result bossbar minecraft:count_blue value run scoreboard players get $Blue Count
#execute store result bossbar minecraft:count_red value run scoreboard players get $Red Count

#execute at @e[tag=Area] if entity @a[team=Blue,tag=!Red,distance=..5] run scoreboard players add $Blue Count 1
#execute at @e[tag=Area] if entity @a[team=Red,tag=!Blue,distance=..5] run scoreboard players add $Red Count 1

#execute if score $Blue Count matches 400.. run function guns_data:game/system/blue_win
#execute if score $Red Count matches 400.. run function guns_data:game/system/red_win

#演出面
#execute as @e[type=armor_stand,tag=Area_Particle] at @s run tp @s ~ ~ ~ ~10 ~
#execute at @e[type=armor_stand,tag=Area_Particle] positioned ~ ~-500 ~ run particle dust 0.937 0.98 0.475 4 ^ ^ ^5

# エリア制覇検知
    # red
    execute at @e[type=armor_stand,tag=area] unless data storage game: area{team:red} unless entity @a[distance=..5,team=blue,gamemode=!spectator,gamemode=!creative] if entity @a[distance=..5,team=red,gamemode=!spectator,gamemode=!creative] run scoreboard players add $red area_count 1
    # blue
    execute at @e[type=armor_stand,tag=area] unless data storage game: area{team:red} unless entity @a[distance=..5,team=blue,gamemode=!spectator,gamemode=!creative] if entity @a[distance=..5,team=red,gamemode=!spectator,gamemode=!creative] run scoreboard players add $red area_count 1
    # none
    execute at @e[type=armor_stand,tag=area] unless data storage game: area{team:red} unless entity @a[distance=..5,team=blue,gamemode=!spectator,gamemode=!creative] if entity @a[distance=..5,team=red,gamemode=!spectator,gamemode=!creative] run scoreboard players add $red area_count 1
    execute if score $count area_count matches 100
# 範囲表示
    execute if data storage game: area{team:none} at @e[type=armor_stand,tag=area] run function guns_data:game/system/area/sfx/white
    execute if data storage game: area{team:red} at @e[type=armor_stand,tag=area] run function guns_data:game/system/area/sfx/red
    execute if data storage game: area{team:blue} at @e[type=armor_stand,tag=area] run function guns_data:game/system/area/sfx/blue