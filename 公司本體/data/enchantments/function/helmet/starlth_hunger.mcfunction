scoreboard players remove @s EnchantmentsStarLthHunger 1
execute store result storage minecraft:enchantments StarLthTemp int 1 run scoreboard players get @s EnchantmentsStarLthHunger
data modify entity @s foodLevel set from storage enchantments StarLthTemp