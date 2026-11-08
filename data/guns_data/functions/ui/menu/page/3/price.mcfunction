# アイテムの値段
    execute store result score @s UI.Shop.Price run data get entity @s Items[{Slot:11b}].tag.price

# アイテムを並べる
    execute if score $credit Temporaty >= @s UI.Shop.Price run loot replace entity @s container.15 loot guns_data:ui/page/3/yes
    execute if score $credit Temporaty >= @s UI.Shop.Price run item modify entity @s container.15 guns_data:ui/buy/yes
    execute if score $credit Temporaty < @s UI.Shop.Price run loot replace entity @s container.15 loot guns_data:ui/page/3/no
    execute if score $credit Temporaty < @s UI.Shop.Price run item modify entity @s container.15 guns_data:ui/buy/no