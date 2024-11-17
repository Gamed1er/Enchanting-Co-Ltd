scoreboard players set @s QuestTemp 0
execute store result score @s QuestTemp if items entity @s weapon.offhand #taglib:music_disc
execute if score @s QuestTemp matches 1.. run scoreboard players operation @s QuestJudgmental += @s QuestTemp
execute if score @s QuestTemp matches 1.. run tellraw @s ["",{"text":"【任務系統】","bold":true,"color":"blue"},{"text":"已繳交 ","color":"gray"},{"score": {"name": "@s", "objective": "QuestTemp"},"color":"green","bold":true},{"text":" 個唱片","color":"gray"}]
execute if score @s QuestTemp matches 1.. run item replace entity @a weapon.offhand with air
execute unless score @s QuestTemp matches 1.. run tellraw @s ["",{"text":"【任務系統】","bold":true,"color":"blue"},{"text":"你的副手未持有相關物品 !", "color": "gray"}]
scoreboard players set @s QuestTemp 0

execute if score @s QuestJudgmental >= 2102 QuestRequirements run function company:quests/message/complete/2102