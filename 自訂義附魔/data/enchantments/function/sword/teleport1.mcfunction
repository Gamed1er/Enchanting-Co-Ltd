execute store result score @s EnchantmentsTeleportTemp run data get entity @s Rotation[1] 1.0
execute if score @s EnchantmentsTeleportEnderEnergy matches 3.. unless score @s EnchantmentsTeleportCoolDown matches 1.. run execute if score @s[nbt={OnGround:1b}] EnchantmentsTeleportTemp matches 0..60 at @s run tp @s ~ ~ ~ ~ -0.1

execute if score @s EnchantmentsTeleportEnderEnergy matches 3.. unless score @s EnchantmentsTeleportCoolDown matches 1.. at @s if block ^ ^ ^0.7 #taglib:walk_through run tp @s ^ ^ ^0.5
execute if score @s EnchantmentsTeleportEnderEnergy matches 3.. unless score @s EnchantmentsTeleportCoolDown matches 1.. at @s if block ^ ^ ^0.7 #taglib:walk_through run tp @s ^ ^ ^0.5
execute if score @s EnchantmentsTeleportEnderEnergy matches 3.. unless score @s EnchantmentsTeleportCoolDown matches 1.. at @s if block ^ ^ ^0.7 #taglib:walk_through run tp @s ^ ^ ^0.5
execute if score @s EnchantmentsTeleportEnderEnergy matches 3.. unless score @s EnchantmentsTeleportCoolDown matches 1.. at @s if block ^ ^ ^0.7 #taglib:walk_through run tp @s ^ ^ ^0.5
execute if score @s EnchantmentsTeleportEnderEnergy matches 3.. unless score @s EnchantmentsTeleportCoolDown matches 1.. at @s if block ^ ^ ^0.7 #taglib:walk_through run tp @s ^ ^ ^0.5
execute if score @s EnchantmentsTeleportEnderEnergy matches 3.. unless score @s EnchantmentsTeleportCoolDown matches 1.. at @s if block ^ ^ ^0.7 #taglib:walk_through run tp @s ^ ^ ^0.5
execute if score @s EnchantmentsTeleportEnderEnergy matches 3.. unless score @s EnchantmentsTeleportCoolDown matches 1.. at @s if block ^ ^ ^0.7 #taglib:walk_through run tp @s ^ ^ ^0.5
execute if score @s EnchantmentsTeleportEnderEnergy matches 3.. unless score @s EnchantmentsTeleportCoolDown matches 1.. at @s if block ^ ^ ^0.7 #taglib:walk_through run tp @s ^ ^ ^0.5

execute if score @s EnchantmentsTeleportEnderEnergy matches 3.. unless score @s EnchantmentsTeleportCoolDown matches 1.. run effect give @s slow_falling 1 0

execute if score @s EnchantmentsTeleportEnderEnergy matches 3.. unless score @s EnchantmentsTeleportCoolDown matches 1.. run scoreboard players remove @s EnchantmentsTeleportEnderEnergy 3

execute unless score @s EnchantmentsTeleportEnderEnergy matches 3.. unless score @s EnchantmentsTeleportCoolDown matches 1.. run playsound entity.villager.no master @s

execute if score @s EnchantmentsTeleportEnderEnergy matches 3.. unless score @s EnchantmentsTeleportCoolDown matches 1.. at @s run playsound entity.enderman.teleport master @s
execute unless score @s EnchantmentsTeleportCoolDown matches 1.. run scoreboard players set @s EnchantmentsTeleportCoolDown 46
advancement revoke @a only enchantments:teleport1
