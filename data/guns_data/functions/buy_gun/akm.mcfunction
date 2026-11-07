execute if score @s credit matches ..399 run tellraw @s "お金が足りません"
execute if score @s credit matches ..399 at @s run playsound entity.villager.no player @s ~ ~ ~ 1 1
execute if score @s credit matches ..399 run return 0
scoreboard players remove @s credit 400
give @s tacz:modern_kinetic_gun{AttachmentEXTENDED_MAG: {id: "tacz:attachment", Count: 1b, tag: {AttachmentId: "tacz:extended_mag_1"}}, HasBulletInBarrel: 1b, GunId: "tacz:ak47", AttachmentSCOPE: {id: "tacz:attachment", Count: 1b, tag: {AttachmentId: "gucci_attachments:sight_hco"}}, AttachmentMUZZLE: {id: "tacz:attachment", Count: 1b, tag: {AttachmentId: "tacz:muzzle_compensator_trident"}}, GunFireMode: "AUTO", GunCurrentAmmoCount: 34, AttachmentSTOCK: {id: "tacz:attachment", Count: 1b, tag: {AttachmentId: "tacz:stock_tactical_ar"}}}
execute at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 0.75
tellraw @s "ベーシックライフルライフルを購入しました。"