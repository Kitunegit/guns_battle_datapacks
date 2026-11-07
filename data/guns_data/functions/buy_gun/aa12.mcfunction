execute if score @s credit matches ..649 run tellraw @s "お金が足りません"
execute if score @s credit matches ..649 at @s run playsound entity.villager.no player @s ~ ~ ~ 1 1
execute if score @s credit matches ..649 run return 0
scoreboard players remove @s credit 650
give @s tacz:modern_kinetic_gun{AttachmentEXTENDED_MAG: {id: "tacz:attachment", Count: 1b, tag: {AttachmentId: "tacz:extended_mag_1"}}, HasBulletInBarrel: 1b, GunId: "tacz:aa12", AttachmentSCOPE: {id: "tacz:attachment", Count: 1b, tag: {AttachmentId: "arip:sight_eotech_eflx_pica"}}, GunFireMode: "AUTO", GunCurrentAmmoCount: 16, AttachmentGRIP: {id: "tacz:attachment", Count: 1b, tag: {AttachmentId: "tacz:grip_vertical_talon"}}}
execute at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 0.75
tellraw @s "フルオートショットガンを購入しました。"