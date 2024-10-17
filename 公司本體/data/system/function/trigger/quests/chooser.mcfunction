execute store result storage quest_id Quest1 int 1.0 run scoreboard players get @s QuestID

execute if score @s QuestTrigger matches 0 run function company:quests/cancel
execute if score @s QuestTrigger matches 1 run function company:quests/confirm_cancel
execute if score @s QuestTrigger matches 3 run function company:quests/easy_quests
execute if score @s QuestTrigger matches 4 run function company:quests/medium_quests


execute if score @s QuestTrigger matches 2 run function company:quests/message/hint/choose with storage minecraft:quest_id

execute if score @s QuestTrigger matches 6 unless score @s QuestHandOn matches 1 run tellraw @s ["",{"text":"【任務系統】","bold":true,"color":"dark_blue"},{"text":"當前的任務不需要繳交任何物品","color":"gray"}]
execute if score @s QuestTrigger matches 6 if score @s QuestHandOn matches 1 run function company:quests/handon with storage minecraft:quest_id


scoreboard players set @s QuestTrigger -1