# UIに残されたアイテムを返却
    scoreboard players operation $UUID Temporaty = @s UUID
    execute as @e[type=chest_minecart,tag=shop_ui] if score @s UUID = $UUID Temporaty run data modify storage ui: ReturnItems set from entity @s Items
    data remove storage ui: ReturnItems[{id:"minecraft:light_gray_stained_glass_pane"}]
    data remove storage ui: ReturnItems[{tag:{faild:false}}]
    execute unless data storage ui: ReturnItems[] run data remove storage ui: ReturnItems
    execute if data storage ui: ReturnItems[] run function guns_data:ui/return/_

# 音
    execute unless score @s UI.Shop.Armor.Buy.No matches 1.. run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.2 2 0
    execute if score @s UI.Shop.Armor.Buy.No matches 1.. run playsound minecraft:entity.villager.no master @s ~ ~ ~ 0.5 1 0
    execute if score @s UI.Shop.Armor.Buy.Yes matches 1.. run playsound minecraft:entity.villager.yes master @s ~ ~ ~ 0.5 1 0
# 所持金を保存
    scoreboard players operation $credit Temporaty = @s credit

# 商品受け渡し
    execute if score @s UI.Shop.Armor.Buy.Yes matches 1.. as @e[type=chest_minecart,tag=shop_ui] if score @s UUID = $UUID Temporaty if data entity @s Items[{Slot:11b}].tag{ui:armor_chain} as @a if score @s UUID = $UUID Temporaty run function guns_data:ui/buy/armor/chain
    execute if score @s UI.Shop.Armor.Buy.Yes matches 1.. as @e[type=chest_minecart,tag=shop_ui] if score @s UUID = $UUID Temporaty if data entity @s Items[{Slot:11b}].tag{ui:armor_iron} as @a if score @s UUID = $UUID Temporaty run function guns_data:ui/buy/armor/iron
    execute if score @s UI.Shop.Armor.Buy.Yes matches 1.. as @e[type=chest_minecart,tag=shop_ui] if score @s UUID = $UUID Temporaty if data entity @s Items[{Slot:11b}].tag{ui:armor_diamond} as @a if score @s UUID = $UUID Temporaty run function guns_data:ui/buy/armor/diamond

# 金額分減らす
    execute if score @s UI.Shop.Armor.Buy.Yes matches 1.. as @e[type=chest_minecart,tag=shop_ui] if score @s UUID = $UUID Temporaty store result score $Price UI.Shop.Price run data get entity @s Items[{Slot:11b}].tag.price
    execute if score @s UI.Shop.Armor.Buy.Yes matches 1.. run scoreboard players operation @s credit -= $Price UI.Shop.Price


# 装備以外の商品受け渡し
    execute if score @s UI.Shop.Armor.Buy.Yes matches 1.. as @e[type=chest_minecart,tag=shop_ui] if score @s UUID = $UUID Temporaty unless data entity @s Items[{Slot:11b}].tag{ui:armor_chain} unless data entity @s Items[{Slot:11b}].tag{ui:armor_iron} unless data entity @s Items[{Slot:11b}].tag{ui:armor_diamond} run tag @s add buy_ui
    execute if score @s UI.Shop.Armor.Buy.Yes matches 1.. as @e[type=chest_minecart,tag=shop_ui,tag=buy_ui,limit=1] if score @s UUID = $UUID Temporaty as @a if score @s UUID = $UUID Temporaty run function guns_data:ui/buy/_

# 購入時にページを戻す
    execute if score @s UI.Shop.Armor.Buy.No matches 1.. run scoreboard players set @s UI.Shop.Page 0
    execute if score @s UI.Shop.Armor.Buy.Yes matches 1.. run scoreboard players set @s UI.Shop.Page 0

