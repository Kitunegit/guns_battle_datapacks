#tellraw @a "初期セットアップを実行します"
team add Red "RED"
team modify Red nametagVisibility hideForOtherTeams
team modify Red color red
team modify Red collisionRule never
team modify Red friendlyFire false

team add Blue "BLUE"
team modify Blue nametagVisibility hideForOtherTeams
team modify Blue color blue
team modify Blue collisionRule never
team modify Blue friendlyFire false

scoreboard objectives add credit dummy
scoreboard players set @a credit 0

scoreboard objectives add death deathCount
scoreboard players add @a death 0

scoreboard objectives add remaining dummy
scoreboard players set $Blue remaining 0
scoreboard players set $Red remaining 0

scoreboard objectives add Count dummy

bossbar add count_blue "青カウント"
bossbar add count_red "赤カウント"

bossbar set count_blue color blue
bossbar set count_blue color blue
bossbar set count_blue max 400

bossbar set count_red color red
bossbar set count_red max 400

scoreboard objectives add Death_timer dummy
scoreboard objectives add Death_timer dummy

# UI用のシュルカーボックスを0 0 0に設置する
    setblock 0 0 0 white_shulker_box

# シュルカーボックスを常時読み込む
    forceload add 0 0 0 0

# UIシステム用スコア
    scoreboard objectives add UI.Shop.Timer dummy "チェスト付きトロッコのkillタイマー"
    scoreboard objectives add UUID dummy "識別用ID"
    scoreboard objectives add Temporaty dummy "一時保管用"
    scoreboard objectives add UI.Shop.Page dummy "ショップページ"
    scoreboard objectives add UI.Shop.Blank.Click dummy "ショップクリック"
    scoreboard objectives add UI.Shop.Blank1.Click dummy "ショップクリック"
    scoreboard objectives add UI.Shop.Gun.Click dummy "ショップクリック"
    scoreboard objectives add UI.Shop.Armor.Click dummy "ショップクリック"
    scoreboard objectives add UI.Shop.Armor.Chain.Click dummy "ショップクリック"
    scoreboard objectives add UI.Shop.Armor.Diamond.Click dummy "ショップクリック"
    scoreboard objectives add UI.Shop.Armor.Iron.Click dummy "ショップクリック"
    scoreboard objectives add UI.Shop.Price dummy "ショップのアイテムの値段"
    scoreboard objectives add UI.Shop.Armor.Buy.No dummy "ショップのアイテム購入（いいえ）"
    scoreboard objectives add UI.Shop.Armor.Buy.Yes dummy "ショップのアイテム購入（はい）"
    scoreboard objectives add UI.Shop.Gun.sub dummy "ショップのアイテム購入（サブマシンガン）"
    scoreboard objectives add UI.Shop.Gun.assault dummy "ショップのアイテム購入（サブマシンガン）"
    scoreboard objectives add UI.Shop.Gun.handgun dummy "ショップのアイテム購入（サブマシンガン）"
    scoreboard objectives add UI.Shop.Gun.shotgun dummy "ショップのアイテム購入（サブマシンガン）"
    scoreboard objectives add UI.Shop.Gun.sniper dummy "ショップのアイテム購入（サブマシンガン）"
    scoreboard objectives add UI.Shop.Gun.1 dummy "ショップのアイテム購入（銃1）"
    scoreboard objectives add UI.Shop.Gun.2 dummy "ショップのアイテム購入（銃2）"
    scoreboard objectives add UI.Shop.Gun.3 dummy "ショップのアイテム購入（銃3）"
    scoreboard objectives add UI.Shop.Gun.4 dummy "ショップのアイテム購入（銃4）"
    scoreboard objectives add UI.Shop.Gun.5 dummy "ショップのアイテム購入（銃5）"
    scoreboard objectives add UI.Shop.potion.1 dummy "ショップのアイテム購入（銃1）"
    scoreboard objectives add UI.Shop.potion.2 dummy "ショップのアイテム購入（銃2）"
    scoreboard objectives add UI.Shop.potion.3 dummy "ショップのアイテム購入（銃3）"
    scoreboard objectives add UI.Shop.potion.4 dummy "ショップのアイテム購入（銃4）"
    scoreboard objectives add UI.Shop.potion.5 dummy "ショップのアイテム購入（銃5）"
    scoreboard objectives add UI.Shop.grenade.1 dummy "ショップのアイテム購入（銃1）"
    scoreboard objectives add UI.Shop.grenade.2 dummy "ショップのアイテム購入（銃2）"
    scoreboard objectives add UI.Shop.grenade.3 dummy "ショップのアイテム購入（銃3）"
    scoreboard objectives add UI.Shop.grenade.4 dummy "ショップのアイテム購入（銃4）"
    scoreboard objectives add UI.Shop.grenade.5 dummy "ショップのアイテム購入（銃5）"
    scoreboard objectives add UI.Shop.back dummy "ショップの最初のページに戻る"
    scoreboard objectives add UI.Shop.assist dummy "ショップクリック"
    scoreboard objectives add UI.Shop.potion dummy "ショップクリック"
    scoreboard objectives add UI.Shop.grenade dummy "ショップクリック"

