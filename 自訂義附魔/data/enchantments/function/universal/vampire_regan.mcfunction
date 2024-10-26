execute store result score @s EnchantmentsVampireTemp run data get entity @s Health 100
scoreboard players add @s EnchantmentsVampireTemp 100
execute store result storage minecraft:enchantments VampireTemp float 0.01 run scoreboard players get @s EnchantmentsVampireTemp
data modify entity @s Health set from storage enchantments VampireTemp
playsound minecraft:entity.illusioner.cast_spell master @s ~ ~10 ~ 1 0.5 0
