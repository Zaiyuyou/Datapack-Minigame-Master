#计分板刷新
function mm:scoreboards/main
scoreboard players set game_start mm_main 3


#标题显示
execute if score innocent_left mm_data matches 0 run title @a[tag=mm_murderer] subtitle {"text":"所有幸存者都死了!","color":"yellow"}
execute if score innocent_left mm_data matches 0 run title @a[tag=mm_murderer] title {"text":"你赢了!","color":"green"}
execute if score innocent_left mm_data matches 0 run title @a[tag=mm_innocent] subtitle {"text":"所有幸存者都死了!","color":"gold"}
execute if score innocent_left mm_data matches 0 run title @a[tag=mm_innocent] title {"text":"你输了!","color":"red"}

execute if score murderer_left mm_data matches 0 run title @a[tag=mm_murderer] subtitle {"text":"你死了!","color":"gold"}
execute if score murderer_left mm_data matches 0 run title @a[tag=mm_murderer] title {"text":"你输了!","color":"red"}
execute if score murderer_left mm_data matches 0 run title @a[tag=mm_innocent] subtitle {"text":"杀手已被阻止!","color":"yellow"}
execute if score murderer_left mm_data matches 0 run title @a[tag=mm_innocent] title {"text":"你赢了!","color":"green"}

execute if score game_second mm_main matches 0 run title @a[tag=mm_murderer] subtitle {"text":"时间耗尽!","color":"gold"}
execute if score game_second mm_main matches 0 run title @a[tag=mm_murderer] title {"text":"你输了!","color":"red"}
execute if score game_second mm_main matches 0 run title @a[tag=mm_innocent] subtitle {"text":"杀手已经没有时间了!","color":"yellow"}
execute if score game_second mm_main matches 0 run title @a[tag=mm_innocent] title {"text":"你赢了!","color":"green"}


#本局游戏总结
tellraw @a {"text":"=============================================","color":"green"}

tellraw @a [{"text":"§e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e "},{"text":"密室杀手","bold":"true"}]

execute if score innocent_left mm_data matches 0 run tellraw @a [{"text":"§e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e "},{"text":"胜利者:"},{"text":"杀手","color":"red"}]
execute if score murderer_left mm_data matches 0 run tellraw @a [{"text":"§e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e "},{"text":"胜利者:"},{"text":"剩余平民和侦探","color":"green"}]
execute if score game_second mm_main matches 0 run tellraw @a [{"text":"§e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e "},{"text":"胜利者:"},{"text":"剩余平民和侦探","color":"green"}]

execute if score innocent_left mm_data matches 0 run scoreboard players add @a[tag=mm_murderer] mm_stats_1 1
execute if score innocent_left mm_data matches 0 run scoreboard players add @a[tag=mm_murderer] mm_stats_7 1
execute if score murderer_left mm_data matches 0 run scoreboard players add @a[tag=mm_innocent] mm_stats_1 1
execute if score murderer_left mm_data matches 0 run scoreboard players add @a[tag=mm_detective,tag=!mm_dead] mm_stats_6 1
execute if score game_second mm_main matches 0 run scoreboard players add @a[tag=mm_innocent] mm_stats_1 1
execute if score game_second mm_main matches 0 run scoreboard players add @a[tag=mm_detective,tag=!mm_dead] mm_stats_6 1

tellraw @a ""

execute as @a[tag=!mm_dead,tag=mm_detective,tag=mm_origin] run tellraw @a [{"text":"§e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e "},{"text":"侦探: ","color":"gray"},{"selector":"@s","color":"gray"}]
execute as @a[tag=mm_dead,tag=mm_detective,tag=mm_origin] run tellraw @a [{"text":"§e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e "},{"text":"侦探: ","color":"gray"},{"selector":"@s","color":"gray","strikethrough":"true"}]

execute as @a[tag=!mm_dead,tag=mm_murderer,tag=mm_origin] run tellraw @a [{"text":"§e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e "},{"text":"杀手: ","color":"gray"},{"selector":"@s","color":"gray"},{"text":" ("},{"score":{"objective":"mm_kill_count","name":"@s"},"color":"gold"},{"text":" 杀)"}]
execute as @a[tag=mm_dead,tag=mm_murderer,tag=mm_origin] run tellraw @a [{"text":"§e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e "},{"text":"杀手: ","color":"gray"},{"selector":"@s","color":"gray","strikethrough":"true"},{"text":" ("},{"score":{"objective":"mm_kill_count","name":"@s"},"color":"gold"},{"text":" 杀)"}]

execute as @a[tag=!mm_dead,tag=mm_hero] unless entity @s[tag=mm_detective,tag=mm_origin] run tellraw @a [{"text":"§e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e "},{"text":"英雄: ","color":"gray"},{"selector":"@s","color":"gray"}]
execute as @a[tag=mm_dead,tag=mm_hero] unless entity @s[tag=mm_detective,tag=mm_origin] run tellraw @a [{"text":"§e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e "},{"text":"英雄: ","color":"gray"},{"selector":"@s","color":"gray","strikethrough":"true"}]

tellraw @a ""

tellraw @a {"text":"=============================================","color":"green"}


#将返厅倒计时设定为10秒(200游戏刻)
scoreboard players set return_lobby mm_main 200


#清空背包
clear @a