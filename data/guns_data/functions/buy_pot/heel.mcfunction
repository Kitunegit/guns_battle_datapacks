execute if score @s credit matches ..349 run tellraw @s "お金が足りません"
execute if score @s credit matches ..349 at @s run playsound entity.villager.no player @s ~ ~ ~ 1 1
execute if score @s credit matches ..349 run return 0
scoreboard players remove @s credit 350
give @s minecraft:splash_potion{CustomPotionColor:14629434,display:{Name:"\"治癒のクスリ\"",Lore:["\"みんなを癒そう！\""]},CustomPotionEffects:[{Id:6,Amplifier:2,Duration:20,ShowParticles:false},]} 2
execute at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 0.75
tellraw @s "治癒のクスリを購入しました。"