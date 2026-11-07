execute as @a[tag=isGame] if score @s death matches 1.. run function guns_data:game/system/death
scoreboard players set $Blue remaining 0
scoreboard players set $Red remaining 0
execute as @a[tag=isGame,team=Blue,tag=!death] run scoreboard players add $Blue remaining 1
execute as @a[tag=isGame,team=Red,tag=!death] run scoreboard players add $Red remaining 1
execute if score $Blue remaining matches 0 run function guns_data:game/system/red_win
execute if score $Red remaining matches 0 run function guns_data:game/system/blue_win