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