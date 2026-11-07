execute if score @s credit matches ..1499 run tellraw @s "お金が足りません"
execute if score @s credit matches ..1499 at @s run playsound entity.villager.no player @s ~ ~ ~ 1 1
execute if score @s credit matches ..1499 run return 0
scoreboard players remove @s credit 1500
give @p tacz:modern_kinetic_gun{HasBulletInBarrel: 1b, GunId: "xiaomantou:ax50", AttachmentSCOPE: {id: "tacz:attachment", Count: 1b, tag: {ZoomNumber: 1, AttachmentId: "arip:sight_eotech_vudu_ffp_5t25x50"}}, AttachmentMUZZLE: {id: "minecraft:air", Count: 0b}, GunFireMode: "SEMI", GunCurrentAmmoCount: 5}
execute at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 0.75
tellraw @s "ヘビーブレイクスナイパーライフルを購入しました。"