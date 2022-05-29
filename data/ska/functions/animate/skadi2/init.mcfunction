scoreboard objectives add anim_skadi2 dummy
scoreboard objectives add anim_skadi2_max dummy
scoreboard objectives add anim_skadi2_min dummy
execute as @e[tag=skadi2,type=item_frame] run scoreboard players set @s anim_skadi2 130001
execute as @e[tag=skadi2,type=item_frame] run scoreboard players set @s anim_skadi2_min 130001
execute as @e[tag=skadi2,type=item_frame] run scoreboard players set @s anim_skadi2_max 130080