# 紐づけられたトロッコを対象にする
    execute as @e[type=chest_minecart,tag=shop_ui] if score @s UUID = $UUID Temporaty run function guns_data:ui/menu/page/blank
    execute as @s[scores={UI.Shop.Page=0}] as @e[type=chest_minecart,tag=shop_ui] if score @s UUID = $UUID Temporaty run function guns_data:ui/menu/page/0
    execute as @s[scores={UI.Shop.Page=1}] as @e[type=chest_minecart,tag=shop_ui] if score @s UUID = $UUID Temporaty run function guns_data:ui/menu/page/1
    execute as @s[scores={UI.Shop.Page=2}] as @e[type=chest_minecart,tag=shop_ui] if score @s UUID = $UUID Temporaty run function guns_data:ui/menu/page/2
    execute as @s[scores={UI.Shop.Page=3}] as @e[type=chest_minecart,tag=shop_ui] if score @s UUID = $UUID Temporaty run function guns_data:ui/menu/page/3
    execute as @s[scores={UI.Shop.Page=4}] as @e[type=chest_minecart,tag=shop_ui] if score @s UUID = $UUID Temporaty run function guns_data:ui/menu/page/4
    execute as @s[scores={UI.Shop.Page=5}] as @e[type=chest_minecart,tag=shop_ui] if score @s UUID = $UUID Temporaty run function guns_data:ui/menu/page/5
    execute as @s[scores={UI.Shop.Page=2001}] as @e[type=chest_minecart,tag=shop_ui] if score @s UUID = $UUID Temporaty run function guns_data:ui/menu/page/2/1
    execute as @s[scores={UI.Shop.Page=2002}] as @e[type=chest_minecart,tag=shop_ui] if score @s UUID = $UUID Temporaty run function guns_data:ui/menu/page/2/2
    execute as @s[scores={UI.Shop.Page=2003}] as @e[type=chest_minecart,tag=shop_ui] if score @s UUID = $UUID Temporaty run function guns_data:ui/menu/page/2/3
    execute as @s[scores={UI.Shop.Page=1001}] as @e[type=chest_minecart,tag=shop_ui] if score @s UUID = $UUID Temporaty run function guns_data:ui/menu/page/3/sub/_
    execute as @s[scores={UI.Shop.Page=1002}] as @e[type=chest_minecart,tag=shop_ui] if score @s UUID = $UUID Temporaty run function guns_data:ui/menu/page/3/assault/_
    execute as @s[scores={UI.Shop.Page=1003}] as @e[type=chest_minecart,tag=shop_ui] if score @s UUID = $UUID Temporaty run function guns_data:ui/menu/page/3/hand/_
    execute as @s[scores={UI.Shop.Page=1004}] as @e[type=chest_minecart,tag=shop_ui] if score @s UUID = $UUID Temporaty run function guns_data:ui/menu/page/3/shot/_
    execute as @s[scores={UI.Shop.Page=1005}] as @e[type=chest_minecart,tag=shop_ui] if score @s UUID = $UUID Temporaty run function guns_data:ui/menu/page/3/sniper/_

# 購入処理
    execute as @s[scores={UI.Shop.Page=4,UI.Shop.potion.1=1..}] as @e[type=chest_minecart,tag=shop_ui] if score @s UUID = $UUID Temporaty run function guns_data:ui/menu/page/4/1
    execute as @s[scores={UI.Shop.Page=4,UI.Shop.potion.2=1..}] as @e[type=chest_minecart,tag=shop_ui] if score @s UUID = $UUID Temporaty run function guns_data:ui/menu/page/4/2
    execute as @s[scores={UI.Shop.Page=4,UI.Shop.potion.3=1..}] as @e[type=chest_minecart,tag=shop_ui] if score @s UUID = $UUID Temporaty run function guns_data:ui/menu/page/4/3
    execute as @s[scores={UI.Shop.Page=4,UI.Shop.potion.4=1..}] as @e[type=chest_minecart,tag=shop_ui] if score @s UUID = $UUID Temporaty run function guns_data:ui/menu/page/4/4
    execute as @s[scores={UI.Shop.Page=4,UI.Shop.potion.5=1..}] as @e[type=chest_minecart,tag=shop_ui] if score @s UUID = $UUID Temporaty run function guns_data:ui/menu/page/4/5
