scoreboard players set Temp HintReward 0
execute if score @s HintReward matches 0 if score RewardTime HintReward matches 0.. run scoreboard players set Temp HintReward 1
execute if score @s HintRewardTrigger matches 1 if score Temp HintReward matches 1 run function system:trigger/hint_reward/1
execute if score @s HintRewardTrigger matches 2 if score Temp HintReward matches 1 run function system:trigger/hint_reward/2
execute if score @s HintRewardTrigger matches 3 if score Temp HintReward matches 1 run function system:trigger/hint_reward/3
execute if score @s HintRewardTrigger matches 4 if score Temp HintReward matches 1 run function system:trigger/hint_reward/4
execute if score Temp HintReward matches 0 run function system:trigger/hint_reward/invalid

scoreboard players set @s HintReward -1
scoreboard players set @s HintRewardTrigger -1