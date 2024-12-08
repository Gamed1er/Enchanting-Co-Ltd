schedule function system:tick_20min 1200s

#QuestExp
scoreboard players set @a QuestXpRequiredEasy 2
scoreboard players set @a QuestXpRequiredMedium 5
scoreboard players set @a QuestXpRequiredHard 10

tellraw @s ["",{"text":"【任務系統】","bold":true,"color":"blue"},{"text":"所有任務的經驗值消耗已重製","color":"gray"}]


