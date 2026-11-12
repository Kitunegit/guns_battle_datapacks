# ページ
    scoreboard players set @s UI.Shop.Page 0

# 開いたプレイヤーのUUIDを保存
    execute positioned 0.0 0.0 0.0 run scoreboard players operation @e[type=marker,sort=nearest,limit=1] UUID = @s UUID
# 専用のtag付け
    tag @s add ui_open
# 開けたトロッコを識別
    execute anchored eyes positioned ~ ~1.1 ~ as @e[type=interaction,tag=shop_ui,tag=!UIusing,distance=..1] run function guns_data:ui/menu/init

# UI閉じ検知用の処理
    execute unless predicate guns_data:armor/helmet run item replace entity @s armor.head with minecraft:stone_button
    item modify entity @s armor.head guns_data:close_detector/add

# チェストの中身を並べる
    scoreboard players operation $UUID Temporaty = @s UUID
    execute as @e[type=chest_minecart,tag=shop_ui] if score @s UUID = $UUID Temporaty run function guns_data:ui/menu/page/blank
    execute as @e[type=chest_minecart,tag=shop_ui] if score @s UUID = $UUID Temporaty run function guns_data:ui/menu/page/0

# リセット
    advancement revoke @s only guns_data:ui/open
    scoreboard players reset $UUID Temporaty