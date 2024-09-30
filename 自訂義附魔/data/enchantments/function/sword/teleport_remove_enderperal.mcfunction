execute store result score @s EnchantmentsTeleportTemp if items entity @s weapon.offhand ender_pearl

item replace entity @s weapon.offhand with air
scoreboard players operation @s EnchantmentsTeleportEnderEnergy += @s EnchantmentsTeleportTemp

playsound entity.arrow.hit_player master @s