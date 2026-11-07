execute if score @s credit matches ..999 run tellraw @s "お金が足りません"
execute if score @s credit matches ..999 at @s run playsound entity.villager.no player @s ~ ~ ~ 1 1
execute if score @s credit matches ..999 run return 0
scoreboard players remove @s credit 1000
item replace entity @s armor.chest with minecraft:iron_chestplate{Trim:{material:"iron",pattern:"snout"},Unbreakable:1b,HideFlags:4}
item replace entity @s armor.legs with minecraft:iron_leggings{Trim:{material:"iron",pattern:"snout"},Unbreakable:1b,HideFlags:4}
execute at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 0.75
tellraw @s "鉄防具を購入しました"