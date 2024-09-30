execute if score builder BuildCompany matches 0 positioned ~ ~-1 ~ run function company:restart_company/floor/0
execute if score builder BuildCompany matches 1 positioned ~ ~ ~ run function company:restart_company/floor/1
execute if score builder BuildCompany matches 2 positioned ~ ~1 ~ run function company:restart_company/floor/2
execute if score builder BuildCompany matches 3 positioned ~ ~2 ~ run function company:restart_company/floor/3
execute if score builder BuildCompany matches 4 positioned ~ ~3 ~ run function company:restart_company/floor/4
execute if score builder BuildCompany matches 5 positioned ~ ~4 ~ run function company:restart_company/floor/5
execute if score builder BuildCompany matches 6 positioned ~ ~5 ~ run function company:restart_company/floor/6
execute if score builder BuildCompany matches 7 positioned ~ ~6 ~ run function company:restart_company/floor/7
execute if score builder BuildCompany matches 8 positioned ~ ~7 ~ run function company:restart_company/floor/8
execute if score builder BuildCompany matches 9 positioned ~ ~8 ~ run function company:restart_company/floor/9
execute if score builder BuildCompany matches 10 positioned ~ ~9 ~ run function company:restart_company/floor/10
execute if score builder BuildCompany matches 11 positioned ~ ~10 ~ run function company:restart_company/floor/11
execute if score builder BuildCompany matches 12 positioned ~ ~11 ~ run function company:restart_company/floor/12
execute if score builder BuildCompany matches 13 positioned ~ ~12 ~ run function company:restart_company/floor/13
execute if score builder BuildCompany matches 14 positioned ~ ~13 ~ run function company:restart_company/floor/14
execute if score builder BuildCompany matches 15 positioned ~ ~14 ~ run function company:restart_company/floor/15
execute if score builder BuildCompany matches 16 positioned ~ ~15 ~ run function company:restart_company/floor/16

execute if score builder BuildCompany matches -5 positioned ~ ~ ~ run tellraw @a ["",{"text":"正在建造公司，","color":"gray"},{"text":"請遠離","bold":true,"color":"red"},{"text":"指令方塊 ( 至少 7 格以外 )","color":"gray"}]


execute if score builder BuildCompany matches 0..16 at @a run playsound block.stone.break master @a ~ ~ ~ 1.0 1.0 1.0
execute if score builder BuildCompany matches ..17 run schedule function company:restart_company/loop1 1s
execute if score builder BuildCompany matches ..18 run schedule function company:restart_company/end 1s

scoreboard players add builder BuildCompany 1