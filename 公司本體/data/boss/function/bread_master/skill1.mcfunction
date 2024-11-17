#提示
execute if score @s BossSkillCoolDown1 matches -1 run tellraw @a[distance = ..32] ["",{"translate":"say.bread_master.0","color":"gold"},{"translate":"say.bread_master.skill1.1","bold":true,"color":"gray"},{"translate":"say.bread_master.skill1.2","bold":true,"color":"red"},{"translate":"say.bread_master.skill1.3","bold":true,"color":"gray"}]
execute if score @s BossSkillCoolDown1 matches -1 run tellraw @a[distance = ..32] [{"translate":"say.bread_master.skill1.4", "color": "dark_gray"}]

#BOSS 蓄力
data modify entity @s NoAI set value 1b
effect give @s resistance 1 4 true
tp @s ~ ~ ~ ~15 0

#BOSS 攻擊
execute if score @s BossSkillCoolDown1 matches -100 run execute at @e[type = #boss:boss_target ,nbt = {active_effects : [{id:"minecraft:hunger"}]}, distance = ..32] run damage @n 8 magic by @s
execute if score @s BossSkillCoolDown1 matches -100 run effect give @a[nbt = {active_effects : [{id:"minecraft:hunger"}]}, distance = ..32] nausea 10 0 true
execute if score @s BossSkillCoolDown1 matches -100 run effect give @a[nbt = {active_effects : [{id:"minecraft:hunger"}]}, distance = ..32] slowness 10 1 true
execute if score @s BossSkillCoolDown1 matches -100 run effect give @a[nbt = {active_effects : [{id:"minecraft:hunger"}]}, distance = ..32] blindness 10 0 true
execute if score @s BossSkillCoolDown1 matches -100 run tp @p[distance = ..32, gamemode = !creative, gamemode = !spectator] ~ ~2 ~

execute if score @s BossSkillCoolDown1 matches -100 run playsound entity.lightning_bolt.thunder master @a[distance = ..128]

execute if score @s BossSkillCoolDown1 matches -100 run data modify entity @s NoAI set value 0b
execute if score @s BossSkillCoolDown1 matches -100 run execute store result score @s BossSkillCoolDown1 run random value 600..800
