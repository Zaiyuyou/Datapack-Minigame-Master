
#分配队伍
execute as @a if score @s mm_players_id <= online_player_half mm_data run tag @s add mm_outlaw
tag @a[tag=!mm_outlaw] add mm_sheriff

#启用模块
function mm:game/game_module/zyy_module_start

team join mm_outlaw @a[tag=mm_outlaw]
team join mm_sheriff @a[tag=mm_sheriff]

execute as @a[tag=mm_outlaw,limit=1,sort=random] run tp @a[tag=mm_outlaw] @s
execute as @a[tag=mm_sheriff,limit=1,sort=random] run tp @a[tag=mm_sheriff] @s


#给予胸甲
execute as @a[tag=mm_outlaw] run loot replace entity @s armor.chest loot mm:outlaw_chestplate
execute as @a[tag=mm_sheriff] run loot replace entity @s armor.chest loot mm:sheriff_chestplate


#显示标题
title @a[tag=mm_outlaw] subtitle {"text":"击杀警长!","color":"yellow"}
title @a[tag=mm_outlaw] title {"text":"队伍:逃犯","color":"red"}

title @a[tag=mm_sheriff] subtitle {"text":"击杀逃犯!","color":"yellow"}
title @a[tag=mm_sheriff] title {"text":"队伍:警长","color":"aqua"}


#警匪对决说明
tellraw @a {"text":"=============================================","color":"green"}

tellraw @a [{"text":"§e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e "},{"text":"警匪对决","bold":"true"}]
tellraw @a [{"text":"§e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e "},{"text":"最先达成","color":"yellow"},{"score":{"objective":"mm_settings","name":"showdown_end"},"color":"red"},{"text":"击杀或游戏结束时","color":"yellow"}]
tellraw @a [{"text":"§e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e "},{"text":"击杀数更多的队伍获胜","color":"yellow"}]

tellraw @a {"text":"=============================================","color":"green"}


#数据运算
function mm:scoreboards/calculate_data