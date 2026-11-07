execute if score @s credit matches ..399 run tellraw @s "お金が足りません"
execute if score @s credit matches ..399 at @s run playsound entity.villager.no player @s ~ ~ ~ 1 1
execute if score @s credit matches ..399 run return 0
scoreboard players remove @s credit 400
give @s tacz:modern_kinetic_gun{HasBulletInBarrel: 1b, GunId: "lradd:p90", AttachmentSCOPE: {id: "minecraft:air", Count: 0b}, AttachmentMUZZLE: {id: "tacz:attachment", Count: 1b, tag: {AttachmentId: "arip:arip_breach"}}, GunFireMode: "AUTO", GunCurrentAmmoCount: 50}
execute at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 0.75
tellraw @s "ラピッドマシンガンを購入しました。"