execute if items entity @s weapon.offhand ender_pearl unless score @s EnchantmentsTeleportEnderEnergy matches 300.. run function enchantments:intelligent/teleport_remove_enderperal

title @s actionbar ["",{"translate":"enchantment.enchantments.teleport.effect.1","bold":true,"color":"gray"},{"score":{"name":"@s","objective":"EnchantmentsTeleportEnderEnergy"},"bold":true,"color":"dark_aqua"},{"text":" / 300  ","bold":true,"color":"dark_aqua"},{"translate":"enchantment.enchantments.teleport.effect.2","bold":true,"color":"gray"},"",{"translate":"enchantment.enchantments.teleport.effect.3","bold":true,"color":"gray"},{"score":{"name":"@s","objective":"EnchantmentsTeleportCoolDown"},"bold":true,"color":"red"},{"text":" tick","bold":true,"color":"gray"}]

execute as @a if predicate enchantments:intelligent/teleport unless predicate enchantments:intelligent/teleport2 run item modify entity @s weapon.mainhand enchantments:intelligent/teleport_setting
