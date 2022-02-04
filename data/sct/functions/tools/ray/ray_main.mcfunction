#execute as @a run function sct:tools/ray/ray_main
# rayMarker 全局只存在一个

# Tags
## rayMarker
## rayMarkerStop
## canBeSelected 一般为盔甲架
## raySelected

# Scoreboard
## raySteps

# init
execute unless entity @e[tag=rayMarker] run summon marker ^ ^ ^ {Tags:["rayMarker"]}
execute as @e[tag=rayMarker,tag=rayMarkerStop] run tag @s remove rayMarkerStop
execute as @s at @s anchored eyes run tp @e[tag=rayMarker] ^ ^ ^
#如果不行还要读取玩家 rotation 并写入 marker
execute as @e[tag=rayMarker] run scoreboard players set @s raySteps 0

# 递归
execute as @s run function sct:tools/ray/ray_steps
