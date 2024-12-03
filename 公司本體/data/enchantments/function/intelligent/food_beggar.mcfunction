advancement revoke @a only enchantments:intelligent/food_beggar
execute unless score @s EnchantmentsFoodBeggarCoolDown matches 1.. run tag @s add EnchantmentFoodBeggarTmp

execute at @s[tag = EnchantmentFoodBeggarTmp] as @e[type = villager, distance = ..5] unless score @s EnchantmentsFoodBeggarCoolDown matches 1.. run tag @s add EnchantmentFoodBeggarTmpV
execute at @e[tag = EnchantmentFoodBeggarTmpV] run loot give @s loot enchantments:intelligent/food_beggar
execute if score @s EnchantmentsHunger matches ..6 run scoreboard players set @e[tag = EnchantmentFoodBeggarTmpV] EnchantmentsFoodBeggarCoolDown 60
execute if score @s EnchantmentsHunger matches 7..10 run scoreboard players set @e[tag = EnchantmentFoodBeggarTmpV] EnchantmentsFoodBeggarCoolDown 120
execute if score @s EnchantmentsHunger matches 11..16 run scoreboard players set @e[tag = EnchantmentFoodBeggarTmpV] EnchantmentsFoodBeggarCoolDown 180
execute if score @s EnchantmentsHunger matches 17.. run scoreboard players set @e[tag = EnchantmentFoodBeggarTmpV] EnchantmentsFoodBeggarCoolDown 300
scoreboard players set @a[tag = EnchantmentFoodBeggarTmp] EnchantmentsFoodBeggarCoolDown 1
tag @e remove EnchantmentFoodBeggarTmpV
tag @a remove EnchantmentFoodBeggarTmp
