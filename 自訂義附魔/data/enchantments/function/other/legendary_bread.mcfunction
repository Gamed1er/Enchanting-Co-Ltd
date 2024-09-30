item modify entity @s weapon.mainhand enchantments:legendary_bread
scoreboard players add @s[scores = {EnchantmentsLegendaryBread = ..99}] EnchantmentsLegendaryBread 1
execute unless score @s EnchantmentsLegendaryBread matches 0.. unless score @s EnchantmentsLegendaryBread matches ..0 run scoreboard players set @s EnchantmentsLegendaryBread 0