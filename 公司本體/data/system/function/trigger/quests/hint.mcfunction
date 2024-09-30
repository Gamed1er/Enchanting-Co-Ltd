execute store result storage quest_id Quest1 int 1.0 run scoreboard players get @s QuestID
function company:quests/message/hint/choose with storage minecraft:quest_id

scoreboard players set @s QuestTrigger -1