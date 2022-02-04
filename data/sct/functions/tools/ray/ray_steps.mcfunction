# 前移（待测试）
execute as @e[tag=rayMarker] run tp ^ ^0.1 ^
#execute as @s at @e[tag=rayMarker] run tp ^ ^0.1 ^

# 找到了
execute as @e[tag=rayMarker] if entity @e[tag=canBeSelected,distance=..0.1,limit=1,sort=nearest] run tag @e[tag=canBeSelected,distance=..0.1,limit=1,sort=nearest] add raySelected
execute as @e[tag=rayMarker] if entity @e[tag=canBeSelected,distance=..0.1,limit=1,sort=nearest] run tag @s add rayMarkerStop

# 撞墙了（待测试，可能使用 predicate)
execute as @e[tag=rayMarker] unless block ~ ~ ~ air run tag @s add rayMarkerStop

# 步数超了
execute as @e[tag=rayMarker,scores={raySteps=40..}] run tag @s add rayMarkerStop

# 没问题则递归
execute as @e[tag=rayMarker,tag=!rayMarkerStop] run function sct:tools/ray/ray_steps
