execute if score @s credit matches ..599 run tellraw @s "お金が足りません"
execute if score @s credit matches ..599 at @s run playsound entity.villager.no player @s ~ ~ ~ 1 1
execute if score @s credit matches ..599 run return 0
scoreboard players remove @s credit 600
give @s tacz:modern_kinetic_gun{AttachmentEXTENDED_MAG: {id: "minecraft:air", Count: 0b}, HasBulletInBarrel: 1b, GunId: "tti_gunpack:tti_tr1", AttachmentSCOPE: {id: "tacz:attachment", Count: 1b, tag: {ZoomNumber: 5, AttachmentId: "gucci_attachments:scope_karrina"}}, AttachmentMUZZLE: {id: "tacz:attachment", Count: 1b, tag: {AttachmentId: "arip:arip_arrogance"}}, GunFireMode: "SEMI", GunCurrentAmmoCount: 30, AttachmentGRIP: {id: "tacz:attachment", Count: 1b, tag: {AttachmentId: "gucci_attachments:grip_flat"}}, AttachmentSTOCK: {id: "tacz:attachment", Count: 1b, tag: {AttachmentId: "tacz:stock_tactical_ar"}}}
execute at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 0.75
tellraw @s "ステイブルライフルを購入しました。"