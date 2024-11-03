execute unless score @s EnchantmentsAntidote matches 0.. run scoreboard players set @s EnchantmentsAntidote 0

execute if entity @s[nbt = {active_effects:[{id:"minecraft:poison"}]}, scores = {EnchantmentsAntidote = 0}] run tag @s add antidote
execute if entity @s[nbt = {active_effects:[{id:"minecraft:wither"}]}, scores = {EnchantmentsAntidote = 0}] run tag @s add antidote
execute if entity @s[nbt = {active_effects:[{id:"minecraft:darkness"}]}, scores = {EnchantmentsAntidote = 0}] run tag @s add antidote
execute if entity @s[nbt = {active_effects:[{id:"minecraft:hunger"}]}, scores = {EnchantmentsAntidote = 0}] run tag @s add antidote
execute if entity @s[nbt = {active_effects:[{id:"minecraft:mining_fatigue"}]}, scores = {EnchantmentsAntidote = 0}] run tag @s add antidote
execute if entity @s[nbt = {active_effects:[{id:"minecraft:slowness"}]}, scores = {EnchantmentsAntidote = 0}] run tag @s add antidote
execute if entity @s[nbt = {active_effects:[{id:"minecraft:weakness"}]}, scores = {EnchantmentsAntidote = 0}] run tag @s add antidote

execute if entity @s[tag = antidote] run scoreboard players set @s EnchantmentsAntidote 20
execute if entity @s[tag = antidote] run effect clear @s minecraft:poison
execute if entity @s[tag = antidote] run effect clear @s minecraft:wither
execute if entity @s[tag = antidote] run effect clear @s minecraft:darkness
execute if entity @s[tag = antidote] run effect clear @s minecraft:hunger
execute if entity @s[tag = antidote] run effect clear @s minecraft:mining_fatigue
execute if entity @s[tag = antidote] run effect clear @s minecraft:slowness
execute if entity @s[tag = antidote] run effect clear @s minecraft:weakness
execute if entity @s[tag = antidote] run tellraw @p ["",{"text":"【無毒秘錄】","bold":true,"color":"dark_aqua"},{"text":"發動 !","color":"gray"}]
execute if entity @s[tag = antidote] run playsound minecraft:item.totem.use master @s ~ ~2 ~ 0.5 0.8 0.5
execute if entity @s[tag = antidote] run particle dust{color:[0.145,1.000,0.051],scale:4} ~ ~ ~ 2 0.5 2 10 100 normal
execute if entity @s[tag = antidote] run tag @s remove antidote