scoreboard players add @s[scores={QuestID = 1104}] QuestJudgmental 1
advancement revoke @a only company:quests/1104

execute if score @s QuestJudgmental >= 1104 QuestRequirements run function company:quests/message/complete/1104