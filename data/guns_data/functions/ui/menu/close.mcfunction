# UI閉じ処理

# tagを消す
    tag @s remove ui_open

# 閉じ判定用の頭装備を無くす
    item replace entity @s armor.head with air

# UI用のチェストトロッコをkill
    scoreboard players operation $UUID Temporaty = @s UUID
    execute as @e[type=interaction,tag=shop_ui] if score @s UUID = $UUID Temporaty run tp @s ~ ~-10000 ~
    execute as @e[type=chest_minecart,tag=shop_ui] if score @s UUID = $UUID Temporaty run kill @s
    execute as @e[type=interaction,tag=shop_ui] if score @s UUID = $UUID Temporaty run kill @s

# リセット
    advancement revoke @s only guns_data:ui/close