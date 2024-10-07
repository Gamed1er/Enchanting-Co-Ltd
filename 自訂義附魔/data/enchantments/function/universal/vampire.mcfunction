scoreboard players set @s EnchantmentsVampireLv 0
execute if predicate enchantments:universal/vampire_lv1 run scoreboard players add @s EnchantmentsVampireLv 100
execute if predicate enchantments:universal/vampire_lv2 run scoreboard players add @s EnchantmentsVampireLv 125
execute if predicate enchantments:universal/vampire_lv3 run scoreboard players add @s EnchantmentsVampireLv 150
execute if predicate enchantments:universal/vampire_lv4 run scoreboard players add @s EnchantmentsVampireLv 175
execute if predicate enchantments:universal/vampire_lv5 run scoreboard players add @s EnchantmentsVampireLv 200

#Vampire
execute as @s[tag = Vampire] run scoreboard players add @s EnchantmentsVampireLv 2000


scoreboard players set Temp EnchantmentsVampireLv 40000
scoreboard players operation Temp EnchantmentsVampireLv /= @s EnchantmentsVampireLv
execute if score @s EnchantmentsVampireDamage >= Temp EnchantmentsVampireLv run playsound entity.iron_golem.repair master @s ~ ~ ~ 1 1 1
execute if score @s EnchantmentsVampireDamage >= Temp EnchantmentsVampireLv run effect give @s[type = !#undead] instant_health 1 0
execute if score @s EnchantmentsVampireDamage >= Temp EnchantmentsVampireLv run effect give @s[type = #undead] instant_damage 1 0
execute if score @s EnchantmentsVampireDamage >= Temp EnchantmentsVampireLv run scoreboard players operation @s EnchantmentsVampireDamage -= Temp EnchantmentsVampireLv
