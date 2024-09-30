execute store result score Beast Temp run random value -50..50

execute if score Beast Temp matches 25..48 run playsound resourcepack:beastancestor.normal
execute if score Beast Temp matches 49 run playsound resourcepack:beastancestor.special1
execute if score Beast Temp matches 50 run playsound resourcepack:beastancestor.special2