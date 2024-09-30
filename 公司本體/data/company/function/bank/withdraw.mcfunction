execute store result score Temp BankTrigger run scoreboard players get @s BankLapisCount
$execute if score Temp BankTrigger matches $(withdraw).. run give @s lapis_lazuli $(withdraw)
$execute if score Temp BankTrigger matches $(withdraw).. run scoreboard players remove @s BankLapisCount $(withdraw)
$execute if score Temp BankTrigger matches $(withdraw).. run tellraw @p ["",{"text":"【銀行】","bold":true,"color":"dark_green"},{"text":" 已提領 ","color":"gray"},{"score":{"name":"Temp","objective":"BankTrigger"},"bold":true,"color":"green"},{"text":"  顆青金石","color":"gray"}]
$execute unless score Temp BankTrigger matches $(withdraw).. run tellraw @p ["",{"text":"【銀行】","bold":true,"color":"dark_green"},{"text":"你身上的青金石不夠","color":"gray"}]