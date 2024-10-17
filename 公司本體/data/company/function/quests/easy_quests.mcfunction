scoreboard players set @s QuestHandOn 0

execute store result score Random QuestTrigger run random value 0..5
execute store result score XpLevel QuestTrigger run data get entity @s XpLevel
execute if score XpLevel QuestTrigger < @s QuestXpRequiredEasy run scoreboard players set Random QuestTrigger -1

execute store result storage quest_id CostXp int -1 run scoreboard players get @s QuestXpRequiredEasy
execute if score Random QuestTrigger matches 0.. run function company:quests/cost_xp with storage quest_id
execute if score Random QuestTrigger matches 0.. run scoreboard players add @s QuestXpRequiredEasy 1

execute if score Random QuestTrigger matches 0.. run function company:quests/reset_judge

execute if score Random QuestTrigger matches 0 run scoreboard players set @s QuestID 1101
execute if score Random QuestTrigger matches 1 run scoreboard players set @s QuestID 1102
execute if score Random QuestTrigger matches 2 run scoreboard players set @s QuestID 1103
execute if score Random QuestTrigger matches 3 run scoreboard players set @s QuestID 1104
execute if score Random QuestTrigger matches 4 run scoreboard players set @s QuestID 1105
execute if score Random QuestTrigger matches 5 run scoreboard players set @s QuestID 1106

execute if score Random QuestTrigger matches 0 run function company:quests/message/start/1101
execute if score Random QuestTrigger matches 1 run function company:quests/message/start/1102
execute if score Random QuestTrigger matches 2 run function company:quests/message/start/1103
execute if score Random QuestTrigger matches 3 run function company:quests/message/start/1104
execute if score Random QuestTrigger matches 4 run function company:quests/message/start/1105
execute if score Random QuestTrigger matches 5 run function company:quests/message/start/1106

execute if score Random QuestTrigger matches -1 run tellraw @s ["",{"text":"【任務系統】","bold":true,"color":"dark_blue"},{"text":"經驗值不夠","color":"gray"}]


