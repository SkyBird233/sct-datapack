execute as @s run tag @s add tp_gui

# 记录玩家开 gui 时的位置和朝向（需记录数据看 wasd/init）
execute as @s at @s run summon marker ~ ~ ~ {Tags:["wasd_pre"]}
execute as @s store result score @s wasd_x run data get entity @s Pos[0] 1000
execute as @s store result score @s wasd_y run data get entity @s Pos[1] 1000
execute as @s store result score @s wasd_z run data get entity @s Pos[2] 1000
execute as @s store result score @s wasd_ro1 run data get entity @s Rotation[0] 10
execute as @s store result entity @e[type=marker,tag=wasd_pre,limit=1,sort=nearest] Rotation[0] float 0.1 run data get entity @s Rotation[0] 10
