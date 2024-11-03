execute if predicate enchantments:totrm_of_undying/gold_bell_lv1 if score @s EnchantmentsGoldBell matches 1.. run effect give @s resistance 1 0 true
execute if predicate enchantments:totrm_of_undying/gold_bell_lv2 if score @s EnchantmentsGoldBell matches 2.. run effect give @s resistance 1 1 true
execute if predicate enchantments:totrm_of_undying/gold_bell_lv3 if score @s EnchantmentsGoldBell matches 3.. run effect give @s resistance 1 2 true
execute if predicate enchantments:totrm_of_undying/gold_bell_lv4 if score @s EnchantmentsGoldBell matches 4.. run effect give @s resistance 1 3 true
execute if predicate enchantments:totrm_of_undying/gold_bell_lv5 if score @s EnchantmentsGoldBell matches 5.. run effect give @s resistance 1 4 true

execute if entity @s[nbt={HurtTime:10s}] run function enchantments:totem_of_undying/gold_bell_hit

execute unless score @s EnchantmentsGoldBell matches 0.. run scoreboard players set @s EnchantmentsGoldBell 0