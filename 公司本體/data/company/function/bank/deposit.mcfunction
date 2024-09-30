execute store result score Temp BankTrigger run clear @s lapis_lazuli 0
$execute if score Temp BankTrigger matches $(deposit).. run clear @s lapis_lazuli $(deposit)
$execute if score Temp BankTrigger matches $(deposit).. run scoreboard players add @s BankLapisCount $(deposit)
$execute if score Temp BankTrigger matches $(deposit).. run tellraw @p ["",{"text":"【銀行】","bold":true,"color":"dark_green"},{"text":" 已存入 ","color":"gray"},{"text":"$(deposit)","color":"gray"},{"text":" 顆青金石","color":"gray"}]
$execute unless score Temp BankTrigger matches $(deposit).. run tellraw @p ["",{"text":"【銀行】","bold":true,"color":"dark_green"},{"text":"你身上的青金石不夠","color":"gray"}]