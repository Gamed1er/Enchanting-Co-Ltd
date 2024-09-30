execute unless entity @s[nbt={SelectedItem:{id:"minecraft:enchanted_book"}}] run title @s actionbar ["",{"text":"【其他功能系統】","bold":true,"color":"gray"},{"text":"請手持附魔書來回收","color":"gray"}]
execute unless entity @s[nbt={SelectedItem:{id:"minecraft:enchanted_book"}}] run execute at @s run playsound entity.villager.no master @a ~ ~ ~ 1.0 1.0 1.0
execute unless entity @s[nbt={SelectedItem:{id:"minecraft:enchanted_book"}}] run return 0

execute if entity @s[nbt={SelectedItem:{id:"minecraft:enchanted_book"}}] run title @s actionbar ["",{"text":"【其他功能系統】","bold":true,"color":"gray"},{"text":"已回收附魔書，獲得青金石和經驗","color":"gray"}]
scoreboard players add @s BankLapisCount 10
experience add @s 5 points
execute at @s run playsound entity.experience_orb.pickup master @a ~ ~ ~ 1.0 1.0 1.0
item replace entity @s weapon.mainhand with book 1