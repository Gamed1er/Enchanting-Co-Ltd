execute if items entity @s weapon.offhand ender_pearl unless score @s EnchantmentsTeleportEnderEnergy matches 750.. run function enchantments:sword/teleport_remove_enderperal

title @s actionbar ["",{"text":"當前瞬移能量 : ","bold":true,"color":"gray"},{"score":{"name":"@s","objective":"EnchantmentsTeleportEnderEnergy"},"bold":true,"color":"dark_aqua"},{"text":" / 750  ","bold":true,"color":"dark_aqua"},{"text":"層","bold":true,"color":"gray"},"",{"text":"，冷卻時間 : ","bold":true,"color":"gray"},{"score":{"name":"@s","objective":"EnchantmentsTeleportCoolDown"},"bold":true,"color":"red"},{"text":" tick","bold":true,"color":"gray"}]

execute as @a if predicate enchantments:sword/teleport unless predicate enchantments:sword/teleport2 run item modify entity @s weapon.mainhand enchantments:teleport_setting
