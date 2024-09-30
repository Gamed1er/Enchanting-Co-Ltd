## 編號意義 :
    # 第一個數字 : 1 -> 簡單 , 2 -> 普通 , 3 -> 困難
    # 第二個數字 : 1 -> 採集 , 2 -> 打怪
    # 第三、四個數字 : ID


#挖石頭
scoreboard players set 1101 QuestRequirements 64
scoreboard objectives add QuestMinedStone minecraft.mined:stone
scoreboard objectives add QuestMinedDeepslate minecraft.mined:deepslate

#挖原木
scoreboard players set 1102 QuestRequirements 64
scoreboard objectives add QuestMinedOakLog minecraft.mined:oak_log
scoreboard objectives add QuestMinedBirchLog minecraft.mined:birch_log

#擊殺不死生物
scoreboard players set 1103 QuestRequirements 20
advancement revoke @a only company:quests/1103

#擊殺終界使者
scoreboard players set 1104 QuestRequirements 5
advancement revoke @a only company:quests/1104

#在白天擊殺苦力怕
scoreboard players set 2101 QuestRequirements 12
advancement revoke @a only company:quests/2101

#製作麵包
scoreboard players set 1105 QuestRequirements 12
scoreboard objectives add QuestMakingBread crafted:bread

#十

