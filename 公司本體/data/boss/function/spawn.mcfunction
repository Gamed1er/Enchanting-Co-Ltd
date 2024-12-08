execute store result score Random BossTrigger run random value 1..1000

#Husk
execute as @e[type = husk, tag = !spawn_set, limit = 1] at @s if entity @n[tag = desert_pyramid, distance = ..32] unless entity @n[tag = husk_double_sword, distance = ..100] if score Random BossTrigger matches 1..200 run function boss:husk_double_sword/spawn
tag @e[type = husk, tag = !spawn_set] add spawn_set

execute as @e[type = wither_skeleton, tag = !spawn_set] run item replace entity @s weapon.mainhand with stone_sword[enchantments = {"enchantments:mystery/wither_blade":1}]
tag @e[type = wither_skeleton, tag = !spawn_set] add spawn_set

schedule function boss:spawn 1s