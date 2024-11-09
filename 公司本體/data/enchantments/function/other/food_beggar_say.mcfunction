# 隨機執行一句對話
execute store result score FoodBeggar EnchantmentsTeleportTemp run random value 1..5

execute if score FoodBeggar EnchantmentsTeleportTemp matches 1 run tellraw @n[type=minecraft:player] [{"translate":"say.food_beggar.1"}]
execute if score FoodBeggar EnchantmentsTeleportTemp matches 2 run tellraw @n[type=minecraft:player] [{"translate":"say.food_beggar.2"}]
execute if score FoodBeggar EnchantmentsTeleportTemp matches 3 run tellraw @n[type=minecraft:player] [{"translate":"say.food_beggar.3"}]
execute if score FoodBeggar EnchantmentsTeleportTemp matches 4 run tellraw @n[type=minecraft:player] [{"translate":"say.food_beggar.4"}]
execute if score FoodBeggar EnchantmentsTeleportTemp matches 5 run tellraw @n[type=minecraft:player] [{"translate":"say.food_beggar.5"}]

playsound entity.villager.ambient
