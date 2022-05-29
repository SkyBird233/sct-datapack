# 记录玩家选了哪个点
scoreboard objectives add tp_selected dummy
scoreboard players set @a tp_selected 1
# 冷却
scoreboard objectives add tp_select_cd dummy
scoreboard players set @a tp_select_cd 0
