scoreboard players remove @a[scores = {EnchantmentsTeleportCoolDown = 1..}] EnchantmentsTeleportCoolDown 2

# Vampire
scoreboard players set @a[predicate= ! enchantments:is_hand_vampire, tag = !Vampire] EnchantmentsVampireDamage 0
execute as @a[tag = Vampire] run function enchantments:robust/vampire

execute as @a store result score @s EnchantmentsHunger run data get entity @s foodLevel 1
execute as @e run attribute @s[predicate = enchantments:major/gallop] movement_speed modifier remove 1783965

execute as @e unless predicate enchantments:major/undergound_miner run attribute @s minecraft:mining_efficiency modifier remove 5904845092