scoreboard objectives add BossSkillCoolDown1 dummy "Boss 技能冷卻 1"
scoreboard objectives add BossSkillCoolDown2 dummy "Boss 技能冷卻 2"
scoreboard objectives add BossSkillCoolDown3 dummy "Boss 技能冷卻 3"

scoreboard objectives add BossVariable1 dummy "Boss 變數 1"
scoreboard objectives add BossVariable2 dummy "Boss 變數 2"
scoreboard objectives add BossVariable3 dummy "Boss 變數 3"

kill @e[tag = boss]

kill @e[tag = boss_partner]