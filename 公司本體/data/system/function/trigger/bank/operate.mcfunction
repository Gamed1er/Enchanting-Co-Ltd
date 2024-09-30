execute if score @s BankUseTrigger matches 1.. store result storage bank deposit int 1 run scoreboard players get @s BankUseTrigger
execute unless score @s BankUseTrigger matches 1.. store result storage bank withdraw int -1 run scoreboard players get @s BankUseTrigger

execute if score @s BankUseTrigger matches 1.. run function company:bank/deposit with storage bank
execute unless score @s BankUseTrigger matches 1.. run function company:bank/withdraw with storage bank


scoreboard players set @s BankUseTrigger 0