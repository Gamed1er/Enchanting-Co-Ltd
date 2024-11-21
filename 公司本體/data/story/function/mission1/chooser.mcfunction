advancement revoke @a only story:interact/mission1

execute as @s[advancements = {story:trigger/mission1_introduce = false}] run scoreboard players set @s StoryPlayerTime 380
execute as @s[advancements = {story:trigger/mission1_introduce = false}] run scoreboard players set @s StoryId 1
execute as @s[advancements = {story:trigger/mission1_introduce = false}] run return fail

execute as @s[advancements = {story:trigger/mission1_introduce = true}] run scoreboard players set @s StoryPlayerTime 42
execute as @s[advancements = {story:trigger/mission1_introduce = true}] run scoreboard players set @s StoryId 2
execute as @s[advancements = {story:trigger/mission1_introduce = false}] run return fail

