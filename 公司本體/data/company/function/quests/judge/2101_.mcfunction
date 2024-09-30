execute if predicate company:quests/2101 run scoreboard players add @s QuestJudgmental 1
advancement revoke @a only company:quests/2101

execute if score @s QuestJudgmental >= 2101 QuestRequirements run function company:quests/message/complete/2101