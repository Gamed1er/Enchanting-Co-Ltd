execute if score @s StoryPlayerTime matches 120 run tellraw @s [{"text":"[","color":"dark_purple"},{"translate":"npc.worker.1.name","color":"dark_purple"},{"text":"] : ","color":"dark_purple"},{"translate":"story.worker.1.map_making2.1","color":"gray"}]
execute if score @s StoryPlayerTime matches 80 run tellraw @s [{"text":"[","color":"dark_purple"},{"translate":"npc.worker.1.name","color":"dark_purple"},{"text":"] : ","color":"dark_purple"},{"translate":"story.worker.1.map_making2.2_0","color":"gray"},{"translate":"story.worker.1.map_making2.2_1","color":"#50b1d4","bold":true},{"translate":"story.worker.1.map_making2.2_2","color":"gray"}]
execute if score @s StoryPlayerTime matches 40 run tellraw @s [{"translate":"story.worker.1.map_making2.3_0","color":"gray"},{"translate":"npc.worker.1.name","color":"dark_purple"},{"translate":"story.worker.1.map_making2.3_2","color":"gray"}]

execute if score @s StoryPlayerTime matches 120 run playsound entity.villager.ambient
execute if score @s StoryPlayerTime matches 80 run playsound entity.villager.ambient
