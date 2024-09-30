scoreboard objectives add BuildCompany dummy "建造公司"

scoreboard players set builder BuildCompany -5

# 拆除原有結構
    execute if entity @e[tag = company_center, type = marker] run function company:restart_company/destory

# 建造新的結構
    summon marker ~ ~ ~ {Tags:["company_center"]}
    execute as @e[tag = company_center, type = marker] at @s run function company:restart_company/loop