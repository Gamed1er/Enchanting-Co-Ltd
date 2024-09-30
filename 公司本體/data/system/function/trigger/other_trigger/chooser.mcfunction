execute if score @s OtherTrigger matches 0 if score @s Hint matches 0 run function system:trigger/other_trigger/0_0
execute if score @s OtherTrigger matches 0 unless score @s Hint matches 0 run function system:trigger/other_trigger/0_1
execute if score @s OtherTrigger matches 1 if score @s HintReward matches 0.. run function system:trigger/other_trigger/1_0
execute if score @s OtherTrigger matches 1 unless score @s HintReward matches 0.. run function system:trigger/other_trigger/1_1
execute if score @s OtherTrigger matches 2 run function company:others/elevator_up
execute if score @s OtherTrigger matches 3 run function company:others/elevator_down

execute if score @s OtherTrigger matches 4 run function system:trigger/other_trigger/4
execute if score @s OtherTrigger matches 5 run function company:others/sell_enchantments
scoreboard players set @s OtherTrigger -1