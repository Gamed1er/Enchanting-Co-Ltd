execute store result score Random EnchantmentsLavaFisher run random value 100..200
scoreboard players remove @a[scores = {EnchantmentsAntidote = 1..}] EnchantmentsAntidote 1

schedule function enchantments:tick1s 1s

scoreboard players remove @e[scores = {EnchantmentsFoodBeggarCoolDown = 1..}, type = villager] EnchantmentsFoodBeggarCoolDown 1
scoreboard players remove @a[scores = {EnchantmentsFoodBeggarCoolDown = 1..}] EnchantmentsFoodBeggarCoolDown 1
