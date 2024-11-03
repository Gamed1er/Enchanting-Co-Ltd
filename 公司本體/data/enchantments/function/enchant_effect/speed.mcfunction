execute store result score speed Temp run random value 0..100
execute if score speed Temp matches 99.. run effect give @s speed 5 4
execute if score speed Temp matches 99.. run playsound entity.arrow.hit_player master @a ~ ~ ~ 10 2.0 0.1
execute if score speed Temp matches 99.. run particle dust{color:[0.000,1.000,0.133],scale:2} ~ ~ ~ 1 1 1 1 20 force