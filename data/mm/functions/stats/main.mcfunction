#装饰品初始值
execute as @a run scoreboard players enable @s mm_stats


#游戏开始后拦截触发
execute if score game_start mm_main matches 2 as @a[scores={mm_stats=1..}] run tellraw @s {"text":"请等待游戏结束再使用!","color":"red"}
execute if score game_start mm_main matches 2 as @a[scores={mm_stats=1..}] run scoreboard players reset @s mm_stats


#检测触发
##主菜单
execute as @a[scores={mm_stats=1}] run tag @s add mm_triggered_stats_menu

execute as @a[tag=mm_triggered_stats_menu] run tellraw @s {"text":"统计数据查询","color":"white"}
execute as @a[tag=mm_triggered_stats_menu] run tellraw @s {"text":"查询自己的统计数据","color":"gray","clickEvent":{"action":"run_command","value":"/trigger mm_stats set 2"}}
execute as @a[tag=mm_triggered_stats_menu] run tellraw @s {"text":"查询他人的统计数据","color":"gray","clickEvent":{"action":"run_command","value":"/trigger mm_stats set 3"}}

execute as @a[tag=mm_triggered_stats_menu] run scoreboard players reset @s mm_stats
execute as @a[tag=mm_triggered_stats_menu] run tag @s remove mm_triggered_stats_menu

##查询自己的统计数据
execute as @a[scores={mm_stats=2}] run tag @s add mm_triggered_stats_check

execute as @a[tag=mm_triggered_stats_check] run tellraw @s [{"selector":"@s","color":"green"},{"text":"的统计信息:","color":"white"}]
execute as @a[tag=mm_triggered_stats_check] run tellraw @s [{"text":"生涯总胜场:","color":"white"},{"score":{"objective":"mm_stats_1","name":"@s"},"color":"green"}]
execute as @a[tag=mm_triggered_stats_check] run tellraw @s [{"text":"生涯杀手/侦探/平民击杀:","color":"white"},{"score":{"objective":"mm_stats_2","name":"@s"},"color":"green"}]
execute as @a[tag=mm_triggered_stats_check] run tellraw @s [{"text":"生涯杀手击杀:","color":"white"},{"score":{"objective":"mm_stats_3","name":"@s"},"color":"green"}]
execute as @a[tag=mm_triggered_stats_check] run tellraw @s [{"text":"生涯杀手近战击杀:","color":"white"},{"score":{"objective":"mm_stats_4","name":"@s"},"color":"green"}]
execute as @a[tag=mm_triggered_stats_check] run tellraw @s [{"text":"生涯杀手飞刀击杀:","color":"white"},{"score":{"objective":"mm_stats_5","name":"@s"},"color":"green"}]
execute as @a[tag=mm_triggered_stats_check] run tellraw @s [{"text":"生涯侦探胜场:","color":"white"},{"score":{"objective":"mm_stats_6","name":"@s"},"color":"green"}]
execute as @a[tag=mm_triggered_stats_check] run tellraw @s [{"text":"生涯杀手胜场:","color":"white"},{"score":{"objective":"mm_stats_7","name":"@s"},"color":"green"}]
execute as @a[tag=mm_triggered_stats_check] run tellraw @s [{"text":"生涯死亡数:","color":"white"},{"score":{"objective":"mm_stats_8","name":"@s"},"color":"green"}]
execute as @a[tag=mm_triggered_stats_check] run tellraw @s [{"text":"生涯幸存者存活时间:","color":"white"},{"score":{"objective":"mm_stats_9","name":"@s"},"color":"green"},{"text":"s","color":"green"}]
execute as @a[tag=mm_triggered_stats_check] run tellraw @s [{"text":"生涯感染者击杀:","color":"white"},{"score":{"objective":"mm_stats_10","name":"@s"},"color":"green"}]
execute as @a[tag=mm_triggered_stats_check] run tellraw @s [{"text":"生涯幸存者击杀:","color":"white"},{"score":{"objective":"mm_stats_11","name":"@s"},"color":"green"}]
execute as @a[tag=mm_triggered_stats_check] run tellraw @s [{"text":"生涯侦探/平民弓箭击杀:","color":"white"},{"score":{"objective":"mm_stats_12","name":"@s"},"color":"green"}]
execute as @a[tag=mm_triggered_stats_check] run tellraw @s [{"text":"生涯捡起金锭数目:","color":"white"},{"score":{"objective":"mm_stats_13","name":"@s"},"color":"green"}]
execute as @a[tag=mm_triggered_stats_check] run tellraw @s {"text":"<<<返回上一级菜单","color":"gray","clickEvent":{"action":"run_command","value":"/trigger mm_stats set 1"}}

execute as @a[tag=mm_triggered_stats_check] run scoreboard players reset @s mm_stats
execute as @a[tag=mm_triggered_stats_check] run tag @s remove mm_triggered_stats_check

##查询他人的统计数据
execute as @a[scores={mm_stats=3}] run tag @s add mm_triggered_stats_check_other_menu

