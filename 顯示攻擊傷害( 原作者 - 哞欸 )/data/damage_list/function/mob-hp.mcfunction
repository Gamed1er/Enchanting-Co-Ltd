execute as @s store result score @s mob-hp run data get entity @s Health
execute as @s store result score @s mob-hp-math run scoreboard players get @s mob-hp
execute as @s unless score @s mob-hp = @s mob-hp-late run tag @s add hp-math
execute as @s[tag=hp-math] if score @s mob-hp-late > @s mob-hp store result score @s hp-math run scoreboard players operation @s mob-hp-late-math -= @s mob-hp-math
execute as @s[tag=hp-math] if score @s mob-hp > @s mob-hp-late store result score @s hp-math run scoreboard players operation @s mob-hp-math -= @s mob-hp-late-math
execute as @s[tag=hp-math] store result storage hpmath hpmath int 1 run scoreboard players get @s hp-math
execute as @s[tag=hp-math] if score @s mob-hp > @s mob-hp-late at @s run function damage_list:healingtext with storage hpmath
execute as @s[tag=hp-math] if score @s mob-hp-late > @s mob-hp at @s run function damage_list:hurttext with storage hpmath
execute as @s[tag=hp-math] run tag @s remove hp-math
execute as @s store result score @s mob-hp-late run scoreboard players get @s mob-hp
execute as @s store result score @s mob-hp-late-math run scoreboard players get @s mob-hp-late