execute if score @s credit matches ..799 run tellraw @s "お金が足りません"
execute if score @s credit matches ..799 at @s run playsound entity.villager.no player @s ~ ~ ~ 1 1
execute if score @s credit matches ..799 run return 0
scoreboard players remove @s credit 800
item replace entity @s armor.chest with minecraft:chainmail_chestplate{Trim:{material:"amethyst",pattern:"dune"},Unbreakable:1b,HideFlags:4}
item replace entity @s armor.legs with minecraft:chainmail_leggings{Trim:{material:"diamond",pattern:"dune"},Unbreakable:1b,HideFlags:4}
execute at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 0.75
tellraw @s "チェーン防具を購入しました"