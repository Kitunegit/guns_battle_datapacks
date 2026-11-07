execute if score @s credit matches ..1999 run tellraw @s "お金が足りません"
execute if score @s credit matches ..1999 at @s run playsound entity.villager.no player @s ~ ~ ~ 1 1
execute if score @s credit matches ..1999 run return 0
scoreboard players remove @s credit 2000
give @s tacz:modern_kinetic_gun{AttachmentEXTENDED_MAG: {id: "tacz:attachment", Count: 1b, tag: {AttachmentId: "tacz:light_extended_mag_1"}}, HasBulletInBarrel: 1b, GunFireMode: "AUTO", GunId: "emxarms:emx_pulsex2", GunCurrentAmmoCount: 24}
execute at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 0.75
tellraw @s "二丁拳銃を購入しました。"