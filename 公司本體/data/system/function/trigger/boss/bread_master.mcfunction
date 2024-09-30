execute if score @s BossBreadMasterCoolDown matches ..0 positioned ^ ^ ^5 run function boss:bread_master/spawn
execute unless score @s BossBreadMasterCoolDown matches ..0 run tellraw @s [{"text":"你還需要 ", "color": "dark_gray"},{"score": {"name": "@s", "objective": "BossBreadMasterCoolDown"}, "color" : "red"}, {"text": " 秒才能召喚"}]

execute if score @s BossBreadMasterCoolDown matches ..0 run scoreboard players set @s BossBreadMasterCoolDown 1200