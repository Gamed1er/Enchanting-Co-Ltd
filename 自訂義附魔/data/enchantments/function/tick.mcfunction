scoreboard players remove @a[scores = {EnchantmentsTeleportCoolDown = 1..}] EnchantmentsTeleportCoolDown 2

# Vampire
scoreboard players set @a[predicate= ! enchantments:is_hand_vampire, tag = !Vampire] EnchantmentsVampireDamage 0
execute as @a[tag = Vampire] run function enchantments:universal/vampire

execute as @e[type = !#undead, scores = {EnchantmentsVampireRegCount = 1..}] run effect give @s instant_health 1 0
execute as @e[type =  #undead, scores = {EnchantmentsVampireRegCount = 1..}] run effect give @s instant_damage 1 0
scoreboard players remove @e[scores = {EnchantmentsVampireRegCount = 1..}] EnchantmentsVampireRegCount 1