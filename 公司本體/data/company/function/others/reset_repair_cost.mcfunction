execute if score @s BankLapisCount matches 250.. unless predicate company:others/repair_check if items entity @s weapon.mainhand * run tag @s add rs
execute if score @s BankLapisCount matches 250.. if predicate company:others/repair_check run tellraw @s ["",{"text":"【其他功能系統】","bold":true,"color":"gray"},{"text":"當前手持物品不需要重設附魔懲罰 !","color":"gray"}]
execute if entity @s[tag = rs] run item modify entity @s weapon.mainhand company:reset_repair_cost
execute if entity @s[tag = rs] run scoreboard players remove @s BankLapisCount 250
execute if entity @s[tag = rs] run tellraw @s ["",{"text":"【其他功能系統】","bold":true,"color":"gray"},{"text":"物品附魔懲罰重設完成","color":"gray"}]
execute unless score @s BankLapisCount matches 250.. run tellraw @s ["",{"text":"【其他功能系統】","bold":true,"color":"gray"},{"text":"你銀行裡的青金石不足 !","color":"gray"}]
tag @s remove rs