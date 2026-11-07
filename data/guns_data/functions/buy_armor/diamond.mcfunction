execute if score @s credit matches ..1499 run tellraw @s "お金が足りません"
execute if score @s credit matches ..1499 at @s run playsound entity.villager.no player @s ~ ~ ~ 1 1
execute if score @s credit matches ..1499 run return 0
scoreboard players remove @s credit 1500
item replace entity @s armor.chest with minecraft:diamond_chestplate{Trim:{material:"netherite",pattern:"wayfinder"},Unbreakable:1b,HideFlags:4}
item replace entity @s armor.legs with minecraft:diamond_leggings{Trim:{material:"netherite",pattern:"wayfinder"},Unbreakable:1b,HideFlags:4}
execute at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 0.75
tellraw @s "ダイア防具を購入しました"