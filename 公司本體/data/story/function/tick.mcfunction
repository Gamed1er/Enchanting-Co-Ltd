execute as @a unless score @s StoryPlayerTime matches ..0 run scoreboard players remove @s StoryPlayerTime 1
tag @a[scores = {StoryPlayerTime = 1..}] remove Idle
tag @a[scores = {StoryPlayerTime = ..0}] add Idle
execute as @a[scores = {StoryId = 1..}] at @s run function story:stroy_choose/story_choose
scoreboard players set @a[scores = {StoryPlayerTime = ..0}] StoryId -1