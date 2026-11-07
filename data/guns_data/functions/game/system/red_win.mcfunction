title @a title ["Team ",{"bold":true,"color":"red","text":"Red"}, " WIN!"]
tellraw @a ["__________________\nTeam ",{"bold":true,"color":"red","text":"Red"}, " WIN!",{"text":"\n"},{"selector":"@a[team=Red]"}]
execute as @a at @s run playsound minecraft:item.totem.use player @s ~ ~ ~ 0.5 0.7
schedule function guns_data:game/fin 10s
tag @a remove isGame
tag @a remove isArea