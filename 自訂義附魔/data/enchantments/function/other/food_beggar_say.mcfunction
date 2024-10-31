# 隨機執行一句對話
execute store result score FoodBeggar EnchantmentsTeleportTemp run random value 1..5

execute if score FoodBeggar EnchantmentsTeleportTemp matches 1 run say 你好可憐啊，這個食物你拿去吧。
execute if score FoodBeggar EnchantmentsTeleportTemp matches 2 run say 別餓壞了，吃飽才是工作的本錢。
execute if score FoodBeggar EnchantmentsTeleportTemp matches 3 run say 我媽媽說，不好好讀書將來只能在這裡乞討。
execute if score FoodBeggar EnchantmentsTeleportTemp matches 4 run say 這些食物你拿去吧，順便幫我積點功德。
execute if score FoodBeggar EnchantmentsTeleportTemp matches 5 run say 嘖嘖，還真可憐啊，拿去吃吧。

playsound entity.villager.ambient