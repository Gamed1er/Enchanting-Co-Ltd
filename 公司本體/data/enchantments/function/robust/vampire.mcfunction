scoreboard players set @s EnchantmentsVampireLv 0

#Vampire
execute if predicate enchantments:robust/vampire_lv1 run scoreboard players add @s EnchantmentsVampireLv 50
execute if predicate enchantments:robust/vampire_lv2 run scoreboard players add @s EnchantmentsVampireLv 75
execute if predicate enchantments:robust/vampire_lv3 run scoreboard players add @s EnchantmentsVampireLv 100
execute if predicate enchantments:robust/vampire_lv1 run scoreboard players add @s EnchantmentsVampireLv 125
execute if predicate enchantments:robust/vampire_lv5 run scoreboard players add @s EnchantmentsVampireLv 150

#Exterme Survivor
execute if predicate enchantments:robust/extreme_survivor_lv1 run scoreboard players add @s EnchantmentsVampireLv 200
execute if predicate enchantments:robust/extreme_survivor_lv2 run scoreboard players add @s EnchantmentsVampireLv 250
execute if predicate enchantments:robust/extreme_survivor_lv3 run scoreboard players add @s EnchantmentsVampireLv 300
execute if predicate enchantments:robust/extreme_survivor_lv4 run scoreboard players add @s EnchantmentsVampireLv 350
execute if predicate enchantments:robust/extreme_survivor_lv5 run scoreboard players add @s EnchantmentsVampireLv 400
execute if predicate enchantments:robust/extreme_survivor_ex run scoreboard players add @s EnchantmentsVampireLv 200

#Tag = Vampire
execute as @s[tag = Vampire] run scoreboard players add @s EnchantmentsVampireLv 1000


scoreboard players set Temp EnchantmentsVampireLv 40000
scoreboard players operation Temp EnchantmentsVampireLv /= @s EnchantmentsVampireLv
execute if score @s EnchantmentsVampireDamage >= Temp EnchantmentsVampireLv run function enchantments:robust/vampire_regan
execute if score @s EnchantmentsVampireDamage >= Temp EnchantmentsVampireLv run scoreboard players operation @s EnchantmentsVampireDamage -= Temp EnchantmentsVampireLv 

