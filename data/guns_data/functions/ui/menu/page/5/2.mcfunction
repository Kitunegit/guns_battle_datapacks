# ページ初期化
    function guns_data:ui/menu/page/blank

# アイテム配置
    data modify storage ui: Item.grenade.2.Slot set value 11b
    data modify entity @s Items[{Slot:11b}] set from storage ui: Item.grenade.2

# 購入可能かの処理
    function guns_data:ui/menu/page/3/price

# リセット
    data modify storage ui: Item.grenade.2.Slot set value 12b