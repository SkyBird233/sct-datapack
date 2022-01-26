# sword_fire
execute as @a[scores={carrotonastick=1..,sword_fire_stat=0},nbt={SelectedItem:{tag:{sword_fire:1}}}] run function sct:weapon/sword_fire/start
execute as @a[scores={sword_fire_stat=1..}] run function sct:weapon/sword_fire/tick

# skill_arrow1
#execute as @a[nbt={SelectedItem:{tag:{skill_arrow1:1}}}] run tellraw @s 
execute as @a[scores={carrotonastick=1..,skill_arrow1_t=..0},nbt={SelectedItem:{tag:{skill_arrow1:1}}}] run function sct:skill/arrow1/start
execute as @a[scores={carrotonastick=1..,skill_arrow1_t=1..,skill_arrow1_t=..400},nbt={SelectedItem:{tag:{skill_arrow1:1}}}] unless entity @e[tag=skill_arrow1_p0] run function sct:skill/arrow1/skill
execute as @a[scores={skill_arrow1_t=1..800}] run scoreboard players add @s skill_arrow1_t 1
execute as @a[scores={skill_arrow1_t=800..}] run function sct:skill/arrow1/stop

# 执行完所有钓竿相关函数后清除 carrotonastick
scoreboard players set @a carrotonastick 0

# exp
execute as @a run function sct:exp/tick
# skadi2
execute as @e[tag=anim,tag=skadi2,type=item_frame] run function sct:animate/skadi2/tick

# wasd
#execute as @a[tag=wasd] run function sct:tools/wasd/tick

# tp_gui
execute as @a[tag=tp_gui] run function sct:tp/gui/tick
