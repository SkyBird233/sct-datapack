# 这个函数每 tick 被调用

# 获取 wasd_ro2（最好判断动了再执行但懒得写了（））
execute as @e[type=marker,tag=wasd_pre,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ facing entity @p[tag=wasd]
execute as @s store result score @s wasd_ro2 run data get entity @e[type=marker,tag=wasd_pre,limit=1,sort=nearest] Rotation[0] 10

# 调用 wasd 看看玩家有没移动 / 往哪儿移（写入记分板）
execute as @s run function sct:tools/wasd/judge

# tp 回记录的位置（注意角度)
execute as @s store result entity @e[type=marker,tag=wasd_pre,limit=1,sort=nearest] Rotation[0] float 0.1 run scoreboard players get @s wasd_ro1
## x,z,rotation不变就不 tp 了，不然似乎检测不到跳
scoreboard players set @s temp4 1
execute as @s store result score @s temp1 run data get entity @s Pos[0] 1000
execute as @s store result score @s temp2 run data get entity @s Pos[2] 1000
execute as @s store result score @s temp3 run data get entity @s Rotation[0] 10
execute as @s run scoreboard players operation @s temp3 -= @s wasd_ro1
#@getScoreboard byEntity @a
execute if score @s temp1 = @s wasd_x if score @s temp2 = @s wasd_z if score @s temp3 <= @s temp4 run scoreboard players set @s temp4 0
execute as @s if score @s temp4 matches 1 run tp @s @e[type=marker,tag=wasd_pre,limit=1,sort=nearest]

# 判断 难以确定规范标准，先主观康康
## 不动
execute if score @s wasd_ro matches 0 if score @s tp_select_cd matches 0
## 前
execute if score @s wasd_ro matches 1 if score @s tp_select_cd matches 0 run function sct:tp/gui/move/forward
## 后
execute if score @s wasd_ro matches 3 if score @s tp_select_cd matches 0 run function sct:tp/gui/move/backwards
## 左
execute if score @s wasd_ro matches 4 if score @s tp_select_cd matches 0 run function sct:tp/gui/move/left
## 右
execute if score @s wasd_ro matches 2 if score @s tp_select_cd matches 0 run function sct:tp/gui/move/right
## 调用 show_selected
execute as @s run function sct:tp/gui/show_selected


## 跳
execute if score @s wasd_ro matches 5 if score @s tp_select_cd matches 0 run function sct:tp/gui/move/up

# 冷却 -1
execute as @s unless score @s tp_select_cd matches 0 run scoreboard players remove @s tp_select_cd 1
