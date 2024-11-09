scoreboard players remove @s BossSkillCoolDown1 1
scoreboard players remove @s BossSkillCoolDown2 1

#防止玩家刷怪
execute if entity @a[distance = 32..128] unless entity @a[distance = ..32] run tp @s @p
execute as @e[tag = bread_master_child] at @s if entity @a[distance = 32..128] unless entity @a[distance = ..32] run tp @s @p

kill @e[tag = bread_master_marker, distance = 3..64]
execute unless entity @e[tag = bread_master_marker, distance = ..3] run summon marker ~ ~ ~ {Tags:["bread_master_marker"]}
scoreboard players add @e[tag = bread_master_marker, distance = ..3] BossVariable1 1
execute at @e[tag = bread_master_marker, scores = {BossVariable1 = 200}] run tp @s @p
execute at @e[tag = bread_master_marker, scores = {BossVariable1 = 200}] run kill @e[tag = bread_master_marker, distance = ..64]
execute store result score @s BossVariable1 run random value 1..2000
execute if score @s BossVariable1 matches 2000 run tp @s @p

#更遠處的普攻每 tick 有 5% 觸發，單體攻擊
execute store result score @s BossVariable1 run random value 1..10
execute if score @s BossVariable1 matches 1 as @e[type = #boss:boss_target, distance = ..6] run tag @s add BreadMasterTarget
execute if score @s BossVariable1 matches 1 as @a[gamemode = creative] run tag @s remove BreadMasterTarget
execute if score @s BossVariable1 matches 1 as @a[gamemode = spectator] run tag @s remove BreadMasterTarget

execute as @e[tag = BreadMasterTarget] run playsound entity.player.attack.crit master @a[distance=..32] ~ ~ ~ 1.0 1.2 0.1
execute as @e[tag = BreadMasterTarget] run damage @s 6 arrow at ~ ~ ~ 
execute as @e[tag = BreadMasterTarget] run effect give @n hunger 1200 5 false
execute as @e[tag = BreadMasterTarget] run tag @s remove BreadMasterTarget


#技能一 - 麵包衝擊
execute if score @s BossSkillCoolDown1 matches ..0 run function boss:bread_master/skill1

#技能二 - 麵包徒弟
execute if score @s BossSkillCoolDown2 matches ..0 run function boss:bread_master/skill2

# 防止鐵巨人幫打
effect give @e[type = iron_golem, distance = ..5] weakness 60 3