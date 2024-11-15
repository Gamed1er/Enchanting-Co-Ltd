execute as @a run tellraw @s ["",{"translate":"say.load.1","bold":true,"color":"light_purple"},{"translate":"say.load.2","color":"gray"},"\n",{"translate":"say.load.3","color":"gray"},{"selector":"@s","bold":true,"color":"green"},{"translate":"say.load.4","color":"gray"},"\n",{"translate":"say.load.5","color":"gray"},{"translate":"say.load.6","bold":true,"color":"dark_green","clickEvent":{"action":"copy_to_clipboard","value":"/function company:restart_company/start"}},{"translate":"say.load.7","color":"gray"}]

#tick_1t
    schedule clear system:tick_1s
    schedule clear system:tick_20min
    schedule clear system:tick_60s

    schedule function system:tick_1s 1s
    schedule function system:tick_20min 1200s
    schedule function system:tick_60s 60s

#scoreboard
    #Hints
    scoreboard objectives add Temp dummy "Temp"
    scoreboard objectives add OtherTrigger trigger "其他功能的觸發器"


    scoreboard objectives add Hint dummy "提示的獎勵"
    scoreboard objectives add HintReward dummy "提示的獎勵"
    scoreboard objectives add HintRewardTrigger trigger "提示獎勵的觸發器"

    #Quests
    scoreboard objectives add QuestJudgmental dummy "任務達成條件判斷"
    scoreboard objectives add QuestRequirements dummy "任務查成條件"
    scoreboard objectives add QuestID dummy "玩家當前任務 ID"
    scoreboard objectives add QuestTrigger trigger "任務觸發器"
    scoreboard objectives add QuestXpRequiredEasy dummy "玩家任務所需經驗值(簡單)"
    scoreboard objectives add QuestXpRequiredMedium dummy "玩家任務所需經驗值(中等)"
    scoreboard objectives add QuestXpRequiredHard dummy "玩家任務所需經驗值(困難)"
    scoreboard objectives add QuestHandOn dummy "玩家是否需要繳交物品"
    scoreboard objectives add QuestTemp dummy "任務用暫存"
    function company:quests/reset_quest

    #Bank
    scoreboard objectives add BankLapisCount dummy "玩家當前銀行青金石數量"
    scoreboard objectives setdisplay list BankLapisCount
    scoreboard objectives add BankLevel dummy "玩家當前銀行等級"
    scoreboard objectives add BankTrigger trigger "銀行得觸發器"
    scoreboard objectives add BankUseTrigger trigger "銀行操作觸發器"

    #Boss
    scoreboard objectives add BossTrigger trigger "Boss 觸發器"
    scoreboard objectives add BossBreadMasterCoolDown dummy "召喚麵包大俠冷卻時間"

    #Check if dimension spawn
    execute in company:company run forceload add -1 -1 1 1
    execute unless entity @e[tag = v1] in company:company positioned 0 0 0 run place template company:company_main/v1
    execute as @e[tag = v1] run say 【公司建設部】公司已經設立完畢
    scoreboard objectives add CompanyTeleportCooldown dummy "公司傳送冷卻"

    scoreboard objectives add AchievementsKillEnderMan minecraft.killed:enderman "成就-擊殺終界使者"
    scoreboard objectives add AchievementsEatBread dummy "成就-吃麵包"

function boss:load
