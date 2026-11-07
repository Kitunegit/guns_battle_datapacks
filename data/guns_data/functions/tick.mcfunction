execute if entity @a[tag=isGame] run function guns_data:game/system/tick
execute if entity @a[tag=isArea] run function guns_data:game/system/area/tick
execute as @a at @s run title @s actionbar [{"bold":true,"color":"white","text":"Credit:"},{"color":"dark_aqua","score":{"name":"@s","objective":"credit"}}]

# UI常時実行処理
    function guns_data:ui/tick