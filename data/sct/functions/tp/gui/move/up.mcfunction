execute as @s run scoreboard players set @s tp_select_cd 4

# 触发传送
execute as @s if score @s tp_selected matches 1 run say tp 1
execute as @s if score @s tp_selected matches 2 run say tp 2
execute as @s if score @s tp_selected matches 3 run say tp 3
execute as @s if score @s tp_selected matches 4 run say tp 4
execute as @s if score @s tp_selected matches 5 run say tp 5
execute as @s if score @s tp_selected matches 6 run say tp 6
# 退出
title @s actionbar {"text":""}
execute as @s run kill @e[type=marker,tag=wasd_pre,limit=1,sort=nearest]
execute as @s run tag @s remove tp_gui
execute as @s run scoreboard players set @s tp_select_cd 0
