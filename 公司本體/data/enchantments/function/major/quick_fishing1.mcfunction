advancement revoke @s only enchantments:major/quick_fishing

loot give @s[scores={EnchantmentsQuickFishing=1..}] fish gameplay/fishing/fish ~ ~ ~ fishing_rod
loot give @s[scores={EnchantmentsQuickFishing=1..}] fish gameplay/fishing/fish ~ ~ ~ fishing_rod

playsound block.enchantment_table.use master @s[scores={EnchantmentsQuickFishing=1..}]

scoreboard players remove @s[scores={EnchantmentsQuickFishing=1..}] EnchantmentsQuickFishing 1
