# プレイヤーにUIを表示
    execute as @a[tag=!ui_open] at @s run function guns_data:ui/summon

# 時間経過でkill
    execute as @e[type=chest_minecart,tag=shop_ui] unless score @s UI.Shop.Timer matches -1 run scoreboard players add @s UI.Shop.Timer 1
    kill @e[scores={UI.Shop.Timer=2..},tag=shop_ui]

# クリック検知
    execute as @a[tag=ui_open] store result score @s UI.Shop.Blank.Click run clear @s light_gray_stained_glass_pane{ui:blank}
    execute as @a[tag=ui_open] store result score @s UI.Shop.Gun.Click run clear @s tacz:modern_kinetic_gun{ui:gun}
    execute as @a[tag=ui_open] store result score @s UI.Shop.Armor.Click run clear @s iron_chestplate{ui:armor}
    execute as @a[tag=ui_open] store result score @s UI.Shop.Armor.Chain.Click run clear @s chainmail_chestplate{ui:armor_chain}
    execute as @a[tag=ui_open] store result score @s UI.Shop.Armor.Diamond.Click run clear @s diamond_chestplate{ui:armor_diamond}
    execute as @a[tag=ui_open] store result score @s UI.Shop.Armor.Iron.Click run clear @s iron_chestplate{ui:armor_iron}
    execute as @a[tag=ui_open] store result score @s UI.Shop.Armor.Buy.No run clear @s red_candle{ui:no}
    execute as @a[tag=ui_open] store result score @s UI.Shop.Armor.Buy.Yes run clear @s lime_candle{ui:yes}
    execute as @a[tag=ui_open] store result score @s UI.Shop.Gun.sub run clear @s tacz:modern_kinetic_gun{ui:gun_sub}
    execute as @a[tag=ui_open] store result score @s UI.Shop.Gun.assault run clear @s tacz:modern_kinetic_gun{ui:gun_assault}
    execute as @a[tag=ui_open] store result score @s UI.Shop.Gun.handgun run clear @s tacz:modern_kinetic_gun{ui:gun_hand}
    execute as @a[tag=ui_open] store result score @s UI.Shop.Gun.sniper run clear @s tacz:modern_kinetic_gun{ui:gun_sniper}
    execute as @a[tag=ui_open] store result score @s UI.Shop.Gun.shotgun run clear @s tacz:modern_kinetic_gun{ui:gun_shot}
    execute as @a[tag=ui_open] store result score @s UI.Shop.Gun.1 run clear @s tacz:modern_kinetic_gun{ui:1}
    execute as @a[tag=ui_open] store result score @s UI.Shop.Gun.2 run clear @s tacz:modern_kinetic_gun{ui:2}
    execute as @a[tag=ui_open] store result score @s UI.Shop.Gun.3 run clear @s tacz:modern_kinetic_gun{ui:3}
    execute as @a[tag=ui_open] store result score @s UI.Shop.Gun.4 run clear @s tacz:modern_kinetic_gun{ui:4}
    execute as @a[tag=ui_open] store result score @s UI.Shop.Gun.5 run clear @s tacz:modern_kinetic_gun{ui:5}
    execute as @a[tag=ui_open] store result score @s UI.Shop.back run clear @s ender_pearl{ui:back}

