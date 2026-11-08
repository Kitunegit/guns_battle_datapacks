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
    scoreboard objectives add UI.Shop.back dummy "ショップの最初のページに戻る"