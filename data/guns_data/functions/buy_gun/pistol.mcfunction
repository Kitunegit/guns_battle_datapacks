execute if score @s credit matches ..199 run tellraw @s "お金が足りません"
execute if score @s credit matches ..199 at @s run playsound entity.villager.no player @s ~ ~ ~ 1 1
execute if score @s credit matches ..199 run return 0
scoreboard players remove @s credit 200
give @s tacz:modern_kinetic_gun{HasBulletInBarrel: 1b, GunId: "tti_gunpack:g45_snake_eye", AttachmentSCOPE: {id: "tacz:attachment", Count: 1b, tag: {AttachmentId: "gucci_attachments:sight_olight_red_dot"}}, AttachmentMUZZLE: {id: "tacz:attachment", Count: 1b, tag: {AttachmentId: "arip:muzzle_fd917"}}, GunFireMode: "SEMI", GunCurrentAmmoCount: 19}
execute at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 0.75
tellraw @s "シンプルサプピストルを購入しました。"