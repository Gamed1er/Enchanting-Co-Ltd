execute at @n[type=fishing_bobber] if block ~ ~ ~ minecraft:lava run scoreboard players add @n[type=fishing_bobber] EnchantmentsLavaFisher 1

scoreboard players set Temp EnchantmentsLavaFisher 0
execute if score @n[type = fishing_bobber] EnchantmentsLavaFisher >= Random EnchantmentsLavaFisher run scoreboard players set Temp EnchantmentsLavaFisher 1

#success
execute if score Temp EnchantmentsLavaFisher matches 1 at @n[type = fishing_bobber] as @p at @p run loot give @s fish enchantments:lava_fisher ~ ~ ~
execute if score Temp EnchantmentsLavaFisher matches 1 at @n[type = fishing_bobber] as @p at @p run playsound entity.fishing_bobber.retrieve master @s
execute if score Temp EnchantmentsLavaFisher matches 1 at @n[type = fishing_bobber] as @p at @p run summon experience_orb ~ ~ ~ {Value:5b}
execute if score Temp EnchantmentsLavaFisher matches 1 at @n[type = fishing_bobber] as @p at @p run kill @n[type = fishing_bobber]