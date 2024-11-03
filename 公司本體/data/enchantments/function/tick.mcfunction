scoreboard players remove @a[scores = {EnchantmentsTeleportCoolDown = 1..}] EnchantmentsTeleportCoolDown 2

# Vampire
scoreboard players set @a[predicate= ! enchantments:is_hand_vampire, tag = !Vampire] EnchantmentsVampireDamage 0
execute as @a[tag = Vampire] run function enchantments:universal/vampire

execute as @a store result score @s EnchantmentsHunger run data get entity @s foodLevel 1