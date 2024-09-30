scoreboard players add @s[scores={QuestID = 1103}] QuestJudgmental 1
advancement revoke @a only company:quests/1103

execute if score @s QuestJudgmental >= 1103 QuestRequirements run function company:quests/message/complete/1103