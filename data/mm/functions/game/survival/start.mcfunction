#分配身份
tag @a add mm_survivor

#启用模块
function mm:game/game_module/zyy_module_start



#给予铁胸甲
execute as @a run loot replace entity @s armor.chest loot mm:survivor_iron_chestplate


#加入队伍
team join mm_survivor @a[tag=mm_survivor]


#显示标题
title @a[tag=mm_survivor] subtitle {"text":"躲避或击杀恶灵,尽可能地存活下来!","color":"yellow"}
title @a[tag=mm_survivor] title {"text":"身份:幸存者","color":"green"}


#生存模式说明
tellraw @a {"text":"=============================================","color":"green"}

tellraw @a [{"text":"§e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e "},{"text":"生存模式","bold":"true"}]
tellraw @a [{"text":"§e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e "},{"text":"躲避或击杀恶灵","color":"yellow"}]
tellraw @a [{"text":"§e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e "},{"text":"生存到最后的玩家获胜","color":"yellow"}]

tellraw @a {"text":"=============================================","color":"green"}


#数据运算
function mm:scoreboards/calculate_data