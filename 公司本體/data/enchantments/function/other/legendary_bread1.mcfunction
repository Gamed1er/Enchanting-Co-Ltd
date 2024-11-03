execute if entity @p[distance = ..0.05] at @e[distance = 0.1..10, nbt = {active_effects:[{id:"minecraft:hunger", amplifier : 4b}]}] run particle angry_villager ~ ~1.5 ~ 0.1 0.3 0.1 1 20 force @a
execute if entity @p[distance = ..0.05] at @e[distance = 0.1..10, nbt = {active_effects:[{id:"minecraft:hunger", amplifier : 4b}]}] run damage @n 12 dry_out by @s
execute unless entity @p[distance = ..0.05] at @e[distance = 0.1..10, nbt = {active_effects:[{id:"minecraft:hunger", amplifier : 4b}]}] run damage @n 12 dry_out by @s

execute if entity @p[distance = ..0.05] run effect clear @e[distance = ..10, nbt = {active_effects:[{id:"minecraft:hunger", amplifier : 4b}]}] hunger
effect give @p[distance = ..0.05] absorption 15 0 false
playsound resourcepack:legendary_bread master @a ~ ~ ~ 1.0 1.0 0.5
scoreboard players set @s EnchantmentsLegendaryBread 0
