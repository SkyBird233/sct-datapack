#title @p actionbar [{"text":"\ue101","font":"ska:default"},{"text":"-112345678","font":"space:default"},{"text":"\ue102","font":"ska:default"},{"text":"-11244","font":"space:default"},{"text":"\ue103","font":"ska:default"},{"text":"-112345678","font":"space:default"},{"text":"\ue104","font":"ska:default"},{"text":"-11236788","font":"space:default"},{"text":"\ue111","font":"ska:default"},{"text":"466789","font":"space:default"}]

#_title 部分：打印 a；由于每个字符间空一位故左移一位；打印 b；字符间宽度1加上两图片共320像素，左移 321；打印 c；左移一位；打印 d；根据需要左移 197 (160+36+1)；打印需要的字符（高亮）；右移 190（即上次移动距离 -7）使整体处于屏幕中央
execute as @s if score @s tp_selected matches 1 run title @s actionbar [{"text":"\ue101","font":"ska:default"},{"translate":"space.-1","font":"space:default"},{"text":"\ue102","font":"ska:default"},{"translate":"space.-321","font":"space:default"},{"text":"\ue103","font":"ska:default"},{"translate":"space.-1","font":"space:default"},{"text":"\ue104","font":"ska:default"},{"translate":"space.-197","font":"space:default"},{"text":"\ue111","font":"ska:default"},{"translate":"space.189","font":"space:default"}]

execute as @s if score @s tp_selected matches 2 run title @s actionbar [{"text":"\ue101","font":"ska:default"},{"translate":"space.-1","font":"space:default"},{"text":"\ue102","font":"ska:default"},{"translate":"space.-321","font":"space:default"},{"text":"\ue103","font":"ska:default"},{"translate":"space.-1","font":"space:default"},{"text":"\ue104","font":"ska:default"},{"translate":"space.-173","font":"space:default"},{"text":"\ue112","font":"ska:default"},{"translate":"space.165","font":"space:default"}]

execute as @s if score @s tp_selected matches 3 run title @s actionbar [{"text":"\ue101","font":"ska:default"},{"translate":"space.-1","font":"space:default"},{"text":"\ue102","font":"ska:default"},{"translate":"space.-321","font":"space:default"},{"text":"\ue103","font":"ska:default"},{"translate":"space.-1","font":"space:default"},{"text":"\ue104","font":"ska:default"},{"translate":"space.-118","font":"space:default"},{"text":"\ue113","font":"ska:default"},{"translate":"space.110","font":"space:default"}]

execute as @s if score @s tp_selected matches 4 run title @s actionbar [{"text":"\ue101","font":"ska:default"},{"translate":"space.-1","font":"space:default"},{"text":"\ue102","font":"ska:default"},{"translate":"space.-321","font":"space:default"},{"text":"\ue103","font":"ska:default"},{"translate":"space.-1","font":"space:default"},{"text":"\ue104","font":"ska:default"},{"translate":"space.-210","font":"space:default"},{"text":"\ue114","font":"ska:default"},{"translate":"space.202","font":"space:default"}]

execute as @s if score @s tp_selected matches 5 run title @s actionbar [{"text":"\ue101","font":"ska:default"},{"translate":"space.-1","font":"space:default"},{"text":"\ue102","font":"ska:default"},{"translate":"space.-321","font":"space:default"},{"text":"\ue103","font":"ska:default"},{"translate":"space.-1","font":"space:default"},{"text":"\ue104","font":"ska:default"},{"translate":"space.-155","font":"space:default"},{"text":"\ue115","font":"ska:default"},{"translate":"space.147","font":"space:default"}]

execute as @s if score @s tp_selected matches 6 run title @s actionbar [{"text":"\ue101","font":"ska:default"},{"translate":"space.-1","font":"space:default"},{"text":"\ue102","font":"ska:default"},{"translate":"space.-321","font":"space:default"},{"text":"\ue103","font":"ska:default"},{"translate":"space.-1","font":"space:default"},{"text":"\ue104","font":"ska:default"},{"translate":"space.-182","font":"space:default"},{"text":"\ue116","font":"ska:default"},{"translate":"space.174","font":"space:default"}]
