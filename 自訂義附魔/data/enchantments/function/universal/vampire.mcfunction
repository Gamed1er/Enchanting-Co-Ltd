scoreboard players set @s EnchantmentsVampireLv 0

#Vampire
execute if predicate enchantments:universal/vampire_lv1 run scoreboard players add @s EnchantmentsVampireLv 100
execute if predicate enchantments:universal/vampire_lv2 run scoreboard players add @s EnchantmentsVampireLv 125
execute if predicate enchantments:universal/vampire_lv3 run scoreboard players add @s EnchantmentsVampireLv 150
execute if predicate enchantments:universal/vampire_lv4 run scoreboard players add @s EnchantmentsVampireLv 175
execute if predicate enchantments:universal/vampire_lv5 run scoreboard players add @s EnchantmentsVampireLv 200

#Exterme Survivor
execute if predicate enchantments:leggings/extreme_survivor_lv1 run scoreboard players add @s EnchantmentsVampireLv 400
execute if predicate enchantments:leggings/extreme_survivor_lv2 run scoreboard players add @s EnchantmentsVampireLv 475
execute if predicate enchantments:leggings/extreme_survivor_lv3 run scoreboard players add @s EnchantmentsVampireLv 550
execute if predicate enchantments:leggings/extreme_survivor_lv4 run scoreboard players add @s EnchantmentsVampireLv 625
execute if predicate enchantments:leggings/extreme_survivor_lv5 run scoreboard players add @s EnchantmentsVampireLv 700
execute if predicate enchantments:leggings/extreme_survivor_ex run scoreboard players add @s EnchantmentsVampireLv 400

#Tag = Vampire
execute as @s[tag = Vampire] run scoreboard players add @s EnchantmentsVampireLv 1000


scoreboard players set Temp EnchantmentsVampireLv 5000
scoreboard players operation Temp EnchantmentsVampireLv /= @s EnchantmentsVampireLv
execute if score @s EnchantmentsVampireDamage >= Temp EnchantmentsVampireLv run playsound minecraft:entity.illusioner.cast_spell master @s ~ ~10 ~ 1 0.5 0

execute if score @s EnchantmentsVampireDamage >= Temp EnchantmentsVampireLv run scoreboard players add @s EnchantmentsVampireRegCount 1
execute if score @s EnchantmentsVampireDamage >= Temp EnchantmentsVampireLv run scoreboard players operation @s EnchantmentsVampireDamage -= Temp EnchantmentsVampireLv
