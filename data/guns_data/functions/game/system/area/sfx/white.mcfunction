# 演出
    particle dust 1 1 1 2 ^ ^ ^5 0 0 0 1 1 force

# 一周するまで再帰
    scoreboard players add $loop area_sfx 1
    execute if score $loop area_sfx matches ..18 rotated ~10 ~ run function guns_data:game/system/area/sfx/white
    execute if score $loop area_sfx matches 19.. run scoreboard players reset $loop area_sfx