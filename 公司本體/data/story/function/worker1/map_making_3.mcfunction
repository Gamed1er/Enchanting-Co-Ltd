execute if score @s StoryPlayerTime matches 240 run clear @s map 5
execute if score @s StoryPlayerTime matches 240 run tellraw @s [{"text":"[","color":"dark_purple"},{"translate":"npc.worker.1.name","color":"dark_purple"},{"text":"] : ","color":"dark_purple"},{"translate":"story.worker.1.map_making3.1","color":"gray"}]
execute if score @s StoryPlayerTime matches 200 run tellraw @s [{"text":"[","color":"dark_purple"},{"translate":"npc.worker.1.name","color":"dark_purple"},{"text":"] : ","color":"dark_purple"},{"translate":"story.worker.1.map_making3.2","color":"gray"}]
execute if score @s StoryPlayerTime matches 160 run tellraw @s [{"text":"[","color":"dark_purple"},{"translate":"npc.worker.1.name","color":"dark_purple"},{"text":"] : ","color":"dark_purple"},{"translate":"story.worker.1.map_making3.3","color":"gray"}]
execute if score @s StoryPlayerTime matches 120 run tellraw @s [{"text":"[","color":"dark_purple"},{"translate":"npc.worker.1.name","color":"dark_purple"},{"text":"] : ","color":"dark_purple"},{"translate":"story.worker.1.map_making3.4","color":"gray"}]
execute if score @s StoryPlayerTime matches 80 run tellraw @s [{"text":"[","color":"dark_purple"},{"translate":"npc.worker.1.name","color":"dark_purple"},{"text":"] : ","color":"dark_purple"},{"translate":"story.worker.1.map_making3.5_0","color":"gray"},{"translate": "story.worker.1.map_making3.5_1", "color": "green", "bold":true, "clickEvent": {"action": "open_url", "value": "https://forum.gamer.com.tw/C.php?bsn=18673&snA=202354&tnum=2&subbsn=15"}}]
execute if score @s StoryPlayerTime matches 40 run tellraw @s [{"text":"[","color":"dark_purple"},{"translate":"npc.worker.1.name","color":"dark_purple"},{"text":"] : ","color":"dark_purple"},{"translate":"story.worker.1.map_making3.6_0","color":"gray"},{"translate":"story.worker.1.map_making3.6_1","color":"gray"},{"translate":"story.worker.1.map_making3.6_2","color":"#0037ff","bold":true},{"translate":"story.worker.1.map_making3.6_3","color":"gray"},{"translate":"story.worker.1.map_making3.6_4","color":"dark_purple","bold":true},{"translate":"story.worker.1.map_making3.6_5","color":"gray"}]

execute if score @s StoryPlayerTime matches 240 run playsound entity.villager.yes
execute if score @s StoryPlayerTime matches 200 run playsound entity.villager.ambient
execute if score @s StoryPlayerTime matches 160 run playsound entity.villager.ambient
execute if score @s StoryPlayerTime matches 120 run playsound entity.villager.work_cartographer
execute if score @s StoryPlayerTime matches 80 run playsound entity.villager.yes
execute if score @s StoryPlayerTime matches 40 run playsound entity.villager.ambient

execute if score @s StoryPlayerTime matches 40 run function story:worker1/map_making_reward