execute as @a[tag=mm_triggered_stats_check_other_menu] run scoreboard players set @a mm_stats_id 0
execute as @a[tag=mm_triggered_stats_check_other_menu] run scoreboard players set number_players mm_main 0
execute as @a[tag=mm_triggered_stats_check_other_menu] run function mm:stats/number_players
execute as @a[tag=mm_triggered_stats_check_other_menu] run scoreboard players add @a mm_stats_id 100
execute as @a[tag=mm_triggered_stats_check_other_menu] run tellraw @s [{"text":"请输入","color":"while"},{"text":"/trigger mm_stats set [ID]","color":"green"},{"text":"来查询对应玩家的统计数据!","color":"white"}]
execute as @a[tag=mm_triggered_stats_check_other_menu] run tellraw @s {"text":"[ID]已在下方列出:","color":"while"}
execute as @a run tellraw @a[tag=mm_triggered_stats_check_other_menu] [{"selector":"@s","color":"green"},{"text":":","color":"white"},{"score":{"objective":"mm_stats_id","name":"@s"},"color":"green"}]
execute as @a[tag=mm_triggered_stats_check_other_menu] run tellraw @s {"text":"<<<返回上一级菜单","color":"gray","clickEvent":{"action":"run_command","value":"/trigger mm_stats set 1"}}

execute as @a[tag=mm_triggered_stats_check_other_menu] run scoreboard players reset @s mm_stats
execute as @a[tag=mm_triggered_stats_check_other_menu] run tag @s remove mm_triggered_stats_check_other_menu

execute as @a[scores={mm_stats=101..}] run tag @s add mm_triggered_stats_check_other
execute as @a if score @s mm_stats_id = @a[tag=mm_triggered_stats_check_other,limit=1] mm_stats run tag @s add mm_triggered_stats_check_other_target

execute as @a[tag=mm_triggered_stats_check_other_target] run tellraw @a[tag=mm_triggered_stats_check_other] [{"selector":"@s","color":"green"},{"text":"的统计信息:","color":"white"}]
execute as @a[tag=mm_triggered_stats_check_other_target] run tellraw @a[tag=mm_triggered_stats_check_other] [{"text":"生涯总胜场:","color":"white"},{"score":{"objective":"mm_stats_1","name":"@s"},"color":"green"}]
execute as @a[tag=mm_triggered_stats_check_other_target] run tellraw @a[tag=mm_triggered_stats_check_other] [{"text":"生涯杀手/侦探/平民击杀:","color":"white"},{"score":{"objective":"mm_stats_2","name":"@s"},"color":"green"}]
execute as @a[tag=mm_triggered_stats_check_other_target] run tellraw @a[tag=mm_triggered_stats_check_other] [{"text":"生涯杀手击杀:","color":"white"},{"score":{"objective":"mm_stats_3","name":"@s"},"color":"green"}]
execute as @a[tag=mm_triggered_stats_check_other_target] run tellraw @a[tag=mm_triggered_stats_check_other] [{"text":"生涯杀手近战击杀:","color":"white"},{"score":{"objective":"mm_stats_4","name":"@s"},"color":"green"}]
execute as @a[tag=mm_triggered_stats_check_other_target] run tellraw @a[tag=mm_triggered_stats_check_other] [{"text":"生涯杀手飞刀击杀:","color":"white"},{"score":{"objective":"mm_stats_5","name":"@s"},"color":"green"}]
execute as @a[tag=mm_triggered_stats_check_other_target] run tellraw @a[tag=mm_triggered_stats_check_other] [{"text":"生涯侦探胜场:","color":"white"},{"score":{"objective":"mm_stats_6","name":"@s"},"color":"green"}]
execute as @a[tag=mm_triggered_stats_check_other_target] run tellraw @a[tag=mm_triggered_stats_check_other] [{"text":"生涯杀手胜场:","color":"white"},{"score":{"objective":"mm_stats_7","name":"@s"},"color":"green"}]
execute as @a[tag=mm_triggered_stats_check_other_target] run tellraw @a[tag=mm_triggered_stats_check_other] [{"text":"生涯死亡数:","color":"white"},{"score":{"objective":"mm_stats_8","name":"@s"},"color":"green"}]
execute as @a[tag=mm_triggered_stats_check_other_target] run tellraw @a[tag=mm_triggered_stats_check_other] [{"text":"生涯幸存者存活时间:","color":"white"},{"score":{"objective":"mm_stats_9","name":"@s"},"color":"green"},{"text":"s","color":"green"}]
execute as @a[tag=mm_triggered_stats_check_other_target] run tellraw @a[tag=mm_triggered_stats_check_other] [{"text":"生涯感染者击杀:","color":"white"},{"score":{"objective":"mm_stats_10","name":"@s"},"color":"green"}]
execute as @a[tag=mm_triggered_stats_check_other_target] run tellraw @a[tag=mm_triggered_stats_check_other] [{"text":"生涯幸存者击杀:","color":"white"},{"score":{"objective":"mm_stats_11","name":"@s"},"color":"green"}]
execute as @a[tag=mm_triggered_stats_check_other_target] run tellraw @a[tag=mm_triggered_stats_check_other] [{"text":"生涯侦探/平民弓箭击杀:","color":"white"},{"score":{"objective":"mm_stats_12","name":"@s"},"color":"green"}]
execute as @a[tag=mm_triggered_stats_check_other_target] run tellraw @a[tag=mm_triggered_stats_check_other] [{"text":"生涯捡起金锭数目:","color":"white"},{"score":{"objective":"mm_stats_13","name":"@s"},"color":"green"}]
execute as @a[tag=mm_triggered_stats_check_other] run tellraw @s {"text":"<<<返回上一级菜单","color":"gray","clickEvent":{"action":"run_command","value":"/trigger mm_stats set 1"}}

execute as @a[tag=mm_triggered_stats_check_other] run scoreboard players reset @s mm_stats
execute as @a[tag=mm_triggered_stats_check_other] run tag @s remove mm_triggered_stats_check_other
execute as @a[tag=mm_triggered_stats_check_other_target] run tag @s remove mm_triggered_stats_check_other_target