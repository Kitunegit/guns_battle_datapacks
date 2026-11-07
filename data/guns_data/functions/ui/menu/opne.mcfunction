# 開いたトロッコはkillされないようにする
    scoreboard players set @e[tag=shop_ui] UI.Shop.Timer -1

# ページ
    scoreboard players set @s UI.Shop.Page 0

# 専用のtag付け
    tag @s add ui_opne

# トロッコとプレイヤーを紐付ける
    execute positioned ~ ~1.2 ~ run scoreboard players operation @e[type=chest_minecart,tag=shop_ui,sort=nearest,limit=1,scores={UI.Shop.Timer=-1}] UUID = @s UUID

# 他のプレイヤーにトロッコを開けられないようにする
    summon interaction ~ ~ ~ {Tags:["shop_ui"]}
    ride @e[type=chest_minecart,tag=shop_ui,sort=nearest,limit=1,scores={UI.Shop.Timer=-1}] mount @e[type=interaction,tag=shop_ui,sort=nearest,limit=1]

# インタラクションとプレイヤーの紐付け
    scoreboard players operation @e[type=interaction,tag=shop_ui,sort=nearest,limit=1] UUID = @s UUID

# チェストの中身を並べる
    scoreboard players operation $UUID Temporaty = @s UUID
    execute as @e[type=chest_minecart,tag=shop_ui] if score @s UUID = $UUID Temporaty run function guns_data:ui/menu/page/blank
    execute as @e[type=chest_minecart,tag=shop_ui] if score @s UUID = $UUID Temporaty run function guns_data:ui/menu/page/0

# リセット
    advancement revoke @s only guns_data:ui/open
    scoreboard players reset $UUID Temporaty