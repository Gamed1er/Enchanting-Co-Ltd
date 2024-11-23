execute if score @s StoryPlayerTime matches 200 run clear @s tnt 5
execute if score @s StoryPlayerTime matches 200 run tellraw @s [{"text":"[","color":"dark_purple"},{"translate":"npc.worker.2.name","color":"dark_purple"},{"text":"] : ","color":"dark_purple"},{"translate":"story.worker.2.map_making3.1","color":"gray"}]
execute if score @s StoryPlayerTime matches 160 run tellraw @s [{"text":"[","color":"dark_purple"},{"translate":"npc.worker.2.name","color":"dark_purple"},{"text":"] : ","color":"dark_purple"},{"translate":"story.worker.2.map_making3.2","color":"gray"}]
execute if score @s StoryPlayerTime matches 120 run tellraw @s [{"translate":"story.worker.2.map_making3.3","color":"gray"}]
execute if score @s StoryPlayerTime matches 80 run title @s title [{"translate": "story.worker.2.map_making3.4", "color": "green", "bold":true, "clickEvent": {"action": "open_url", "value": "https://forum.gamer.com.tw/C.php?bsn=18673&snA=201012"}}]
execute if score @s StoryPlayerTime matches 80 run tellraw @s [{"translate": "story.worker.2.map_making3.4", "color": "green", "bold":true, "clickEvent": {"action": "open_url", "value": "https://forum.gamer.com.tw/C.php?bsn=18673&snA=201012"}}]
execute if score @s StoryPlayerTime matches 40 run tellraw @s [{"translate":"story.worker.2.map_making3.5_0","color":"gray"},{"translate":"story.worker.2.map_making3.5_1","color":"#0037ff","bold":true},{"translate":"story.worker.2.map_making3.5_2","color":"gray"},{"translate":"story.worker.2.map_making3.5_3","color":"#888888","bold":true},{"translate":"story.worker.2.map_making3.5_4","color":"gray"}]

execute if score @s StoryPlayerTime matches 200 run playsound entity.villager.ambient
execute if score @s StoryPlayerTime matches 160 run playsound entity.villager.work_weaponsmith
execute if score @s StoryPlayerTime matches 120 run playsound entity.villager.ambient


execute if score @s StoryPlayerTime matches 40 run function story:worker2/map_making_reward
execute if score @s StoryPlayerTime matches 160 run effect give @n[tag = worker2] invisibility 10 10 true