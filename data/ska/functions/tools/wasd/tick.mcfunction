#execute as @a[tag=wasd] run function ska:tools/wasd/tick
# Pos 为保证精度乘 1000 之类，rotation 乘 10

# 获取 wasd_ro2（应该要判断位置变了再执行但懒得写了）
execute as @s at @s run summon marker ~ ~ ~ {Tags:["wasd_pre"]}
execute as @s store result entity @e[type=marker,tag=wasd_pre,limit=1,sort=nearest] Pos[0] double 0.001 run scoreboard players get @s wasd_x
execute as @s store result entity @e[type=marker,tag=wasd_pre,limit=1,sort=nearest] Pos[2] double 0.001 run scoreboard players get @s wasd_z
## 下面这一行可能待改进（目标选择方面）
execute as @e[type=marker,tag=wasd_pre,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ facing entity @p[tag=wasd]
execute as @s store result score @s wasd_ro2 run data get entity @e[type=marker,tag=wasd_pre,limit=1,sort=nearest] Rotation[0] 10
execute as @s run kill @e[type=marker,tag=wasd_pre]

# 判断朝向
execute as @s run function ska:tools/wasd/judge

# 写入此刻 rotation,x,y,z 
execute as @s store result score @s wasd_x run data get entity @s Pos[0] 1000
execute as @s store result score @s wasd_y run data get entity @s Pos[1] 1000
execute as @s store result score @s wasd_z run data get entity @s Pos[2] 1000
execute as @s store result score @s wasd_ro1 run data get entity @s Rotation[0] 10
