execute if score @s credit matches ..399 run tellraw @s "お金が足りません"
execute if score @s credit matches ..399 at @s run playsound entity.villager.no player @s ~ ~ ~ 1 1
execute if score @s credit matches ..399 run return 0
scoreboard players remove @s credit 400
give @s tacz:modern_kinetic_gun{HasBulletInBarrel: 1b, GunId: "tacz:deagle_golden", AttachmentSCOPE: {id: "tacz:attachment", Count: 1b, tag: {AttachmentId: "tacz:sight_t1"}}, AttachmentMUZZLE: {id: "tacz:attachment", Count: 1b, tag: {AttachmentId: "tacz:deagle_golden_long_barrel"}}, GunFireMode: "SEMI", GunCurrentAmmoCount: 9}
execute at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 0.75
tellraw @s "ゴールデンディーグルを購入しました。"