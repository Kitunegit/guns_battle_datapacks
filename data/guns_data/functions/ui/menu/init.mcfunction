#> ui:init
# 開かれたUIの初期化処理

# プレイヤーとの結び付け
    execute positioned 0.0 0.0 0.0 as @e[type=marker,sort=nearest,limit=1] run scoreboard players operation $UIPlayerID Temporaty = @s UUID
    execute if score $UIPlayerID Temporaty = @p[tag=ui_open] UUID positioned ~ ~-1.1 ~ run scoreboard players operation @s UUID = $UIPlayerID Temporaty
    execute if score $UIPlayerID Temporaty = @p[tag=ui_open] UUID positioned ~ ~-1.1 ~ run tag @s add UIusing
# チェスト付きトロッコにも適応
    execute on passengers run scoreboard players operation @s UUID = $UIPlayerID Temporaty
    execute on passengers run tag @s add UIusing
# 開いたトロッコはkillされないようにする
    scoreboard players set @e[tag=shop_ui,scores={UUID=1..}] UI.Shop.Timer -1

# リセット
    scoreboard players reset $UIPlayerID Temporaty