# ページ設定
    execute as @a[tag=ui_open,scores={UI.Shop.Gun.Click=1..}] at @s run scoreboard players set @s UI.Shop.Page 1
    execute as @a[tag=ui_open,scores={UI.Shop.Gun.sub=1..}] at @s run scoreboard players set @s UI.Shop.Page 1001
    execute as @a[tag=ui_open,scores={UI.Shop.Gun.assault=1..}] at @s run scoreboard players set @s UI.Shop.Page 1002
    execute as @a[tag=ui_open,scores={UI.Shop.Gun.handgun=1..}] at @s run scoreboard players set @s UI.Shop.Page 1003
    execute as @a[tag=ui_open,scores={UI.Shop.Gun.shotgun=1..}] at @s run scoreboard players set @s UI.Shop.Page 1004
    execute as @a[tag=ui_open,scores={UI.Shop.Gun.sniper=1..}] at @s run scoreboard players set @s UI.Shop.Page 1005
    execute as @a[tag=ui_open,scores={UI.Shop.Armor.Click=1..}] at @s run scoreboard players set @s UI.Shop.Page 2
    execute as @a[tag=ui_open,scores={UI.Shop.Armor.Chain.Click=1..}] at @s run scoreboard players set @s UI.Shop.Page 2001
    execute as @a[tag=ui_open,scores={UI.Shop.Armor.Iron.Click=1..}] at @s run scoreboard players set @s UI.Shop.Page 2002
    execute as @a[tag=ui_open,scores={UI.Shop.Armor.Diamond.Click=1..}] at @s run scoreboard players set @s UI.Shop.Page 2003
    execute as @a[tag=ui_open,scores={UI.Shop.back=1..}] at @s run scoreboard players set @s UI.Shop.Page 0

    execute at @a[tag=ui_open] positioned ~ ~1.2 ~ as @e[type=item,distance=..1] if data entity @s Item.tag{faild:false} as @p at @s run function guns_data:ui/menu/page/click/_
    execute as @a[tag=ui_open,scores={UI.Shop.Blank.Click=1..}] at @s run function guns_data:ui/menu/page/click/_
    execute as @a[tag=ui_open,scores={UI.Shop.Gun.Click=1..}] at @s run function guns_data:ui/menu/page/click/_
    execute as @a[tag=ui_open,scores={UI.Shop.Armor.Click=1..}] at @s run function guns_data:ui/menu/page/click/_
    execute as @a[tag=ui_open,scores={UI.Shop.Armor.Chain.Click=1..}] at @s run function guns_data:ui/menu/page/click/_
    execute as @a[tag=ui_open,scores={UI.Shop.Armor.Iron.Click=1..}] at @s run function guns_data:ui/menu/page/click/_
    execute as @a[tag=ui_open,scores={UI.Shop.Armor.Diamond.Click=1..}] at @s run function guns_data:ui/menu/page/click/_
    execute as @a[tag=ui_open,scores={UI.Shop.Armor.Buy.No=1..}] at @s run function guns_data:ui/menu/page/click/_
    execute as @a[tag=ui_open,scores={UI.Shop.Armor.Buy.Yes=1..}] at @s run function guns_data:ui/menu/page/click/_
    execute as @a[tag=ui_open,scores={UI.Shop.Gun.sub=1..}] at @s run function guns_data:ui/menu/page/click/_
    execute as @a[tag=ui_open,scores={UI.Shop.Gun.assault=1..}] at @s run function guns_data:ui/menu/page/click/_
    execute as @a[tag=ui_open,scores={UI.Shop.Gun.handgun=1..}] at @s run function guns_data:ui/menu/page/click/_
    execute as @a[tag=ui_open,scores={UI.Shop.Gun.shotgun=1..}] at @s run function guns_data:ui/menu/page/click/_
    execute as @a[tag=ui_open,scores={UI.Shop.Gun.sniper=1..}] at @s run function guns_data:ui/menu/page/click/_
    execute as @a[tag=ui_open,scores={UI.Shop.Gun.1=1..}] at @s run function guns_data:ui/menu/page/click/_
    execute as @a[tag=ui_open,scores={UI.Shop.Gun.2=1..}] at @s run function guns_data:ui/menu/page/click/_
    execute as @a[tag=ui_open,scores={UI.Shop.Gun.3=1..}] at @s run function guns_data:ui/menu/page/click/_
    execute as @a[tag=ui_open,scores={UI.Shop.Gun.4=1..}] at @s run function guns_data:ui/menu/page/click/_
    execute as @a[tag=ui_open,scores={UI.Shop.Gun.5=1..}] at @s run function guns_data:ui/menu/page/click/_
    execute as @a[tag=ui_open,scores={UI.Shop.back=1..}] at @s run function guns_data:ui/menu/page/click/_

    execute at @a[tag=ui_open] positioned ~ ~1.2 ~ as @e[type=item,distance=..1] if data entity @s Item.tag{faild:false} run kill @s
# リセット
    scoreboard players reset @a UI.Shop.Blank.Click
    scoreboard players reset @a UI.Shop.Gun.Click
    scoreboard players reset @a UI.Shop.Armor.Click
    scoreboard players reset @a UI.Shop.Armor.Chain.Click
    scoreboard players reset @a UI.Shop.Armor.Diamond.Click
    scoreboard players reset @a UI.Shop.Armor.Iron.Click