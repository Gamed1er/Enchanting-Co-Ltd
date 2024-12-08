execute store result score @s BossSkillCoolDown1 run random value 200..300

summon armor_stand ~ ~ ~ {Tags:["husk_double_sword_tmp"], Small:true, Invisible:true}
item replace entity @n[tag = husk_double_sword_tmp] weapon.mainhand from entity @s weapon.mainhand
item replace entity @n[tag = husk_double_sword_tmp] weapon.offhand from entity @s weapon.offhand
item replace entity @s weapon.mainhand from entity @n[tag = husk_double_sword_tmp] weapon.offhand
item replace entity @s weapon.offhand from entity @n[tag = husk_double_sword_tmp] weapon.mainhand
kill @n[tag = husk_double_sword_tmp]

particle crit ~ ~ ~ 0.3 0.3 0.3 0.7 1250 force @a
effect give @s speed 5 3
effect give @s instant_damage 1 1

data modify entity @s NoAI set value 1b
tp @s ~ ~ ~ facing entity @p
tp @s ~ ~ ~ ~ -1
execute if block ^ ^ ^1.2 #taglib:walk_through run tp @s ^ ^ ^1
execute if block ^ ^ ^1.2 #taglib:walk_through run tp @s ^ ^ ^1
execute if block ^ ^ ^1.2 #taglib:walk_through run tp @s ^ ^ ^1
execute if block ^ ^ ^1.2 #taglib:walk_through run tp @s ^ ^ ^1
execute if block ^ ^ ^1.2 #taglib:walk_through run tp @s ^ ^ ^1
execute if block ^ ^ ^1.2 #taglib:walk_through run tp @s ^ ^ ^1
execute if block ^ ^ ^1.2 #taglib:walk_through run tp @s ^ ^ ^1

data modify entity @s NoAI set value 0b

