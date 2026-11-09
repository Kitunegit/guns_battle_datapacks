tellraw @a {"text":"[System] ゲームを開始します。"}
title @a title "～ゲーム開始～"
title @a subtitle "敵を殲滅せよ"
execute as @a at @s run playsound minecraft:entity.zombie.attack_wooden_door player @s ~ ~ ~ 1 0.75
tag @a remove nandemoUI
advancement grant @a only guns_data:ui/close
tag @a add isGame
fill 188 -60 -14 191 -57 -18 air
fill 147 -60 -19 144 -57 -15 air