# 商品のデータ編集
    execute if score @s UI.Shop.Armor.Buy.Yes matches 1.. as @e[type=chest_minecart,tag=shop_ui] if score @s UUID = $UUID Temporaty run item modify entity @s container.11 guns_data:ui/buy/_

# 商品の受け渡し
    execute as @e[type=chest_minecart,tag=shop_ui] if score @s UUID = $UUID Temporaty run tag @s add buy_ui
    execute as @e[type=chest_minecart,tag=shop_ui,tag=buy_ui,limit=1] if score @s UUID = $UUID Temporaty run data modify storage ui: ReturnItems set from entity @s Items
    data remove storage ui: ReturnItems[{id:"minecraft:light_gray_stained_glass_pane"}]
    data remove storage ui: ReturnItems[{tag:{faild:false}}]
    execute unless data storage ui: ReturnItems[] run data remove storage ui: ReturnItems
    execute if data storage ui: ReturnItems[] run function guns_data:ui/return/_