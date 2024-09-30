#提示
execute if score @s BossSkillCoolDown1 matches -1 run tellraw @a[distance = ..32] ["",{"text":"【麵包大俠】","color":"gold"},{"text":"感受一下","bold":true,"color":"gray"},{"text":"飢餓的滋味","bold":true,"color":"red"},{"text":"，朋友 !","bold":true,"color":"gray"}]
execute if score @s BossSkillCoolDown1 matches -1 run tellraw @a[distance = ..32] [{"text":"盡快解除飢餓避免強力攻擊 !!", "color": "dark_gray"}]

#BOSS 蓄力
data modify entity @s NoAI set value 1b
effect give @s resistance 1 4 true
tp @s ~ ~ ~ ~15 0

#BOSS 攻擊
execute if score @s BossSkillCoolDown1 matches -100 run execute at @a[nbt = {active_effects : [{id:"minecraft:hunger"}]}, distance = ..32] run damage @n 8 magic by @s
execute if score @s BossSkillCoolDown1 matches -100 run effect give @a[nbt = {active_effects : [{id:"minecraft:hunger"}]}, distance = ..32] nausea 10 0 true
execute if score @s BossSkillCoolDown1 matches -100 run effect give @a[nbt = {active_effects : [{id:"minecraft:hunger"}]}, distance = ..32] slowness 10 1 true
execute if score @s BossSkillCoolDown1 matches -100 run effect give @a[nbt = {active_effects : [{id:"minecraft:hunger"}]}, distance = ..32] darkness 10 0 true
execute if score @s BossSkillCoolDown1 matches -100 run spreadplayers ~ ~ 10 8 false @a[nbt = {active_effects : [{id:"minecraft:hunger"}]}, distance = ..32]

execute if score @s BossSkillCoolDown1 matches -100 run playsound entity.lightning_bolt.thunder master @a[distance = ..128]

execute if score @s BossSkillCoolDown1 matches -100 run data modify entity @s NoAI set value 0b
execute if score @s BossSkillCoolDown1 matches -100 run execute store result score @s BossSkillCoolDown1 run random value 600..800