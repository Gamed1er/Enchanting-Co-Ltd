scoreboard players add @s AchievementsEatBread 1
advancement revoke @s only company:achieve/consume_bread

execute if score @s[advancements = {company:achieve/consume_20_bread = false}] AchievementsEatBread matches 20 run give @s enchanted_book[stored_enchantments={levels:{"minecraft:unbreaking":4}}] 1
execute if score @s[advancements = {company:achieve/consume_20_bread = false}] AchievementsEatBread matches 20 run advancement grant @s only company:achieve/consume_20_bread
execute if score @s[advancements = {company:achieve/consume_100_bread = false}] AchievementsEatBread matches 100 run give @s enchanted_book[stored_enchantments={levels:{"minecraft:efficiency":7}}] 1
execute if score @s[advancements = {company:achieve/consume_100_bread = false}] AchievementsEatBread matches 100 run advancement grant @s only company:achieve/consume_100_bread
execute if score @s AchievementsEatBread matches 200 run advancement grant @s only company:achieve/consume_200_bread
execute if score @s AchievementsEatBread matches 200 run function boss:bread_master/spawn_book
execute if score @s AchievementsEatBread matches 200 run scoreboard players set @s AchievementsEatBread 0