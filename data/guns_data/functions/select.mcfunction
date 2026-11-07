execute at @s run playsound minecraft:ui.button.click player @s ~ ~ ~ 1 2
tellraw @s [{"text":"_____________________________________________"},{"text":"\n"},{"bold":true,"clickEvent":{"action":"run_command","value":"/function guns_data:select_type/gun"},"color":"white","hoverEvent":{"action":"show_text","value":[{"text":"購入ページへ"}]},"italic":false,"obfuscated":false,"strikethrough":false,"text":"銃火器","underlined":true},{"text":"\n\n"},{"bold":true,"clickEvent":{"action":"run_command","value":"/function guns_data:select_type/armor"},"hoverEvent":{"action":"show_text","value":[{"text":"購入ページへ"}]},"italic":false,"text":"防具","underlined":true},{"text":"\n\n"},{"bold":true,"clickEvent":{"action":"run_command","value":"/function guns_data:select_type/potion"},"hoverEvent":{"action":"show_text","value":[{"text":"購入ページへ"}]},"italic":false,"text":"身体力増強薬","underlined":true}]


#Basic_SMG

#P90

#AKM

#TR-1 RacingRifle

#MU73

#IllegalMartyrs

#GoldenDeagle

#SneakEye

#AA-12

#CLF10

#DB2
#give @p tacz:modern_kinetic_gun{HasBulletInBarrel: 1b, GunFireMode: "SEMI", GunId: "tacz:db_short", GunCurrentAmmoCount: 2, AttachmentSTOCK: {id: "tacz:attachment", Count: 1b, tag: {AttachmentId: "tacz:oem_stock_tactical"}}}
#M200
#
#AX50
#