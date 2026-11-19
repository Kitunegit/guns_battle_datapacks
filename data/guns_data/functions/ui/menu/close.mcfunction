# UI閉じ処理

# UIに残されたアイテムを返却
    scoreboard players operation $UUID Temporaty = @s UUID
    execute as @e[type=chest_minecart,tag=shop_ui] if score @s UUID = $UUID Temporaty run data modify storage ui: ReturnItems set from entity @s Items
    data remove storage ui: ReturnItems[{id:"minecraft:light_gray_stained_glass_pane"}]
    data remove storage ui: ReturnItems[{tag:{faild:false}}]
    execute unless data storage ui: ReturnItems[] run data remove storage ui: ReturnItems
    execute if data storage ui: ReturnItems[] run function guns_data:ui/return/_

# tagを消す
    tag @s remove ui_open

# 閉じ判定用の頭装備を無くす
    item replace entity @s armor.head with air

# UI用のチェストトロッコをkill
    execute as @e[type=interaction,tag=shop_ui] if score @s UUID = $UUID Temporaty run tp @s ~ ~-10000 ~
    execute as @e[type=chest_minecart,tag=shop_ui] if score @s UUID = $UUID Temporaty run kill @s
    execute as @e[type=interaction,tag=shop_ui] if score @s UUID = $UUID Temporaty run kill @s

# リセット
    advancement revoke @s only guns_data:ui/close