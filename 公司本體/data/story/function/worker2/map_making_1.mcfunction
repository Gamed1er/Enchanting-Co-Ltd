execute if score @s StoryPlayerTime matches 440 run tellraw @s [{"text":"[","color":"dark_purple"},{"translate":"npc.worker.2.name","color":"dark_purple"},{"text":"] : ","color":"dark_purple"},{"translate": "story.worker.2.map_making1.1", "color": "gray"}]
execute if score @s StoryPlayerTime matches 400 run tellraw @s [{"text":"[","color":"dark_purple"},{"translate":"npc.worker.2.name","color":"dark_purple"},{"text":"] : ","color":"dark_purple"},{"translate": "story.worker.2.map_making1.2", "color": "gray"}]
execute if score @s StoryPlayerTime matches 360 run tellraw @s [{"text":"[","color":"dark_purple"},{"translate":"npc.worker.2.name","color":"dark_purple"},{"text":"] : ","color":"dark_purple"},{"translate": "story.worker.2.map_making1.3", "color": "gray"}]
execute if score @s StoryPlayerTime matches 320 run tellraw @s [{"text":"[","color":"dark_purple"},{"translate":"npc.worker.2.name","color":"dark_purple"},{"text":"] : ","color":"dark_purple"},{"translate": "story.worker.2.map_making1.4", "color": "gray"}]
execute if score @s StoryPlayerTime matches 280 run tellraw @s [{"text":"[","color":"dark_purple"},{"translate":"npc.worker.2.name","color":"dark_purple"},{"text":"] : ","color":"dark_purple"},{"translate": "story.worker.2.map_making1.5", "color": "gray"}]
execute if score @s StoryPlayerTime matches 240 run tellraw @s [{"text":"[","color":"dark_purple"},{"translate":"npc.worker.2.name","color":"dark_purple"},{"text":"] : ","color":"dark_purple"},{"translate": "story.worker.2.map_making1.6", "color": "#b700ff","bold": true}]
execute if score @s StoryPlayerTime matches 222 run tellraw @s [{"text":"[","color":"dark_purple"},{"translate":"npc.worker.2.name","color":"dark_purple"},{"text":"] : ","color":"dark_purple"},{"translate": "story.worker.2.map_making1.7_1", "color": "red"}]
execute if score @s StoryPlayerTime matches 216 run tellraw @s [{"text":"[","color":"dark_purple"},{"translate":"npc.worker.2.name","color":"dark_purple"},{"text":"] : ","color":"dark_purple"},{"translate": "story.worker.2.map_making1.7_0", "color": "#ff9500"}]
execute if score @s StoryPlayerTime matches 208 run tellraw @s [{"text":"[","color":"dark_purple"},{"translate":"npc.worker.2.name","color":"dark_purple"},{"text":"] : ","color":"dark_purple"},{"translate": "story.worker.2.map_making1.7_0", "color": "yellow"}]
execute if score @s StoryPlayerTime matches 200 run tellraw @s [{"text":"[","color":"dark_purple"},{"translate":"npc.worker.2.name","color":"dark_purple"},{"text":"] : ","color":"dark_purple"},{"translate": "story.worker.2.map_making1.7_0", "color": "green"}]
execute if score @s StoryPlayerTime matches 192 run tellraw @s [{"text":"[","color":"dark_purple"},{"translate":"npc.worker.2.name","color":"dark_purple"},{"text":"] : ","color":"dark_purple"},{"translate": "story.worker.2.map_making1.7_0", "color": "#00fbff"}]
execute if score @s StoryPlayerTime matches 184 run tellraw @s [{"text":"[","color":"dark_purple"},{"translate":"npc.worker.2.name","color":"dark_purple"},{"text":"] : ","color":"dark_purple"},{"translate": "story.worker.2.map_making1.7_1", "color": "blue"}]
execute if score @s StoryPlayerTime matches 176 run tellraw @s [{"text":"[","color":"dark_purple"},{"translate":"npc.worker.2.name","color":"dark_purple"},{"text":"] : ","color":"dark_purple"},{"translate": "story.worker.2.map_making1.7_0", "color": "#bc04ff"}]
execute if score @s StoryPlayerTime matches 168 run tellraw @s [{"text":"[","color":"dark_purple"},{"translate":"npc.worker.2.name","color":"dark_purple"},{"text":"] : ","color":"dark_purple"},{"translate": "story.worker.2.map_making1.7_2", "color": "gray"}]
execute if score @s StoryPlayerTime matches 160 run tellraw @s [{"text":"[","color":"dark_purple"},{"translate":"npc.worker.2.name","color":"dark_purple"},{"text":"] : ","color":"dark_purple"},{"translate": "story.worker.2.map_making1.7_0", "color": "#543300"}]
execute if score @s StoryPlayerTime matches 120 run tellraw @s [{"text":"[","color":"dark_purple"},{"translate":"npc.worker.1.name","color":"dark_purple"},{"text":"] : ","color":"dark_purple"},{"translate": "story.worker.2.map_making1.8_0", "color": "gray"},{"selector": "@s", "bold" : true, "color": "green"},{"translate": "story.worker.2.map_making1.8_1", "color": "gray"}]
execute if score @s StoryPlayerTime matches 80 run tellraw @s [{"text":"[","color":"dark_purple"},{"translate":"npc.worker.1.name","color":"dark_purple"},{"text":"] : ","color":"dark_purple"},{"translate": "story.worker.2.map_making1.9_0", "color": "gray"},{"translate": "story.worker.2.map_making1.9_1","bold": true, "color": "#ff7777"},{"translate": "story.worker.2.map_making1.9_2", "color": "gray"}]
execute if score @s StoryPlayerTime matches 40 run tellraw @s [{"text":"[","color":"dark_purple"},{"translate":"npc.worker.1.name","color":"dark_purple"},{"text":"] : ","color":"dark_purple"},{"translate": "story.worker.2.map_making1.10", "color": "gray"}]

