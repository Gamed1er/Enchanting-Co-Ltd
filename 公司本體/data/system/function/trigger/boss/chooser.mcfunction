execute if score @s BossTrigger matches -1 as @e[tag = boss, distance = ..32] run tp ~ ~-1000 ~
execute if score @s BossTrigger matches -1 as @e[tag = boss_partner, distance = ..32] run tp ~ ~-1000 ~
execute if score @s BossTrigger matches -1 run tellraw @a [{"selector": "@s", "color": "green"}, {"translate": "say.trigger.chooser", "color": "dark_gray"}]

scoreboard players set @s BossTrigger 0
