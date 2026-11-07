# UIに残されたアイテムを返却
    scoreboard players operation $UUID Temporaty = @s UUID
    execute as @e[type=chest_minecart,tag=shop_ui] if score @s UUID = $UUID Temporaty run data modify storage ui: ReturnItems set from entity @s Items
    data remove storage ui: ReturnItems[{id:"minecraft:light_gray_stained_glass_pane"}]
    data remove storage ui: ReturnItems[{tag:{faild:false}}]
    execute unless data storage ui: ReturnItems[] run data remove storage ui: ReturnItems
    execute if data storage ui: ReturnItems[] run function guns_data:ui/return/_

# 音
    playsound minecraft:ui.button.click master @s ~ ~ ~ 0.2 2 0

# 紐づけられたトロッコを対象にする
    execute as @e[type=chest_minecart,tag=shop_ui] if score @s UUID = $UUID Temporaty run function guns_data:ui/menu/page/blank
    execute as @s[scores={UI.Shop.Page=0}] as @e[type=chest_minecart,tag=shop_ui] if score @s UUID = $UUID Temporaty run function guns_data:ui/menu/page/0
    execute as @s[scores={UI.Shop.Page=1}] as @e[type=chest_minecart,tag=shop_ui] if score @s UUID = $UUID Temporaty run function guns_data:ui/menu/page/1

# リセット
    scoreboard players reset $UUID Temporaty