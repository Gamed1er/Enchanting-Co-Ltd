
#Husk
execute store result score Random BossTrigger run random value 1..1000
execute as @e[type = husk, tag = !spawn_set, limit = 1] at @s if biome ~ ~ ~ desert unless entity @n[tag = husk_double_sword, distance = ..100] if score Random BossTrigger matches 1..20 run function boss:husk_double_sword/spawn
tag @e[type = husk, tag = !spawn_set] add spawn_set

execute store result score Random BossTrigger run random value 1..1000
execute as @e[type = wither_skeleton, tag = !spawn_set] run item replace entity @s weapon.mainhand with stone_sword[enchantments = {"enchantments:mystery/wither_blade":1}]
execute as @e[type = wither_skeleton, tag = !spawn_set, limit = 1] at @s if score Random BossTrigger matches 1..50 run function boss:wither_flame_skeleton/force_spawn
tag @e[type = wither_skeleton, tag = !spawn_set] add spawn_set

schedule function boss:spawn 1s