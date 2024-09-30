scoreboard players add @s[scores = {QuestMinedStone = 1..}] QuestJudgmental 1
scoreboard players add @s[scores = {QuestMinedDeepslate = 1..}] QuestJudgmental 1

scoreboard players remove @s[scores = {QuestMinedStone = 1..}] QuestMinedStone 1
scoreboard players remove @s[scores = {QuestMinedDeepslate = 1..}] QuestMinedDeepslate 1

execute if score @s QuestJudgmental >= 1101 QuestRequirements run function company:quests/message/complete/1101