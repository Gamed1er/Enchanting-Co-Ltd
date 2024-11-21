execute if score @s StoryPlayerTime matches 200 run tellraw @s [{"text":"[","color":"dark_purple"},{"translate":"npc.worker.1.name","color":"dark_purple"},{"text":"] : ","color":"dark_purple"},{"translate":"story.worker.1.map_making.1","color":"gray"}]
execute if score @s StoryPlayerTime matches 160 run tellraw @s [{"text":"[","color":"dark_purple"},{"translate":"npc.worker.1.name","color":"dark_purple"},{"text":"] : ","color":"dark_purple"},{"translate":"story.worker.1.map_making.2","color":"gray"}]
execute if score @s StoryPlayerTime matches 120 run tellraw @s [{"text":"[","color":"dark_purple"},{"translate":"npc.worker.1.name","color":"dark_purple"},{"text":"] : ","color":"dark_purple"},{"translate":"story.worker.1.map_making.3","color":"gray"}]
execute if score @s StoryPlayerTime matches 80 run tellraw @s [{"text":"[","color":"dark_purple"},{"translate":"npc.worker.1.name","color":"dark_purple"},{"text":"] : ","color":"dark_purple"},{"translate":"story.worker.1.map_making.4","color":"gray"}]
execute if score @s StoryPlayerTime matches 40 run tellraw @s [{"text":"[","color":"dark_purple"},{"translate":"npc.worker.1.name","color":"dark_purple"},{"text":"] : ","color":"dark_purple"},{"translate":"story.worker.1.map_making.5_0","color":"gray"},{"translate":"story.worker.1.map_making.5_1","color":"#50b1d4","bold":true},{"translate":"story.worker.1.map_making.5_2","color":"gray"}]
execute if score @s StoryPlayerTime matches 40 run advancement grant @s only story:trigger/worker1_map_making_1

execute if score @s StoryPlayerTime matches 200 run playsound entity.villager.ambient
execute if score @s StoryPlayerTime matches 160 run playsound entity.villager.ambient
execute if score @s StoryPlayerTime matches 120 run playsound entity.villager.ambient
execute if score @s StoryPlayerTime matches 80 run playsound entity.villager.trade
execute if score @s StoryPlayerTime matches 40 run playsound entity.villager.yes