execute if score @s StoryPlayerTime matches 280 run tellraw @s [{"text":"[","color":"dark_purple"},{"translate":"npc.worker.2.name","color":"dark_purple"},{"text":"] : ","color":"dark_purple"},{"translate": "story.worker.2.map_making2.1", "color": "gray"}]
execute if score @s StoryPlayerTime matches 220 run tellraw @s [{"text":"[","color":"dark_purple"},{"translate":"npc.worker.2.name","color":"dark_purple"},{"text":"] : ","color":"dark_purple"},{"translate": "story.worker.2.map_making2.2", "color": "gray"}]
execute if score @s StoryPlayerTime matches 160 run tellraw @s [{"text":"[","color":"dark_purple"},{"translate":"npc.worker.1.name","color":"dark_purple"},{"text":"] : ","color":"dark_purple"},{"translate": "story.worker.2.map_making2.3", "color": "gray"}]
execute if score @s StoryPlayerTime matches 120 run tellraw @s [{"text":"[","color":"dark_purple"},{"translate":"npc.worker.1.name","color":"dark_purple"},{"text":"] : ","color":"dark_purple"},{"translate": "story.worker.2.map_making2.4", "color": "gray"}]
execute if score @s StoryPlayerTime matches 80 run tellraw @s [{"text":"[","color":"dark_purple"},{"translate":"npc.worker.1.name","color":"dark_purple"},{"text":"] : ","color":"dark_purple"},{"translate": "story.worker.2.map_making2.5_0", "color": "gray"},{"translate": "story.worker.2.map_making2.5_1", "color": "#ff7777"},{"translate": "story.worker.2.map_making2.5_2", "color": "gray"}]
execute if score @s StoryPlayerTime matches 40 run tellraw @s [{"translate":"story.worker.2.map_making2.6_0","color":"gray"},{"translate":"npc.worker.2.name","color":"dark_purple"},{"translate":"story.worker.2.map_making2.6_1","color":"gray"}]

execute if score @s StoryPlayerTime matches 280 run playsound entity.villager.ambient
execute if score @s StoryPlayerTime matches 250 run playsound entity.villager.yes
execute if score @s StoryPlayerTime matches 220 run playsound entity.villager.death
execute if score @s StoryPlayerTime matches 160 run playsound entity.villager.ambient
execute if score @s StoryPlayerTime matches 120 run playsound entity.villager.ambient
execute if score @s StoryPlayerTime matches 80 run playsound entity.villager.ambient

execute if score @s StoryPlayerTime matches 250 at @n[tag = worker2] run tp @n[tag = worker2] ~ ~ ~ facing entity @s
execute if score @s StoryPlayerTime matches 250 at @n[tag = worker2] run summon creeper ^ ^ ^0.5 {Invulnerable:true,ExplosionRadius:0b,Fuse:30,ignited:1b}
execute if score @s StoryPlayerTime matches 221 at @n[tag = worker2] run summon villager ~ ~ ~ {Tags : ["worker2_preform"],VillagerData:{level:99,profession:"minecraft:librarian",type:"minecraft:snow"}}
execute if score @s StoryPlayerTime matches 220 run damage @n[tag = worker2_preform] 999
execute if score @s StoryPlayerTime matches 220 run effect give @n[tag = worker2] invisibility 13 10 true