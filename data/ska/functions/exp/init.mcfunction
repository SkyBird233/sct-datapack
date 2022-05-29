# 当前等级内经验数，每 tick 手动更新
scoreboard objectives add exp_points dummy

# 实际等级
scoreboard objectives add exp_level level

# 设定等级
scoreboard objectives add exp_level_t dummy
scoreboard players set @a exp_level_t 0

# exp_re 每 tick 加 1 ，达到 exp_re_ticks 时回 exp
scoreboard objectives add exp_re dummy

# 指定多少 tick 自动恢复 1 point
scoreboard objectives add exp_re_ticks dummy
scoreboard players set @a exp_re_ticks 60

# 当前等级最大经验数
scoreboard objectives add exp_max_points dummy
scoreboard players set @a exp_max_points 6

# 生命值，每 tick 自动更新
scoreboard objectives add health health

# 用于检测生命值变化
scoreboard objectives add health_temp dummy
scoreboard players set @a health_temp 20
scoreboard objectives add health_delta dummy

# 失去生命值时扣除 exp 的倍率
scoreboard objectives add health_rate dummy
scoreboard players set @a health_rate 2

# 单次受伤扣除的最少 exp
scoreboard objectives add health_delta_min dummy
scoreboard players set @s health_delta_min 2

# 数字 0
scoreboard objectives add zero dummy
scoreboard players set @a zero 0

# 初始化 exp
experience set @a 1 points
experience set @a 0 levels

# 测试用 sidebar
scoreboard objectives setdisplay sidebar exp_points
