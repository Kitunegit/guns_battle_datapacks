# アイテムを並べる
    data modify entity @s Items[{Slot:11b}] set from storage ui: Item.assault.1
    data modify entity @s Items[{Slot:12b}] set from storage ui: Item.assault.2
    data modify entity @s Items[{Slot:13b}] set from storage ui: Item.assault.3
    data modify entity @s Items[{Slot:14b}] set from storage ui: Item.assault.4
    data modify entity @s Items[{Slot:15b}] set from storage ui: Item.assault.5

# 値段表示
    item modify entity @s container.11 guns_data:ui/assault/1
    item modify entity @s container.12 guns_data:ui/assault/2
    item modify entity @s container.13 guns_data:ui/assault/3
    item modify entity @s container.14 guns_data:ui/assault/4
    item modify entity @s container.15 guns_data:ui/assault/5