tellraw @a {"text":"[System] ゲームを開始します。"}
title @a title "～ゲーム開始～"
title @a subtitle "敵を殲滅せよ"
execute as @a at @s run playsound minecraft:entity.zombie.attack_wooden_door player @s ~ ~ ~ 1 0.75
worldborder set 10 120

tag @a add isGame