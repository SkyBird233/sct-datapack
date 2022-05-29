execute if score @s anim_skadi2 <= @s anim_skadi2_max if score @s anim_skadi2 >= @s anim_skadi2_min store result entity @s Item.tag.CustomModelData int 1 run scoreboard players get @s anim_skadi2
execute if score @s anim_skadi2 <= @s anim_skadi2_max if score @s anim_skadi2 >= @s anim_skadi2_min run scoreboard players add @s anim_skadi2 1
execute unless score @s anim_skadi2 <= @s anim_skadi2_max run scoreboard players set @s anim_skadi2 130001