# 購入処理
    execute as @s[scores={UI.Shop.Page=5,UI.Shop.grenade.1=1..}] as @e[type=chest_minecart,tag=shop_ui] if score @s UUID = $UUID Temporaty run function guns_data:ui/menu/page/5/1
    execute as @s[scores={UI.Shop.Page=5,UI.Shop.grenade.2=1..}] as @e[type=chest_minecart,tag=shop_ui] if score @s UUID = $UUID Temporaty run function guns_data:ui/menu/page/5/2
    execute as @s[scores={UI.Shop.Page=5,UI.Shop.grenade.3=1..}] as @e[type=chest_minecart,tag=shop_ui] if score @s UUID = $UUID Temporaty run function guns_data:ui/menu/page/5/3
    execute as @s[scores={UI.Shop.Page=5,UI.Shop.grenade.4=1..}] as @e[type=chest_minecart,tag=shop_ui] if score @s UUID = $UUID Temporaty run function guns_data:ui/menu/page/5/4
    execute as @s[scores={UI.Shop.Page=5,UI.Shop.grenade.5=1..}] as @e[type=chest_minecart,tag=shop_ui] if score @s UUID = $UUID Temporaty run function guns_data:ui/menu/page/5/5
# 購入処理
    execute as @s[scores={UI.Shop.Page=1001,UI.Shop.Gun.1=1..}] as @e[type=chest_minecart,tag=shop_ui] if score @s UUID = $UUID Temporaty run function guns_data:ui/menu/page/3/sub/1
    execute as @s[scores={UI.Shop.Page=1001,UI.Shop.Gun.2=1..}] as @e[type=chest_minecart,tag=shop_ui] if score @s UUID = $UUID Temporaty run function guns_data:ui/menu/page/3/sub/2
    execute as @s[scores={UI.Shop.Page=1001,UI.Shop.Gun.3=1..}] as @e[type=chest_minecart,tag=shop_ui] if score @s UUID = $UUID Temporaty run function guns_data:ui/menu/page/3/sub/3
    execute as @s[scores={UI.Shop.Page=1001,UI.Shop.Gun.4=1..}] as @e[type=chest_minecart,tag=shop_ui] if score @s UUID = $UUID Temporaty run function guns_data:ui/menu/page/3/sub/4
    execute as @s[scores={UI.Shop.Page=1001,UI.Shop.Gun.5=1..}] as @e[type=chest_minecart,tag=shop_ui] if score @s UUID = $UUID Temporaty run function guns_data:ui/menu/page/3/sub/5
# 購入処理
    execute as @s[scores={UI.Shop.Page=1002,UI.Shop.Gun.1=1..}] as @e[type=chest_minecart,tag=shop_ui] if score @s UUID = $UUID Temporaty run function guns_data:ui/menu/page/3/assault/1
    execute as @s[scores={UI.Shop.Page=1002,UI.Shop.Gun.2=1..}] as @e[type=chest_minecart,tag=shop_ui] if score @s UUID = $UUID Temporaty run function guns_data:ui/menu/page/3/assault/2
    execute as @s[scores={UI.Shop.Page=1002,UI.Shop.Gun.3=1..}] as @e[type=chest_minecart,tag=shop_ui] if score @s UUID = $UUID Temporaty run function guns_data:ui/menu/page/3/assault/3
    execute as @s[scores={UI.Shop.Page=1002,UI.Shop.Gun.4=1..}] as @e[type=chest_minecart,tag=shop_ui] if score @s UUID = $UUID Temporaty run function guns_data:ui/menu/page/3/assault/4
    execute as @s[scores={UI.Shop.Page=1002,UI.Shop.Gun.5=1..}] as @e[type=chest_minecart,tag=shop_ui] if score @s UUID = $UUID Temporaty run function guns_data:ui/menu/page/3/assault/5
