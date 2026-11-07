execute if score @s credit matches ..399 run tellraw @s "お金が足りません"
execute if score @s credit matches ..399 at @s run playsound entity.villager.no player @s ~ ~ ~ 1 1
execute if score @s credit matches ..399 run return 0
scoreboard players remove @s credit 400
give @s minecraft:potion{display:{Name:"\"強靭のクスリ\"",Lore:["\"防御態勢！\""]},CustomPotionEffects:[{Id:11,Amplifier:1,Duration:400,Ambient:true},{Id:22,Amplifier:4,Duration:400,ShowParticles:false}]}
execute at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 0.75
tellraw @s "強靭のクスリを購入しました。"