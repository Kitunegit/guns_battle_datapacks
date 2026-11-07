# プレイヤーにUIを表示
    execute as @a[tag=!ui_open] at @s run function guns_data:ui/summon

# 時間経過でkill
    execute as @e[type=chest_minecart,tag=shop_ui] unless score @s UI.Shop.Timer matches -1 run scoreboard players add @s UI.Shop.Timer 1
    kill @e[scores={UI.Shop.Timer=2..},tag=shop_ui]

# クリック検知
    execute as @a[tag=ui_open] store result score @s UI.Shop.Blank.Click run clear @s light_gray_stained_glass_pane{ui:blank}
    execute as @a[tag=ui_open] store result score @s UI.Shop.Gun.Click run clear @s tacz:modern_kinetic_gun{ui:gun}
    
# ページ設定
    execute as @a[tag=ui_open,scores={UI.Shop.Gun.Click=1..}] at @s run scoreboard players set @s UI.Shop.Page 1

    execute at @a[tag=ui_open] positioned ~ ~1.2 ~ as @e[type=item,distance=..1] if data entity @s Item.tag{faild:false} as @p at @s run function guns_data:ui/menu/page/click/_
    execute as @a[tag=ui_open,scores={UI.Shop.Blank.Click=1..}] at @s run function guns_data:ui/menu/page/click/_
    execute as @a[tag=ui_open,scores={UI.Shop.Gun.Click=1..}] at @s run function guns_data:ui/menu/page/click/_
    execute at @a[tag=ui_open] positioned ~ ~1.2 ~ as @e[type=item,distance=..1] if data entity @s Item.tag{faild:false} run kill @s
# リセット
    scoreboard players reset @a UI.Shop.Blank.Click
    scoreboard players reset @a UI.Shop.Gun.Click