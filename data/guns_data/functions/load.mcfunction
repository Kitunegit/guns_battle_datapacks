scoreboard objectives add ver dummy
scoreboard players add $vers ver 0
scoreboard players add $b_vers ver 0

#Verを記入
scoreboard players set $vers ver 1
execute unless score $vers ver = $b_vers ver run tellraw @a [{"text":"前回のロードからのアップデートを検知","color":"red","bold": true},{"color":"green","text":"v","bold": false},{"color":"green","score":{"name":"$b_vers","objective":"ver"}},{"text":" to ","color":"white"},{"color":"green","text":"v"},{"color":"green","score":{"name":"$vers","objective":"ver"}}]
scoreboard players set $b_vers ver 1

tellraw @a [{"text":"[Guns_Datapacks] ","color":"red"},{"text":"正常にデータパックがロードされました！","color":"white"},{"text":"[v0.0.1]","color":"green"}]
execute as @a at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 2
function guns_data:setup