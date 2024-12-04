execute store result score Random EnchantmentsLavaFisher run random value 100..200
scoreboard players remove @a[scores = {EnchantmentsAntidote = 1..}] EnchantmentsAntidote 1

schedule function enchantments:tick1s 1s

item replace entity @e[type = wither_skeleton, tag = !modified] weapon.mainhand with stone_sword[enchantments={levels:{"enchantments:mystery/wither_blade":1}}] 1
tag @n[type = wither_skeleton, tag = !modified] add modified

scoreboard players remove @e[scores = {EnchantmentsFoodBeggarCoolDown = 1..}, type = villager] EnchantmentsFoodBeggarCoolDown 1
scoreboard players remove @a[scores = {EnchantmentsFoodBeggarCoolDown = 1..}] EnchantmentsFoodBeggarCoolDown 1