execute if score @s StoryPlayerTime matches 440 run playsound entity.villager.ambient
execute if score @s StoryPlayerTime matches 400 run playsound entity.villager.ambient
execute if score @s StoryPlayerTime matches 360 run playsound entity.villager.ambient
execute if score @s StoryPlayerTime matches 320 run playsound entity.villager.ambient
execute if score @s StoryPlayerTime matches 280 run playsound entity.villager.ambient
execute if score @s StoryPlayerTime matches 240 run playsound entity.villager.ambient
execute if score @s StoryPlayerTime matches 222 run playsound entity.villager.death
execute if score @s StoryPlayerTime matches 216 run playsound entity.villager.celebrate
execute if score @s StoryPlayerTime matches 208 run playsound entity.villager.celebrate
execute if score @s StoryPlayerTime matches 200 run playsound entity.villager.celebrate
execute if score @s StoryPlayerTime matches 192 run playsound entity.villager.celebrate
execute if score @s StoryPlayerTime matches 184 run playsound entity.villager.death
execute if score @s StoryPlayerTime matches 176 run playsound entity.villager.celebrate
execute if score @s StoryPlayerTime matches 168 run playsound entity.villager.death
execute if score @s StoryPlayerTime matches 160 run playsound entity.villager.celebrate
execute if score @s StoryPlayerTime matches 120 run playsound entity.villager.ambient
execute if score @s StoryPlayerTime matches 80 run playsound entity.villager.ambient
execute if score @s StoryPlayerTime matches 40 run playsound entity.villager.ambient

execute if score @s StoryPlayerTime matches 160..240 as @n[tag = worker2] at @s run tp @s ~ ~ ~ ~25 ~
execute if score @s StoryPlayerTime matches 240 as @n[tag = worker2] at @s run data modify entity @s Motion set value [0, 10, 0]
execute if score @s StoryPlayerTime matches 216 as @n[tag = worker2] at @s run data modify entity @s Motion set value [0, 10, 0]
execute if score @s StoryPlayerTime matches 200 as @n[tag = worker2] at @s run data modify entity @s Motion set value [0, 10, 0]
execute if score @s StoryPlayerTime matches 184 as @n[tag = worker2] at @s run data modify entity @s Motion set value [0, 10, 0]
execute if score @s StoryPlayerTime matches 168 as @n[tag = worker2] at @s run data modify entity @s Motion set value [0, 10, 0]
execute if score @s StoryPlayerTime matches 160 run data modify entity @n[tag = worker2] NoAI set value false

execute if score @s StoryPlayerTime matches 40 run advancement grant @s only story:trigger/worker2_map_making_1
