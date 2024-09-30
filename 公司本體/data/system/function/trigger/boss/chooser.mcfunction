execute if score @s BossTrigger matches -1 as @e[tag = boss, distance = ..32] run tp ~ ~-1000 ~
execute if score @s BossTrigger matches -1 as @e[tag = boss_partner, distance = ..32] run tp ~ ~-1000 ~
execute if score @s BossTrigger matches -1 run tellraw @a [{"selector": "@s", "color": "green"}, {"text": " 取消了 Boss 攻略 !", "color": "dark_gray"}]


execute if score @s BossTrigger matches 1 run function system:trigger/boss/bread_master
execute if score @s BossTrigger matches 2 run tellraw @s ["",{"text":"【麵包大俠】\n","bold":true,"color":"gold"},{"text":"拿法國麵包打架的俠客\n曾經在烘培店上班\n某天突然領悟到麵包的奧義所以出山\n現在是個實力堅強的劍..歐不，麵士\n","color":"dark_gray"},{"text":"\n【被動技能】法國麵包 : \n","bold":true,"color":"dark_purple"},{"text":"玩家在 6 格內有大概率造成一次普攻傷害\n普攻時賦予","color":"gray"},{"text":"飢餓 V","color":"dark_red"},{"text":"效果\n\n","color":"gray"},{"text":"【技能】 飢餓風暴 : \n","bold":true,"color":"dark_purple"},{"text":"蓄力 5 秒後，給所有飢餓狀態的玩家","color":"gray"},{"text":"大量傷害\n","bold":true,"color":"red"},{"text":"並","color":"gray"},{"text":"隨機傳送並給予負面效果\n\n","color":"dark_aqua"},{"text":"【技能】收徒 : \n","bold":true,"color":"dark_purple"},{"text":"召喚一個麵包徒弟","color":"gray"}]

scoreboard players set @s BossTrigger 0