# 購入処理
    execute as @s[scores={UI.Shop.Page=1003,UI.Shop.Gun.1=1..}] as @e[type=chest_minecart,tag=shop_ui] if score @s UUID = $UUID Temporaty run function guns_data:ui/menu/page/3/hand/1
    execute as @s[scores={UI.Shop.Page=1003,UI.Shop.Gun.2=1..}] as @e[type=chest_minecart,tag=shop_ui] if score @s UUID = $UUID Temporaty run function guns_data:ui/menu/page/3/hand/2
    execute as @s[scores={UI.Shop.Page=1003,UI.Shop.Gun.3=1..}] as @e[type=chest_minecart,tag=shop_ui] if score @s UUID = $UUID Temporaty run function guns_data:ui/menu/page/3/hand/3
    execute as @s[scores={UI.Shop.Page=1003,UI.Shop.Gun.4=1..}] as @e[type=chest_minecart,tag=shop_ui] if score @s UUID = $UUID Temporaty run function guns_data:ui/menu/page/3/hand/4
    execute as @s[scores={UI.Shop.Page=1003,UI.Shop.Gun.5=1..}] as @e[type=chest_minecart,tag=shop_ui] if score @s UUID = $UUID Temporaty run function guns_data:ui/menu/page/3/hand/5
# 購入処理
    execute as @s[scores={UI.Shop.Page=1004,UI.Shop.Gun.1=1..}] as @e[type=chest_minecart,tag=shop_ui] if score @s UUID = $UUID Temporaty run function guns_data:ui/menu/page/3/shot/1
    execute as @s[scores={UI.Shop.Page=1004,UI.Shop.Gun.2=1..}] as @e[type=chest_minecart,tag=shop_ui] if score @s UUID = $UUID Temporaty run function guns_data:ui/menu/page/3/shot/2
    execute as @s[scores={UI.Shop.Page=1004,UI.Shop.Gun.3=1..}] as @e[type=chest_minecart,tag=shop_ui] if score @s UUID = $UUID Temporaty run function guns_data:ui/menu/page/3/shot/3
    execute as @s[scores={UI.Shop.Page=1004,UI.Shop.Gun.4=1..}] as @e[type=chest_minecart,tag=shop_ui] if score @s UUID = $UUID Temporaty run function guns_data:ui/menu/page/3/shot/4
    execute as @s[scores={UI.Shop.Page=1004,UI.Shop.Gun.5=1..}] as @e[type=chest_minecart,tag=shop_ui] if score @s UUID = $UUID Temporaty run function guns_data:ui/menu/page/3/shot/5
# 購入処理
    execute as @s[scores={UI.Shop.Page=1005,UI.Shop.Gun.1=1..}] as @e[type=chest_minecart,tag=shop_ui] if score @s UUID = $UUID Temporaty run function guns_data:ui/menu/page/3/sniper/1
    execute as @s[scores={UI.Shop.Page=1005,UI.Shop.Gun.2=1..}] as @e[type=chest_minecart,tag=shop_ui] if score @s UUID = $UUID Temporaty run function guns_data:ui/menu/page/3/sniper/2
    execute as @s[scores={UI.Shop.Page=1005,UI.Shop.Gun.3=1..}] as @e[type=chest_minecart,tag=shop_ui] if score @s UUID = $UUID Temporaty run function guns_data:ui/menu/page/3/sniper/3
    execute as @s[scores={UI.Shop.Page=1005,UI.Shop.Gun.4=1..}] as @e[type=chest_minecart,tag=shop_ui] if score @s UUID = $UUID Temporaty run function guns_data:ui/menu/page/3/sniper/4
    execute as @s[scores={UI.Shop.Page=1005,UI.Shop.Gun.5=1..}] as @e[type=chest_minecart,tag=shop_ui] if score @s UUID = $UUID Temporaty run function guns_data:ui/menu/page/3/sniper/5

# 最初のページに戻る用ボタン
    execute as @s[scores={UI.Shop.Page=1..}] as @e[type=chest_minecart,tag=shop_ui] if score @s UUID = $UUID Temporaty run loot replace entity @s container.10 loot guns_data:ui/page/back

# リセット
    scoreboard players reset $UUID Temporaty
    scoreboard players reset $credit Temporaty
    scoreboard players reset @s UI.Shop.Price