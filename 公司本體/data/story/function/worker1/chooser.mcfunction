advancement revoke @a only story:interact/worker1

execute as @s[advancements = {story:trigger/worker1_map_making_1 = false}] run scoreboard players set @s StoryPlayerTime 210
execute as @s[advancements = {story:trigger/worker1_map_making_1 = false}] run scoreboard players set @s StoryId 3
execute as @s[advancements = {story:trigger/worker1_map_making_1 = false}] run return fail

execute as @s[advancements = {story:trigger/worker1_map_making_2 = false}, nbt = {SelectedItem:{id:"minecraft:map",count:5}}] run scoreboard players set @s StoryPlayerTime 250
execute as @s[advancements = {story:trigger/worker1_map_making_2 = false}, nbt = {SelectedItem:{id:"minecraft:map",count:5}}] run scoreboard players set @s StoryId 5
execute as @s[advancements = {story:trigger/worker1_map_making_2 = false}, nbt = {SelectedItem:{id:"minecraft:map",count:5}}] run return fail

execute as @s[advancements = {story:trigger/worker1_map_making_2 = false}] run scoreboard players set @s StoryPlayerTime 130
execute as @s[advancements = {story:trigger/worker1_map_making_2 = false}] run scoreboard players set @s StoryId 4
execute as @s[advancements = {story:trigger/worker1_map_making_2 = false}] run return fail

execute as @s[advancements = {story:trigger/worker1_map_making_2 = true}] run scoreboard players set @s StoryPlayerTime 90
execute as @s[advancements = {story:trigger/worker1_map_making_2 = true}] run scoreboard players set @s StoryId 6
execute as @s[advancements = {story:trigger/worker1_map_making_2 = true}] run return fail
