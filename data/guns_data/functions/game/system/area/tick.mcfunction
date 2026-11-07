execute as @a[tag=isArea] if score @s death matches 1.. run function guns_data:game/system/death
scoreboard players set $Blue remaining 0
scoreboard players set $Red remaining 0
scoreboard players set $Red remaining 0
execute as @a[tag=isArea,team=Blue,tag=!death] run scoreboard players add $Blue remaining 1
execute as @a[tag=isArea,team=Red,tag=!death] run scoreboard players add $Red remaining 1

#システムメイン
execute store result bossbar minecraft:count_blue value run scoreboard players get $Blue Count
execute store result bossbar minecraft:count_red value run scoreboard players get $Red Count

execute at @e[tag=Area] if entity @a[team=Blue,tag=!Red,distance=..5] run scoreboard players add $Blue Count 1
execute at @e[tag=Area] if entity @a[team=Red,tag=!Blue,distance=..5] run scoreboard players add $Red Count 1

execute if score $Blue Count matches 400.. run function guns_data:game/system/blue_win
execute if score $Red Count matches 400.. run function guns_data:game/system/red_win

#演出面
execute as @e[type=armor_stand,tag=Area_Particle] at @s run tp @s ~ ~ ~ ~10 ~
execute at @e[type=armor_stand,tag=Area_Particle] positioned ~ ~-500 ~ run particle dust 0.937 0.98 0.475 4 ^ ^ ^5