execute if score @s CompanyTeleportCooldown matches 1 run title @s title [{"text":"準備傳送 !", "color": "#71007b", "bold": true}]
execute if score @s CompanyTeleportCooldown matches 41 run title @s title [{"text":"3", "color": "#71007b", "bold": true}]
execute if score @s CompanyTeleportCooldown matches 61 run title @s title [{"text":"2", "color": "dark_purple", "bold": true}]
execute if score @s CompanyTeleportCooldown matches 81 run title @s title [{"text":"1", "color": "red", "bold": true}]
execute if score @s CompanyTeleportCooldown matches 101 if entity @e[tag = tp_to_company, distance = ..1.5] run gamemode adventure @s[gamemode = survival]
execute if score @s CompanyTeleportCooldown matches 101 if entity @e[tag = tp_to_company, distance = ..1.5] in company:company at @n[tag = to_overworld] run tp @s ~ ~ ~
execute if score @s CompanyTeleportCooldown matches 101 if entity @e[tag = to_overworld, distance = ..1.5] run gamemode survival @s[gamemode = adventure]
execute if score @s CompanyTeleportCooldown matches 101 if entity @e[tag = to_overworld, distance = ..1.5] at @n[tag = tp_to_company] run tp @s ~ ~ ~
execute if score @s CompanyTeleportCooldown matches 102 run title @s title [{"text":"傳送完畢 !", "color": "green", "bold": true}]

execute if score @s CompanyTeleportCooldown matches 1 run playsound entity.illusioner.prepare_mirror
execute if score @s CompanyTeleportCooldown matches 41 run playsound entity.arrow.hit_player
execute if score @s CompanyTeleportCooldown matches 61 run playsound entity.arrow.hit_player
execute if score @s CompanyTeleportCooldown matches 81 run playsound entity.arrow.hit_player
execute if score @s CompanyTeleportCooldown matches 102 run playsound entity.enderman.teleport
