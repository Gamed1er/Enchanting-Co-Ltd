execute if score @s StoryPlayerTime matches 360 run tellraw @s [{"text": "[","color": "dark_purple"},{"translate":"npc.mission.1.name", "color":"dark_purple"},{"text": "] : ","color": "dark_purple"},{"translate": "story.mission.1.introduce.1", "color": "gray"}]
execute if score @s StoryPlayerTime matches 320 run tellraw @s [{"text": "[","color": "dark_purple"},{"translate":"npc.mission.1.name", "color":"dark_purple"},{"text": "] : ","color": "dark_purple"},{"translate": "story.mission.1.introduce.2", "color": "gray"}]
execute if score @s StoryPlayerTime matches 280 run tellraw @s [{"text": "[","color": "dark_purple"},{"translate":"npc.mission.1.name", "color":"dark_purple"},{"text": "] : ","color": "dark_purple"},{"translate": "story.mission.1.introduce.3_0", "color": "gray"},{"translate": "story.mission.1.introduce.3_1", "color": "#50b1d4","bold": true},{"translate": "story.mission.1.introduce.3_2", "color": "gray"}]
execute if score @s StoryPlayerTime matches 240 run tellraw @s [{"text": "[","color": "dark_purple"},{"translate":"npc.mission.1.name", "color":"dark_purple"},{"text": "] : ","color": "dark_purple"},{"translate": "story.mission.1.introduce.4_0", "color": "gray"},{"translate": "story.mission.1.introduce.4_1", "color": "green","bold": true},{"translate": "story.mission.1.introduce.4_2", "color": "gray"},{"translate": "story.mission.1.introduce.4_3", "color": "#ff9500", "bold": true},{"translate": "story.mission.1.introduce.4_2", "color": "gray"},{"translate": "story.mission.1.introduce.4_4", "color": "red", "bold": true},{"translate": "story.mission.1.introduce.4_5", "color": "gray"}]
execute if score @s StoryPlayerTime matches 200 run tellraw @s [{"text": "[","color": "dark_purple"},{"translate":"npc.mission.1.name", "color":"dark_purple"},{"text": "] : ","color": "dark_purple"},{"translate": "story.mission.1.introduce.5", "color": "gray"}]
execute if score @s StoryPlayerTime matches 160 run tellraw @s [{"text": "[","color": "dark_purple"},{"translate":"npc.mission.1.name", "color":"dark_purple"},{"text": "] : ","color": "dark_purple"},{"translate": "story.mission.1.introduce.6", "color": "gray"}]
execute if score @s StoryPlayerTime matches 120 run tellraw @s [{"text": "[","color": "dark_purple"},{"translate":"npc.mission.1.name", "color":"dark_purple"},{"text": "] : ","color": "dark_purple"},{"translate": "story.mission.1.introduce.7", "color": "gray"}]
execute if score @s StoryPlayerTime matches 80 run tellraw @s [{"text": "[","color": "dark_purple"},{"translate":"npc.mission.1.name", "color":"dark_purple"},{"text": "] : ","color": "dark_purple"},{"translate": "story.mission.1.introduce.8_0", "color": "gray"},{"translate": "story.mission.1.introduce.8_1", "color": "#0037ff","bold": true},{"translate": "story.mission.1.introduce.8_2", "color": "gray"},{"translate": "story.mission.1.introduce.8_3", "color": "dark_purple", "bold": true},{"translate": "story.mission.1.introduce.8_4", "color": "gray"}]
execute if score @s StoryPlayerTime matches 40 run tellraw @s [{"text": "[","color": "dark_purple"},{"translate":"npc.mission.1.name", "color":"dark_purple"},{"text": "] : ","color": "dark_purple"},{"translate": "story.mission.1.introduce.9", "color": "gray"}]
execute if score @s StoryPlayerTime matches 40 run advancement grant @s only story:trigger/mission1_introduce

execute if score @s StoryPlayerTime matches 360 run playsound entity.villager.ambient
execute if score @s StoryPlayerTime matches 320 run playsound entity.villager.ambient
execute if score @s StoryPlayerTime matches 280 run playsound entity.villager.yes
execute if score @s StoryPlayerTime matches 240 run playsound entity.villager.yes
execute if score @s StoryPlayerTime matches 200 run playsound entity.villager.ambient
execute if score @s StoryPlayerTime matches 160 run playsound entity.villager.ambient
execute if score @s StoryPlayerTime matches 120 run playsound entity.villager.ambient
execute if score @s StoryPlayerTime matches 80 run playsound entity.villager.yes
execute if score @s StoryPlayerTime matches 40 run playsound entity.villager.ambient

