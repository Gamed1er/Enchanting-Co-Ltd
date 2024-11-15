execute as @a[scores = {OtherTrigger = 0..}] at @s run function system:trigger/other_trigger/chooser
execute as @a[scores = {HintRewardTrigger = 0..}] at @s run function system:trigger/hint_reward/chooser
execute as @a[scores = {QuestTrigger = 0..}] at @s run function system:trigger/quests/chooser
execute as @a[scores = {BankTrigger = 0..}] at @s run function system:trigger/bank/chooser
execute as @a[scores = {BossTrigger = 0..}] at @s run function system:trigger/boss/chooser
execute as @a unless score @s BankUseTrigger matches 0 run function system:trigger/bank/operate

execute as @a[scores = {QuestID = 1000..}] run execute store result storage quest_id Quest int 1.0 run scoreboard players get @s QuestID
execute as @a[scores = {QuestID = 1000..}] run function company:quests/judge/choose with storage minecraft:quest_id

#Trigger
    function system:enable_trigger

execute as @a[scores= {QuestID = 1..}] unless data entity @s SelectedItem run function system:trigger/quests/hint

#Company Teleport
execute as @a at @s unless entity @e[tag = to_overworld, distance = ..1.5] unless entity @e[tag = tp_to_company, distance = ..1.5] run scoreboard players set @s CompanyTeleportCooldown 0
execute as @a at @s if entity @e[tag = to_overworld, distance = ..1.5] run scoreboard players add @s CompanyTeleportCooldown 1
execute as @a at @s if entity @e[tag = tp_to_company, distance = ..1.5] run scoreboard players add @s CompanyTeleportCooldown 1
execute as @a[scores = {CompanyTeleportCooldown = 1..}] at @s run function system:tp_to_company

function boss:tick