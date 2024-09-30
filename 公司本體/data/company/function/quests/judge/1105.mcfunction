scoreboard players add @s[scores = {QuestMakingBread = 1..}] QuestJudgmental 1

scoreboard players remove @s[scores = {QuestMakingBread = 1..}] QuestMakingBread 1

execute if score @s QuestJudgmental >= 1105 QuestRequirements run function company:quests/message/complete/1105