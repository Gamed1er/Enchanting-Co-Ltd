scoreboard players remove @a[scores = {EnchantmentsTeleportCoolDown = 1..}] EnchantmentsTeleportCoolDown 2

# Vampire
scoreboard players set @a[predicate= ! enchantments:is_hand_vampire, tag = !Vampire] EnchantmentsVampireDamage 0
execute as @a[tag = Vampire] run function enchantments:universal/vampire

execute as @e[type = !#undead, scores = {EnchantmentsVampireRegCount = 4..}] at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0f,Duration:6,Age:4,ReapplicationDelay:1,potion_contents:{custom_effects:[{id:"minecraft:instant_health",amplifier:0b,duration:1,show_icon:0b,show_particles:0b}]}}
execute as @e[type =  #undead, scores = {EnchantmentsVampireRegCount = 4..}] at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0f,Duration:6,Age:4,ReapplicationDelay:1,potion_contents:{custom_effects:[{id:"minecraft:instant_damage",amplifier:0b,duration:1,show_icon:0b,show_particles:0b}]}}
scoreboard players remove @e[scores = {EnchantmentsVampireRegCount = 4..}] EnchantmentsVampireRegCount 4