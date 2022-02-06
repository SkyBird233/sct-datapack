#execute as @a run function sct:tools/ray/ray_main
# rayMarker 全局只存在一个

# Tags
## rayMarker
## rayMarkerStop
## canBeSelected 一般为盔甲架
## raySelected

# init
execute unless entity @e[tag=rayMarker] run summon marker ^ ^ ^ {Tags:["rayMarker"]}
execute as @e[tag=rayMarker,tag=rayMarkerStop] run tag @s remove rayMarkerStop
execute as @s run tp @e[tag=rayMarker] ~ ~1.62 ~
execute as @s store result entity @e[tag=rayMarker,limit=1] Rotation[0] float 0.00001 run data get entity @s Rotation[0] 100000
execute as @s store result entity @e[tag=rayMarker,limit=1] Rotation[1] float 0.00001 run data get entity @s Rotation[1] 100000
execute as @e[tag=rayMarker] run scoreboard players set @s raySteps 0

# 递归
execute as @s run function sct:tools/ray/ray_steps
