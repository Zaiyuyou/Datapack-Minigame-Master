#分配身份
tag @a add mm_survivor

#启用模块
function mm:game/game_module/zyy_module_start



#给予铁胸甲
execute as @a run loot replace entity @s armor.chest loot mm:survivor_iron_chestplate


#加入队伍
team join mm_survivor @a[tag=mm_survivor]


#数据运算
function mm:scoreboards/calculate_data