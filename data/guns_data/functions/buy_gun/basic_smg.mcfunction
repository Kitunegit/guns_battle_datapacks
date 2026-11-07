execute if score @s credit matches ..299 run tellraw @s "お金が足りません"
execute if score @s credit matches ..299 at @s run playsound entity.villager.no player @s ~ ~ ~ 1 1
execute if score @s credit matches ..299 run return 0
scoreboard players remove @s credit 300
give @s tacz:modern_kinetic_gun{AttachmentEXTENDED_MAG: {id: "minecraft:air", Count: 0b}, HasBulletInBarrel: 1b, GunId: "tacz:hk_mp5a5", AttachmentSCOPE: {id: "tacz:attachment", Count: 1b, tag: {AttachmentId: "tacz:sight_coyote"}}, GunFireMode: "AUTO", GunCurrentAmmoCount: 30, AttachmentGRIP: {id: "tacz:attachment", Count: 1b, tag: {AttachmentId: "tacz:grip_vertical_talon"}}, AttachmentSTOCK: {id: "tacz:attachment", Count: 1b, tag: {AttachmentId: "tacz:oem_stock_tactical"}}}
execute at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 0.75
tellraw @s "ベーシックマシンガンを購入しました"