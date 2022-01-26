execute as @s run scoreboard players set @s tp_select_cd 10

execute if score @s tp_selected matches 1 run scoreboard players set @s temp1 6
execute if score @s tp_selected matches 2 run scoreboard players set @s temp1 1
execute if score @s tp_selected matches 3 run scoreboard players set @s temp1 2
execute if score @s tp_selected matches 4 run scoreboard players set @s temp1 1
execute if score @s tp_selected matches 5 run scoreboard players set @s temp1 2
execute if score @s tp_selected matches 6 run scoreboard players set @s temp1 5

execute as @s run scoreboard players operation @s tp_selected = @s temp1
