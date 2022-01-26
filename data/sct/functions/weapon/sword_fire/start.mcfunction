# 清除点击数
scoreboard players set @s carrotonastick 0
# 将武器状态改为触发技能中
scoreboard players set @s sword_fire_stat 1
# 模型替换为“skill”，并赋予效果
item replace entity @s weapon.mainhand with minecraft:carrot_on_a_stick{sword_fire:1,CustomModelData:130002,Enchantments:[{id:"fire_aspect",lvl:1s},{id:"sharpness",lvl:1s}],HideFlags:2,display:{Name:'{"text":"sword_fire"}'},AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:5 ,Operation:0,UUID:[I;1498693494,1027158888,1898994005,860320108],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.4 ,Operation:0,UUID:[I;1498693494,1027158888,1898994005,860320109],Slot:"mainhand"}]}
# 赋予武器效果
execute as @s run enchant @s fire_aspect 2
execute as @s run enchant @s sweeping 1
