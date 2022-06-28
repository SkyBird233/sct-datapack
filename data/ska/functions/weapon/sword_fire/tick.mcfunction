# 计时
scoreboard players add @s sword_fire_cd 1
# 技能持续结束，替换模型为“cd”，顺便清除附魔、修改状态  
#[ loot table? ]
execute if score @s sword_fire_cd matches 20 run function ska:weapon/sword_fire/cd
execute if score @s sword_fire_cd matches 20 run scoreboard players set @s sword_fire_stat 2
# cd 结束，替换模型为“ready”，修改状态，清除 cd
execute if score @s sword_fire_cd matches 120 run function ska:weapon/sword_fire/ready
execute if score @s sword_fire_cd matches 120 run scoreboard players set @s sword_fire_stat 0
execute if score @s sword_fire_cd matches 120 run scoreboard players set @s sword_fire_cd 0

