#如果启用了自动杀手数量就启动
execute if score auto_murder_counts mm_settings matches 1 run function mm:game/game_module/auto_murder_counts

#分配身份
execute if score special_role_random mm_settings matches 0 run function mm:game/game_module/classic/distribute_special_role_weight
execute if score special_role_random mm_settings matches 1 run function mm:game/game_module/classic/distribute_special_role_random

#启用模块
function mm:game/game_module/zyy_module_start


tag @a[tag=!mm_murderer] add mm_innocent

tag @a[tag=mm_murderer] add mm_origin
tag @a[tag=mm_detective] add mm_origin

team join mm_murderer @a[tag=mm_murderer]
team join mm_innocent @a[tag=mm_innocent]


#显示标题
title @a[tag=mm_murderer] subtitle {"text":"杀死所有玩家!","color":"yellow"}
title @a[tag=mm_murderer] title {"text":"身份:杀手","color":"red"}
title @a[tag=mm_detective] subtitle {"text":"找到杀手并杀死,为民除害!","color":"yellow"}
title @a[tag=mm_detective] title {"text":"身份:侦探","color":"aqua"}
title @a[tag=mm_innocent,tag=!mm_detective] subtitle {"text":"尽可能地存活下来!","color":"yellow"}
title @a[tag=mm_innocent,tag=!mm_detective] title {"text":"身份:平民","color":"green"}


#道具模式说明
tellraw @a {"text":"=============================================","color":"green"}

tellraw @a [{"text":"§e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e "},{"text":"道具模式","bold":"true"}]
tellraw @a [{"text":"§e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e "},{"text":"巧妙地利用地图中的道具赢得游戏","color":"yellow"}]

tellraw @a {"text":"=============================================","color":"green"}


#成为侦探几率重置
execute as @a[tag=mm_detective] run scoreboard players set @s mm_d_chance 1


#数据运算
function mm:scoreboards/calculate_data