execute as @a run tellraw @s ["",{"text":"【附魔股份有限公司】","bold":true,"color":"light_purple"},{"text":" 安裝完畢","color":"gray"},"\n",{"text":"歡迎","color":"gray"},{"selector":"@s","bold":true,"color":"green"},{"text":"來到公司","color":"gray"},"\n",{"text":"請在一個指令方塊中輸入指令","color":"gray"},{"text":"( 點我複製 )","bold":true,"color":"dark_green","clickEvent":{"action":"copy_to_clipboard","value":"function company:restart_company/start"}},{"text":"來完成設置","color":"gray"}]

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
    function company:quests/reset_quest

    #Bank
    scoreboard objectives add BankLapisCount dummy "玩家當前銀行青金石數量"
    scoreboard objectives add BankLevel dummy "玩家當前銀行等級"
    scoreboard objectives add BankTrigger trigger "銀行得觸發器"
    scoreboard objectives add BankUseTrigger trigger "銀行操作觸發器"

    #Boss
    scoreboard objectives add BossTrigger trigger "Boss 觸發器"
    scoreboard objectives add BossBreadMasterCoolDown dummy "召喚麵包大俠冷卻時間"


    scoreboard objectives add AchievementsKillEnderMan minecraft.killed:enderman "成就-擊殺終界使者"
    scoreboard objectives add AchievementsEatBread dummy "成就-吃麵包"

function boss:load