execute if score @s credit matches ..499 run tellraw @s "お金が足りません"
execute if score @s credit matches ..499 at @s run playsound entity.villager.no player @s ~ ~ ~ 1 1
execute if score @s credit matches ..499 run return 0
scoreboard players remove @s credit 500
give @s minecraft:splash_potion{CustomPotionColor:14629434,display:{Name:"\"強脚のクスリ\"",Lore:["\"速戦即決！\""]},CustomPotionEffects:[{Id:1,Amplifier:2,Duration:150},{Id:8,Amplifier:2,Duration:150},{Id:9,Amplifier:2,Duration:100,ShowParticles:false},{Id:17,Amplifier:2,Duration:40,ShowParticles:false}]}
execute at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 0.75
tellraw @s "強脚のクスリを購入しました。"