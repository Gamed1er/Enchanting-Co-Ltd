scoreboard players set @s QuestTemp 0
execute store result score @s QuestTemp if items entity @s weapon.offhand milk_bucket
execute if score @s QuestTemp matches 1.. run scoreboard players operation @s QuestJudgmental += @s QuestTemp
execute if score @s QuestTemp matches 1.. run tellraw @s ["",{"text":"【任務系統】","bold":true,"color":"blue"},{"text":"已繳交 ","color":"gray"},{"score": {"name": "@s", "objective": "QuestTemp"},"color":"green","bold":true},{"text":" 個牛奶桶","color":"gray"}]
execute if score @s QuestTemp matches 1.. run item replace entity @a weapon.offhand with air
execute unless score @s QuestTemp matches 1.. run tellraw @s ["",{"text":"【任務系統】","bold":true,"color":"blue"},{"text":"你的副手未持有相關物品 !", "color": "gray"}]
scoreboard players set @s QuestTemp 0

execute if score @s QuestJudgmental >= 1106 QuestRequirements run function company:quests/message/complete/1106