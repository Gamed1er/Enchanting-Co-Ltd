scoreboard players set @s QuestHandOn 0

execute store result score Random QuestTrigger run random value 0..1
execute store result score XpLevel QuestTrigger run data get entity @s XpLevel
execute if score XpLevel QuestTrigger < @s QuestXpRequiredMedium run scoreboard players set Random QuestTrigger -1

execute store result storage quest_id CostXp int -1 run scoreboard players get @s QuestXpRequiredMedium
execute if score Random QuestTrigger matches 0.. run function company:quests/cost_xp with storage quest_id
execute if score Random QuestTrigger matches 0.. run scoreboard players add @s QuestXpRequiredMedium 1

execute if score Random QuestTrigger matches 0..1 run scoreboard players set @s QuestID 2101
#execute if score Random QuestTrigger matches 1 run scoreboard players set @s QuestID 2102
#execute if score Random QuestTrigger matches 2 run scoreboard players set @s QuestID 2103

execute if score Random QuestTrigger matches 0..1 run function company:quests/message/start/2101
#execute if score Random QuestTrigger matches 1 run function company:quests/message/start/2102
#execute if score Random QuestTrigger matches 2 run function company:quests/message/start/2103

execute if score Random QuestTrigger matches -1 run tellraw @s ["",{"text":"【任務系統】","bold":true,"color":"dark_blue"},{"text":"經驗值不夠","color":"gray"}]


execute if score Random QuestTrigger matches 0.. run function company:quests/reset_judge