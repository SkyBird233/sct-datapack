# 由于记分板操作限制只好再写一个 function
scoreboard players operation @s health_temp -= @s health
scoreboard players operation @s health_delta = @s health_temp
scoreboard players operation @s health_temp = @s health
scoreboard players operation @s health_delta *= @s health_rate
scoreboard players operation @s health_delta += @s health_delta_min