# shop storage
    #data modify storage ui: Item set value {assault:{1:{Count:1b,Slot:11b,id:"tacz:modern_kinetic_gun",tag:{AttachmentSCOPE:{Count:1b,id:"tacz:attachment",tag:{AttachmentId:"tacz:sight_exp3"}},GunCurrentAmmoCount:29,GunFireMode:"AUTO",GunId:"tacz:ak47",HasBulletInBarrel:1b,faild:0b,price:400,ui:1}},2:{Count:1b,Slot:12b,id:"tacz:modern_kinetic_gun",tag:{AttachmentSCOPE:{Count:1b,id:"tacz:attachment",tag:{AttachmentId:"tacz:sight_okp7"}},GunCurrentAmmoCount:29,GunFireMode:"BURST",GunId:"tacz:qbz_95",HasBulletInBarrel:1b,faild:0b,price:600,ui:2}},3:{Count:1b,Slot:13b,id:"tacz:modern_kinetic_gun",tag:{AttachmentEXTENDED_MAG:{Count:0b,id:"minecraft:air"},AttachmentGRIP:{Count:0b,id:"minecraft:air"},AttachmentLASER:{Count:0b,id:"minecraft:air"},AttachmentMUZZLE:{Count:0b,id:"minecraft:air"},AttachmentSCOPE:{Count:1b,id:"tacz:attachment",tag:{AttachmentId:"tacz:scope_vudu",ZoomNumber:22}},GunCurrentAmmoCount:19,GunFireMode:"AUTO",GunId:"tacz:fn_fal",HasBulletInBarrel:1b,faild:0b,price:600,ui:3}}},grenade:{1:{Count:1b,Slot:11b,id:"lrtactical:throwable",tag:{ThrowableId:"lrtactical:molotov",faild:0b,price:300,ui:1}},2:{Count:1b,Slot:12b,id:"lrtactical:throwable",tag:{ThrowableId:"lrtactical:m67",faild:0b,price:150,ui:2}},3:{Count:1b,Slot:13b,id:"lrtactical:throwable",tag:{ThrowableId:"lrtactical:smoke_grenade",faild:0b,price:250,ui:3}},4:{Count:1b,Slot:14b,id:"lrtactical:throwable",tag:{ThrowableId:"lrtactical:flash_grenade",faild:0b,price:300,ui:4}},5:{Slot:15b}},handgun:{1:{Count:1b,Slot:11b,id:"tacz:modern_kinetic_gun",tag:{AttachmentMUZZLE:{Count:1b,id:"tacz:attachment",tag:{AttachmentId:"tacz:muzzle_silencer_ptilopsis"}},AttachmentSCOPE:{Count:1b,id:"tacz:attachment",tag:{AttachmentId:"tacz:sight_sro_dot"}},GunCurrentAmmoCount:14,GunFireMode:"SEMI",GunId:"tacz:glock_17",HasBulletInBarrel:1b,faild:0b,price:200,ui:1}},2:{Count:1b,Slot:12b,id:"tacz:modern_kinetic_gun",tag:{AttachmentMUZZLE:{Count:1b,id:"tacz:attachment",tag:{AttachmentId:"tacz:deagle_golden_long_barrel"}},AttachmentSCOPE:{Count:1b,id:"tacz:attachment",tag:{AttachmentId:"tacz:sight_t1"}},GunCurrentAmmoCount:9,GunFireMode:"SEMI",GunId:"tacz:deagle_golden",HasBulletInBarrel:1b,faild:0b,price:400,ui:2}},3:{Count:1b,Slot:13b,id:"tacz:modern_kinetic_gun",tag:{AttachmentSCOPE:{Count:1b,id:"tacz:attachment",tag:{AttachmentId:"tacz:sight_acro_rifle"}},GunCurrentAmmoCount:6,GunFireMode:"SEMI",GunId:"tacz:rhino357",HasBulletInBarrel:1b,faild:0b,price:300,ui:3}}},potion:{1:{Count:1b,Slot:11b,id:"minecraft:potion",tag:{CustomPotionEffects:[{Ambient:1b,Amplifier:1,Duration:400,Id:11},{Amplifier:4,Duration:400,Id:22,ShowParticles:0b}],display:{Lore:['"防御態勢！"'],Name:'"強靭のクスリ"'},faild:0b,price:400,ui:1}},2:{Count:1b,Slot:12b,id:"minecraft:splash_potion",tag:{CustomPotionColor:14629434,CustomPotionEffects:[{Amplifier:2,Duration:20,Id:6,ShowParticles:0b}],display:{Lore:['"みんなを癒そう！"'],Name:'"治癒のクスリ"'},faild:0b,price:350,ui:2}},3:{Count:1b,Slot:13b,id:"minecraft:splash_potion",tag:{CustomPotionColor:14629434,CustomPotionEffects:[{Amplifier:2,Duration:150,Id:1},{Amplifier:2,Duration:150,Id:8},{Amplifier:2,Duration:100,Id:9,ShowParticles:0b},{Amplifier:2,Duration:40,Id:17,ShowParticles:0b}],display:{Lore:['"速戦即決！"'],Name:'"強脚のクスリ"'},faild:0b,price:500,ui:3}},4:{Count:2b,Slot:14b,id:"lrtactical:consumable",tag:{ConsumableId:"lrtactical:ai2",faild:0b,price:250,ui:4}},5:{Slot:15b}},shotgun:{1:{Count:1b,Slot:11b,id:"tacz:modern_kinetic_gun",tag:{AttachmentSTOCK:{Count:1b,id:"tacz:attachment",tag:{AttachmentId:"tacz:stock_heavy_spas_12"}},GunCurrentAmmoCount:4,GunFireMode:"SEMI",GunId:"tacz:spas_12",HasBulletInBarrel:1b,faild:0b,price:500,ui:1}},2:{Count:1b,Slot:12b,id:"tacz:modern_kinetic_gun",tag:{AttachmentEXTENDED_MAG:{Count:1b,id:"tacz:attachment",tag:{AttachmentId:"tacz:extended_mag_1"}},AttachmentGRIP:{Count:1b,id:"tacz:attachment",tag:{AttachmentId:"tacz:grip_rk1_b25u"}},AttachmentSCOPE:{Count:0b,id:"minecraft:air"},GunCurrentAmmoCount:16,GunFireMode:"AUTO",GunId:"tacz:aa12",HasBulletInBarrel:1b,faild:0b,price:650,ui:2}}},sniper:{1:{Count:1b,Slot:11b,id:"tacz:modern_kinetic_gun",tag:{AttachmentSCOPE:{Count:1b,id:"tacz:attachment",tag:{AttachmentId:"tacz:scope_standard_8x",ZoomNumber:8}},GunCurrentAmmoCount:5,GunFireMode:"SEMI",GunId:"tacz:ai_awp",HasBulletInBarrel:1b,faild:0b,price:1400,ui:1}},2:{Count:1b,Slot:12b,id:"tacz:modern_kinetic_gun",tag:{AttachmentSCOPE:{Count:1b,id:"tacz:attachment",tag:{AttachmentId:"tacz:scope_1873_6x"}},GunCurrentAmmoCount:1,GunFireMode:"SEMI",GunId:"tacz:springfield1873",HasBulletInBarrel:1b,faild:0b,price:1100,ui:2}},3:{Count:1b,Slot:13b,id:"tacz:modern_kinetic_gun",tag:{AttachmentSCOPE:{Count:1b,id:"tacz:attachment",tag:{AttachmentId:"tacz:scope_98k"}},GunCurrentAmmoCount:4,GunFireMode:"SEMI",GunId:"tacz:kar98",HasBulletInBarrel:1b,faild:0b,price:1250,ui:3}}},subgun:{1:{Count:1b,Slot:11b,id:"tacz:modern_kinetic_gun",tag:{AttachmentEXTENDED_MAG:{Count:0b,id:"minecraft:air"},AttachmentGRIP:{Count:1b,id:"tacz:attachment",tag:{AttachmentId:"tacz:grip_vertical_talon"}},AttachmentSCOPE:{Count:1b,id:"tacz:attachment",tag:{AttachmentId:"tacz:sight_coyote"}},AttachmentSTOCK:{Count:1b,id:"tacz:attachment",tag:{AttachmentId:"tacz:oem_stock_tactical"}},GunCurrentAmmoCount:19,GunFireMode:"AUTO",GunId:"tacz:hk_mp5a5",HasBulletInBarrel:1b,faild:0b,price:300,ui:1}},2:{Count:1b,Slot:12b,id:"tacz:modern_kinetic_gun",tag:{AttachmentMUZZLE:{Count:1b,id:"tacz:attachment",tag:{AttachmentId:"tacz:muzzle_brake_trex"}},GunCurrentAmmoCount:50,GunFireMode:"AUTO",GunId:"tacz:p90",HasBulletInBarrel:1b,faild:0b,price:400,ui:2}}}}