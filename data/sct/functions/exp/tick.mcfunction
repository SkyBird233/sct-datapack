# 清除所有经验球
kill @e[type=experience_orb]

# 存储当前等级 exp
execute store result score @s exp_points run experience query @s points

# 控制 level 范围
execute if score @s exp_level < @s exp_level_t run experience add @s 1 levels
execute if score @s exp_level < @s exp_level_t run experience set @s 1 points
execute if score @s exp_level > @s exp_level_t run function sct:exp/set_max_points
execute if score @s exp_level > @s exp_level_t run experience add @s -1 levels

# 受伤扣 exp
execute if score @s health_temp > @s health run function sct:exp/health
execute if score @s health_temp < @s health run scoreboard players operation @s health_temp = @s health
execute if score @s exp_points = @s zero run scoreboard players set @s health_delta 0
execute if score @s exp_points > @s zero if score @s health_delta > @s zero run scoreboard players remove @s health_delta 1
execute if score @s exp_points > @s zero if score @s health_delta > @s zero run experience add @s -1

# exp 清空惩罚
execute if score @s exp_points = @s zero run function sct:exp/punishment

# 自动恢复 exp
execute as @s if score @s exp_re >= @s exp_re_ticks if score @s exp_points < @s exp_max_points run experience add @s 1 points
execute as @s if score @s exp_re >= @s exp_re_ticks run scoreboard players set @s exp_re 0
execute as @s if score @s exp_points < @s exp_max_points run scoreboard players add @s exp_re 1


# 改变 exp_max_points
execute if score @s exp_level matches 0 run scoreboard players set @s exp_max_points 6
execute if score @s exp_level matches 1 run scoreboard players set @s exp_max_points 8
execute if score @s exp_level matches 2 run scoreboard players set @s exp_max_points 10
execute if score @s exp_level matches 3 run scoreboard players set @s exp_max_points 12
execute if score @s exp_level matches 4 run scoreboard players set @s exp_max_points 14
execute if score @s exp_level matches 5 run scoreboard players set @s exp_max_points 16
execute if score @s exp_level matches 6 run scoreboard players set @s exp_max_points 18
execute if score @s exp_level matches 7 run scoreboard players set @s exp_max_points 20
execute if score @s exp_level matches 8 run scoreboard players set @s exp_max_points 22
execute if score @s exp_level matches 9 run scoreboard players set @s exp_max_points 24
execute if score @s exp_level matches 10 run scoreboard players set @s exp_max_points 26
execute if score @s exp_level matches 11 run scoreboard players set @s exp_max_points 28
execute if score @s exp_level matches 12 run scoreboard players set @s exp_max_points 30
execute if score @s exp_level matches 13 run scoreboard players set @s exp_max_points 32
execute if score @s exp_level matches 14 run scoreboard players set @s exp_max_points 34
execute if score @s exp_level matches 15 run scoreboard players set @s exp_max_points 36
execute if score @s exp_level matches 16 run scoreboard players set @s exp_max_points 41
execute if score @s exp_level matches 17 run scoreboard players set @s exp_max_points 46
execute if score @s exp_level matches 18 run scoreboard players set @s exp_max_points 51
execute if score @s exp_level matches 19 run scoreboard players set @s exp_max_points 56
execute if score @s exp_level matches 20 run scoreboard players set @s exp_max_points 61
execute if score @s exp_level matches 21 run scoreboard players set @s exp_max_points 67
execute if score @s exp_level matches 22 run scoreboard players set @s exp_max_points 71
execute if score @s exp_level matches 23 run scoreboard players set @s exp_max_points 76
execute if score @s exp_level matches 24 run scoreboard players set @s exp_max_points 81
execute if score @s exp_level matches 25 run scoreboard players set @s exp_max_points 86
execute if score @s exp_level matches 26 run scoreboard players set @s exp_max_points 91
execute if score @s exp_level matches 27 run scoreboard players set @s exp_max_points 96
execute if score @s exp_level matches 28 run scoreboard players set @s exp_max_points 101
execute if score @s exp_level matches 29 run scoreboard players set @s exp_max_points 106
execute if score @s exp_level matches 30 run scoreboard players set @s exp_max_points 111
execute if score @s exp_level matches 31 run scoreboard players set @s exp_max_points 120
execute if score @s exp_level matches 32 run scoreboard players set @s exp_max_points 129
execute if score @s exp_level matches 33 run scoreboard players set @s exp_max_points 138
execute if score @s exp_level matches 34 run scoreboard players set @s exp_max_points 147
execute if score @s exp_level matches 35 run scoreboard players set @s exp_max_points 156
execute if score @s exp_level matches 36 run scoreboard players set @s exp_max_points 165
execute if score @s exp_level matches 37 run scoreboard players set @s exp_max_points 174
execute if score @s exp_level matches 38 run scoreboard players set @s exp_max_points 183
execute if score @s exp_level matches 39 run scoreboard players set @s exp_max_points 192
execute if score @s exp_level matches 40 run scoreboard players set @s exp_max_points 201
