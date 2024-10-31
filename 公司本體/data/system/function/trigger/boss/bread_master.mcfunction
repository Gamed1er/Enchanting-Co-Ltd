execute if score @s BossBreadMasterCoolDown matches ..0 positioned ^ ^ ^5 run function boss:bread_master/spawn
execute unless score @s BossBreadMasterCoolDown matches ..0 run tellraw @s [{"translate":"say.trigger.bread_master.1", "color": "dark_gray"},{"score": {"name": "@s", "objective": "BossBreadMasterCoolDown"}, "color" : "red"}, {"translate":"say.trigger.bread_master.1"}]

execute if score @s BossBreadMasterCoolDown matches ..0 run scoreboard players set @s BossBreadMasterCoolDown 1200
