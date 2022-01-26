# 获取角度差
scoreboard players operation @s temp1 = @s wasd_ro1
scoreboard players operation @s temp2 = @s wasd_ro2
scoreboard players operation @s temp2 -= @s temp1
scoreboard players set @s temp3 0
execute if score @s temp2 < @s temp3 run scoreboard players add @s temp2 3600

# 判断（如果不够灵敏则调大误差允许范围）
## 前后左右
scoreboard players set @s temp3 20
scoreboard players set @s temp4 -20
execute if score @s temp2 < @s temp3 if score @s temp2 > @s temp4 run scoreboard players set @s wasd_ro 1
scoreboard players set @s temp3 920
scoreboard players set @s temp4 880
execute if score @s temp2 < @s temp3 if score @s temp2 > @s temp4 run scoreboard players set @s wasd_ro 2
scoreboard players set @s temp3 1820
scoreboard players set @s temp4 1780
execute if score @s temp2 < @s temp3 if score @s temp2 > @s temp4 run scoreboard players set @s wasd_ro 3
scoreboard players set @s temp3 2720
scoreboard players set @s temp4 2680
execute if score @s temp2 < @s temp3 if score @s temp2 > @s temp4 run scoreboard players set @s wasd_ro 4
## 不动
execute as @s store result score @s temp1 run data get entity @s Pos[0] 1000
execute as @s store result score @s temp2 run data get entity @s Pos[2] 1000
execute if score @s temp1 = @s wasd_x if score @s temp2 = @s wasd_z run scoreboard players set @s wasd_ro 0
## 跳
execute as @s store result score @s temp1 run data get entity @s Pos[1] 1000
execute if score @s temp1 > @s wasd_y run scoreboard players set @s wasd_ro 5
#tellraw @s [{"score":{"name":"@s","objective": "temp1"}},{"text":"   "},{"score":{"name":"@s","objective": "wasd_y"}}]
#execute as @s[nbt={OnGround:0b}] run scoreboard players set @s wasd_ro 5   （原地 tp 时 OnGround 会变，故舍弃）
