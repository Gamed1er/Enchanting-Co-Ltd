schedule function system:tick_1s 1s

execute as @e[type=iron_golem, tag=!test] run attribute @s generic.armor base set 10
execute as @e[type=iron_golem, tag=!test] run attribute @s generic.armor_toughness base set 5
execute as @e[type=iron_golem, tag=!test] run attribute @s generic.attack_damage base set 30


#Hint
    execute if score cooldown Hint matches ..-1 run function company:hints/serach
    execute unless score cooldown Hint matches 0.. store result score cooldown Hint run random value 180..300
    scoreboard players remove cooldown Hint 1
    scoreboard players remove RewardTime HintReward 1

execute if entity @n[type=fishing_bobber] store result score Random EnchantmentsLavaFisher run random value 100..300

execute as @a[scores = {AchievementsKillEnderMan = 1000..}] run advancement grant @s only company:achieve/kill_enderman

#Boss
scoreboard players remove @a BossBreadMasterCoolDown 1

advancement grant @a only company:achieve/root