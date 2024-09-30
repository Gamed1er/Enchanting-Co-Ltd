tellraw @s ["",{"text":"【任務系統】","bold":true,"color":"dark_blue"},{"text":"任務完成 !","color":"gray"},"\n",{"text":" 獎勵 : ","color":"gray"},"\n",{"text":"◦ 青金石 50 個","bold":true,"color":"blue"},"\n",{"text":"◦ 隨機附魔書 2~3 本","bold":true,"color":"dark_purple"}]

execute store result score Reward QuestTrigger run random value 0..1

scoreboard players add @s BankLapisCount 50
loot give @s loot company:quests/1102
scoreboard players set @s QuestJudgmental 0
scoreboard players set @s QuestID -1