# 清除未消失的箭（不必）
#kill @e[tag=skill_arrow1_a]

# 生成标记点（考虑 area_effect_cloud 改 marker）
execute as @s at @s anchored eyes run summon area_effect_cloud ^ ^ ^4 {Duration:40,Tags:["skill_arrow1_p0","motion_d"]}
execute as @s at @s anchored eyes run summon area_effect_cloud ^2 ^ ^ {Duration:1,Tags:["skill_arrow1_p1"]}
execute as @s at @s anchored eyes run summon area_effect_cloud ^1 ^ ^ {Duration:1,Tags:["skill_arrow1_p2"]}
execute as @s at @s anchored eyes run summon area_effect_cloud ^ ^ ^ {Duration:1,Tags:["skill_arrow1_p3"]}
execute as @s at @s anchored eyes run summon area_effect_cloud ^-1 ^ ^ {Duration:1,Tags:["skill_arrow1_p4"]}
execute as @s at @s anchored eyes run summon area_effect_cloud ^-2 ^ ^ {Duration:1,Tags:["skill_arrow1_p5"]}

# 生成箭
execute as @e[tag=skill_arrow1_p1] at @s if block ~ ~1.3 ~ air run summon arrow ~ ~1.3 ~ {Tags:["skill_arrow1_a1","skill_arrow1_a"],damage:8d,PierceLevel:1b,ShotFromCrossbow:1b}
execute as @e[tag=skill_arrow1_p2] at @s if block ~ ~1.3 ~ air run summon arrow ~ ~1.3 ~ {Tags:["skill_arrow1_a2","skill_arrow1_a"],damage:8d,PierceLevel:1b,ShotFromCrossbow:1b}
execute as @e[tag=skill_arrow1_p3] at @s if block ~ ~1.3 ~ air run summon arrow ~ ~1.3 ~ {Tags:["skill_arrow1_a3","skill_arrow1_a"],damage:8d,PierceLevel:1b,ShotFromCrossbow:1b}
execute as @e[tag=skill_arrow1_p4] at @s if block ~ ~1.3 ~ air run summon arrow ~ ~1.3 ~ {Tags:["skill_arrow1_a4","skill_arrow1_a"],damage:8d,PierceLevel:1b,ShotFromCrossbow:1b}
execute as @e[tag=skill_arrow1_p5] at @s if block ~ ~1.3 ~ air run summon arrow ~ ~1.3 ~ {Tags:["skill_arrow1_a5","skill_arrow1_a"],damage:8d,PierceLevel:1b,ShotFromCrossbow:1b}

# 设置箭 motion
scoreboard players set @e[tag=skill_arrow1_a] motion_t 1
execute as @e[tag=skill_arrow1_a,tag=skill_arrow1_a1] at @s run function ska:tools/motion/main
execute as @e[tag=skill_arrow1_a,tag=skill_arrow1_a2] at @s run function ska:tools/motion/main
execute as @e[tag=skill_arrow1_a,tag=skill_arrow1_a3] at @s run function ska:tools/motion/main
execute as @e[tag=skill_arrow1_a,tag=skill_arrow1_a4] at @s run function ska:tools/motion/main
execute as @e[tag=skill_arrow1_a,tag=skill_arrow1_a5] at @s run function ska:tools/motion/main

# 移除箭的 Tags
execute as @e[tag=skill_arrow1_a] run tag @s remove skill_arrow1_a
