execute if score @s credit matches ..1249 run tellraw @s "お金が足りません"
execute if score @s credit matches ..1249 at @s run playsound entity.villager.no player @s ~ ~ ~ 1 1
execute if score @s credit matches ..1249 run return 0
scoreboard players remove @s credit 1250
give @s tacz:modern_kinetic_gun{HasBulletInBarrel: 1b, GunId: "qkl:cbr11sp", AttachmentSCOPE: {id: "tacz:attachment", Count: 1b, tag: {ZoomNumber: 1, AttachmentId: "gucci_attachments:scope_karrina"}}, AttachmentMUZZLE: {id: "minecraft:air", Count: 0b}, GunFireMode: "SEMI", GunCurrentAmmoCount: 5}
execute at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 0.75
tellraw @s "ベーシックスナイパーライフルを購入しました。"