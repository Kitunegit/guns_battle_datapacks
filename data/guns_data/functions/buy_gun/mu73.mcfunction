execute if score @s credit matches ..499 run tellraw @s "お金が足りません"
execute if score @s credit matches ..499 at @s run playsound entity.villager.no player @s ~ ~ ~ 1 1
execute if score @s credit matches ..499 run return 0
scoreboard players remove @s credit 500
give @s tacz:modern_kinetic_gun{AttachmentMUZZLE: {id: "tacz:attachment", Count: 1b, tag: {AttachmentId: "arip:arip_breach"}}, HasBulletInBarrel: 1b, GunFireMode: "SEMI", GunId: "qkl:mu73", GunCurrentAmmoCount: 6}
execute at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 0.75
tellraw @s "ワンショットライフルを購入しました。"