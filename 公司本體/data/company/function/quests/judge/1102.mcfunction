scoreboard players add @s[scores = {QuestMinedOakLog = 1..}] QuestJudgmental 1
scoreboard players add @s[scores = {QuestMinedBirchLog = 1..}] QuestJudgmental 1

scoreboard players remove @s[scores = {QuestMinedOakLog = 1..}] QuestMinedOakLog 1
scoreboard players remove @s[scores = {QuestMinedBirchLog = 1..}] QuestMinedBirchLog 1

execute if score @s QuestJudgmental >= 1102 QuestRequirements run function company:quests/message/complete/1102