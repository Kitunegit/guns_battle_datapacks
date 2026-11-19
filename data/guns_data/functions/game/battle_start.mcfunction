tellraw @a {"text":"[System] ゲームを開始します。"}
title @a title "～ゲーム開始～"
title @a subtitle "敵を殲滅せよ"
execute as @a at @s run playsound minecraft:entity.zombie.attack_wooden_door player @s ~ ~ ~ 1 0.75
tag @a remove nandemoUI
advancement grant @a only guns_data:ui/close
tag @a add isGame
fill 188 -60 -14 191 -57 -18 air
fill 147 -60 -19 144 -57 -15 air
fill 37 -55 -21 32 -60 -29 air
fill 105 -55 -28 110 -60 -20 air
fill 101 -58 -115 101 -56 -121 air
fill 103 -58 -112 105 -55 -112 air
fill 57 -55 -112 59 -58 -112 air
fill 61 -58 -115 61 -55 -121 air
fill 284 -51 35 284 -54 31 air
fill 288 -54 43 288 -52 43 air
fill 289 -54 44 289 -52 44 air
fill 290 -54 45 290 -52 45 air

fill 232 -51 36 232 -54 32 air
fill 228 -54 24 228 -52 24 air
fill 227 -54 23 227 -52 23 air
fill 226 -54 22 226 -52 22 air