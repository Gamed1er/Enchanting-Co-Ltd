advancement revoke @a only story:interact/worker2

execute as @s[advancements = {story:trigger/worker2_map_making_1 = false}] run scoreboard players set @s StoryPlayerTime 460
execute as @s[advancements = {story:trigger/worker2_map_making_1 = false}] run scoreboard players set @s StoryId 7
execute as @s[advancements = {story:trigger/worker2_map_making_1 = false}] run return fail

execute as @s[advancements = {story:trigger/worker2_map_making_2 = false}, nbt = {SelectedItem:{id:"minecraft:tnt",count:5}}] run scoreboard players set @s StoryPlayerTime 210
execute as @s[advancements = {story:trigger/worker2_map_making_2 = false}, nbt = {SelectedItem:{id:"minecraft:tnt",count:5}}] run scoreboard players set @s StoryId 9
execute as @s[advancements = {story:trigger/worker2_map_making_2 = false}, nbt = {SelectedItem:{id:"minecraft:tnt",count:5}}] run return fail

execute as @s[advancements = {story:trigger/worker2_map_making_2 = false}] run scoreboard players set @s StoryPlayerTime 290
execute as @s[advancements = {story:trigger/worker2_map_making_2 = false}] run scoreboard players set @s StoryId 8
execute as @s[advancements = {story:trigger/worker2_map_making_2 = false}] run return fail

execute as @s[advancements = {story:trigger/worker2_map_making_2 = true}] run scoreboard players set @s StoryPlayerTime 50
execute as @s[advancements = {story:trigger/worker2_map_making_2 = true}] run scoreboard players set @s StoryId 10
execute as @s[advancements = {story:trigger/worker2_map_making_2 = true}] run return fail
