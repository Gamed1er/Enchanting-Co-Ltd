scoreboard players add @s QuestCompleteNum 1
execute if score @s QuestCompleteNum matches 5 run advancement grant @s only company:achieve/complete_5_mission
execute if score @s QuestCompleteNum matches 20 run advancement grant @s only company:achieve/complete_20_mission
execute if score @s QuestCompleteNum matches 50 run advancement grant @s only company:achieve/complete_50_mission
