execute as @a if score @s MineStone matches 1.. run function enchantments:stone_series/mine_stone
execute as @a if score @s MineDeepslate matches 1.. run function enchantments:stone_series/mine_deepslate

scoreboard players set @a[scores={MineStone=1..}] MineStone 0
scoreboard players set @a[scores={MineDeepslate=1..}] MineDeepslate 0
scoreboard players set @a[scores={MineOakLog=1..}] MineOakLog 0

scoreboard players remove @a[scores = {EnchantmentsTeleportCoolDown = 1..}] EnchantmentsTeleportCoolDown 2