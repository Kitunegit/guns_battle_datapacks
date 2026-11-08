tellraw @a {"text":"[System] ゲームを終了します。"}
effect clear @a
gamemode adventure @a
scoreboard players set @a credit 0
worldborder set 3000000
tag @a remove isGame
tag @a remove death
tag @a remove isArea
team leave @a
clear @a
execute as @a run spreadplayers -2.5 -16.5 1 4 under -60 true @s