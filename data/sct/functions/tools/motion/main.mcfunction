# 使用前先生成实体，带标签"motion_d"。使用后记得移除
## 参考 https://www.mcbbs.net/thread-772939-1-1.html

# 面前一格生成标记，以此坐标计算以统一 motion_t 倍数
execute as @s at @s run tp @s ~ ~ ~ facing entity @e[tag=motion_d,limit=1,sort=nearest]
execute as @s at @s run summon area_effect_cloud ^ ^ ^1 {Duration:60,Tags:["motion_m"]}
execute as @s at @s run tp @s ~ ~ ~ facing ~ ~1 ~
##箭的模型方向好像比较奇怪，暂时先让它们都朝下吧…

# 计算（motion_t 使用前记得设置）
execute as @s store result score @s motion_1 run data get entity @e[limit=1,sort=nearest,tag=motion_m] Pos[0] 100000
execute as @s store result score @s motion_0 run data get entity @s Pos[0] 100000
execute as @s run scoreboard players operation @s motion_1 -= @s motion_0
execute as @s run scoreboard players operation @s motion_1 *= @s motion_t
execute as @s store result entity @s Motion[0] double 0.00001 run scoreboard players get @s motion_1

execute as @s store result score @s motion_1 run data get entity @e[limit=1,sort=nearest,tag=motion_m] Pos[1] 100000
execute as @s store result score @s motion_0 run data get entity @s Pos[1] 100000
execute as @s run scoreboard players operation @s motion_1 -= @s motion_0
execute as @s run scoreboard players operation @s motion_1 *= @s motion_t
execute as @s store result entity @s Motion[1] double 0.00001 run scoreboard players get @s motion_1

execute as @s store result score @s motion_1 run data get entity @e[limit=1,sort=nearest,tag=motion_m] Pos[2] 100000
execute as @s store result score @s motion_0 run data get entity @s Pos[2] 100000
execute as @s run scoreboard players operation @s motion_1 -= @s motion_0
execute as @s run scoreboard players operation @s motion_1 *= @s motion_t
execute as @s store result entity @s Motion[2] double 0.00001 run scoreboard players get @s motion_1

# 删除标记
kill @e[tag=motion_m]
