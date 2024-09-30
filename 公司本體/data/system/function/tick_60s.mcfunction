schedule function system:tick_60s 60s

#鉤鉤有餘上

execute as @a unless score @s EnchantmentsQuickFishing matches -2147483648..2147483647 run scoreboard players set @s EnchantmentsQuickFishing 0
scoreboard players add @a[scores={EnchantmentsQuickFishing = ..19}] EnchantmentsQuickFishing 1