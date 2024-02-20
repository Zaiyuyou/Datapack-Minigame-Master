#计分板刷新
function mm:scoreboards/main
scoreboard players set game_start mm_main 3


#幸存者存活时间
execute as @a[tag=mm_survivor] run scoreboard players operation @s mm_survive_time = game_time mm_settings


#本局游戏总结
tellraw @a {"text":"=============================================","color":"green"}

tellraw @a [{"text":"§e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e "},{"text":"密室杀手","bold":"true"}]

execute if score survivor_left mm_data matches 0 run tellraw @a [{"text":"§e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e "},{"text":"胜利者:"},{"text":"感染者","color":"red"}]
execute if score game_second mm_main < get_weapon_0 mm_data if score infected_left mm_data matches 0 run tellraw @a [{"text":"§e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e "},{"text":"胜利者:"},{"text":"幸存者","color":"green"}]
execute if score game_second mm_main matches 0 run tellraw @a [{"text":"§e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e "},{"text":"胜利者:"},{"text":"幸存者","color":"green"}]

execute if score survivor_left mm_data matches 0 run scoreboard players add @a[tag=mm_infected] mm_stats_1 1
execute if score game_second mm_main < get_weapon_0 mm_data if score infected_left mm_data matches 0 run scoreboard players add @a[tag=mm_survivor] mm_stats_1 1
execute if score game_second mm_main matches 0 run scoreboard players add @a[tag=mm_survivor] mm_stats_1 1
execute as @a run scoreboard players operation @s mm_stats_9 += @s mm_survive_time

execute if entity @a[tag=!mm_origin,tag=!mm_ranked] run tellraw @a ""

execute if entity @a[tag=!mm_origin,tag=!mm_ranked] run tellraw @a [{"text":"§e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e "},{"text":"幸存者排行"}]

##第一名
execute as @a[tag=!mm_origin,tag=!mm_ranked] run scoreboard players operation @s mm_top_1 = @s mm_survive_time
execute as @a[tag=!mm_origin,tag=!mm_ranked] run scoreboard players operation @s mm_top_1 > @a[tag=!mm_ranked] mm_top_1
execute as @a[tag=!mm_origin,tag=!mm_ranked] run scoreboard players operation @s mm_top_1 -= @s mm_survive_time
execute as @a[tag=!mm_origin,tag=!mm_ranked,scores={mm_top_1=0}] run tellraw @a [{"text":"§e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e "},{"text":"#1 ","color":"white"},{"selector":"@s","color":"gray"},{"text":" (","color":"white"},{"score":{"objective":"mm_survive_time","name":"@s"},"color":"green"},{"text":"s","color":"green"},{"text":")(","color":"white"},{"score":{"objective":"mm_kill_count_s","name":"@s"},"color":"green"},{"text":" 杀)","color":"white"}]
execute as @a[tag=!mm_origin,tag=!mm_ranked,scores={mm_top_1=0}] run scoreboard players reset @s mm_survive_time
execute as @a[tag=!mm_origin,tag=!mm_ranked,scores={mm_top_1=0}] run tag @s add mm_ranked

##第二名
execute as @a[tag=!mm_origin,tag=!mm_ranked] run scoreboard players operation @s mm_top_1 = @s mm_survive_time
execute as @a[tag=!mm_origin,tag=!mm_ranked] run scoreboard players operation @s mm_top_1 > @a[tag=!mm_ranked] mm_top_1
execute as @a[tag=!mm_origin,tag=!mm_ranked] run scoreboard players operation @s mm_top_1 -= @s mm_survive_time
execute as @a[tag=!mm_origin,tag=!mm_ranked,scores={mm_top_1=0}] run tellraw @a [{"text":"§e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e "},{"text":"#2 ","color":"white"},{"selector":"@s","color":"gray"},{"text":" (","color":"white"},{"score":{"objective":"mm_survive_time","name":"@s"},"color":"green"},{"text":"s","color":"green"},{"text":")(","color":"white"},{"score":{"objective":"mm_kill_count_s","name":"@s"},"color":"green"},{"text":" 杀)","color":"white"}]
execute as @a[tag=!mm_origin,tag=!mm_ranked,scores={mm_top_1=0}] run scoreboard players reset @s mm_survive_time
execute as @a[tag=!mm_origin,tag=!mm_ranked,scores={mm_top_1=0}] run tag @s add mm_ranked

##第三名
execute as @a[tag=!mm_origin,tag=!mm_ranked] run scoreboard players operation @s mm_top_1 = @s mm_survive_time
execute as @a[tag=!mm_origin,tag=!mm_ranked] run scoreboard players operation @s mm_top_1 > @a[tag=!mm_ranked] mm_top_1
execute as @a[tag=!mm_origin,tag=!mm_ranked] run scoreboard players operation @s mm_top_1 -= @s mm_survive_time
execute as @a[tag=!mm_origin,tag=!mm_ranked,scores={mm_top_1=0}] run tellraw @a [{"text":"§e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e "},{"text":"#3 ","color":"white"},{"selector":"@s","color":"gray"},{"text":" (","color":"white"},{"score":{"objective":"mm_survive_time","name":"@s"},"color":"green"},{"text":"s","color":"green"},{"text":")(","color":"white"},{"score":{"objective":"mm_kill_count_s","name":"@s"},"color":"green"},{"text":" 杀)","color":"white"}]
execute as @a[tag=!mm_origin,tag=!mm_ranked,scores={mm_top_1=0}] run scoreboard players reset @s mm_survive_time
execute as @a[tag=!mm_origin,tag=!mm_ranked,scores={mm_top_1=0}] run tag @s add mm_ranked

tag @a remove mm_ranked
execute if entity @a[tag=!mm_ranked,tag=mm_infected] run tellraw @a ""

execute if entity @a[tag=!mm_ranked,tag=mm_infected] run tellraw @a [{"text":"§e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e "},{"text":"感染者排行"}]

##第一名
execute as @a[tag=!mm_ranked,tag=mm_infected] run scoreboard players operation @s mm_top_1 = @s mm_kill_count
execute as @a[tag=!mm_ranked,tag=mm_infected] run scoreboard players operation @s mm_top_1 > @a[tag=mm_infected,tag=!mm_ranked] mm_top_1
execute as @a[tag=!mm_ranked,tag=mm_infected] run scoreboard players operation @s mm_top_1 -= @s mm_kill_count
execute as @a[tag=!mm_ranked,tag=mm_infected,scores={mm_top_1=0}] run tellraw @a [{"text":"§e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e "},{"text":"#1 ","color":"white"},{"selector":"@s","color":"gray"},{"text":"(","color":"white"},{"score":{"objective":"mm_kill_count","name":"@s"},"color":"green"},{"text":" 杀)","color":"white"}]
execute as @a[tag=!mm_ranked,tag=mm_infected,scores={mm_top_1=0}] run scoreboard players reset @s mm_kill_count
execute as @a[tag=!mm_ranked,tag=mm_infected,scores={mm_top_1=0}] run tag @s add mm_ranked

##第二名
execute as @a[tag=!mm_ranked,tag=mm_infected] run scoreboard players operation @s mm_top_1 = @s mm_kill_count
execute as @a[tag=!mm_ranked,tag=mm_infected] run scoreboard players operation @s mm_top_1 > @a[tag=mm_infected,tag=!mm_ranked] mm_top_1
execute as @a[tag=!mm_ranked,tag=mm_infected] run scoreboard players operation @s mm_top_1 -= @s mm_kill_count
execute as @a[tag=!mm_ranked,tag=mm_infected,scores={mm_top_1=0}] run tellraw @a [{"text":"§e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e "},{"text":"#2 ","color":"white"},{"selector":"@s","color":"gray"},{"text":"(","color":"white"},{"score":{"objective":"mm_kill_count","name":"@s"},"color":"green"},{"text":" 杀)","color":"white"}]
execute as @a[tag=!mm_ranked,tag=mm_infected,scores={mm_top_1=0}] run scoreboard players reset @s mm_kill_count
execute as @a[tag=!mm_ranked,tag=mm_infected,scores={mm_top_1=0}] run tag @s add mm_ranked

##第三名
execute as @a[tag=!mm_ranked,tag=mm_infected] run scoreboard players operation @s mm_top_1 = @s mm_kill_count
execute as @a[tag=!mm_ranked,tag=mm_infected] run scoreboard players operation @s mm_top_1 > @a[tag=mm_infected,tag=!mm_ranked] mm_top_1
execute as @a[tag=!mm_ranked,tag=mm_infected] run scoreboard players operation @s mm_top_1 -= @s mm_kill_count
execute as @a[tag=!mm_ranked,tag=mm_infected,scores={mm_top_1=0}] run tellraw @a [{"text":"§e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e "},{"text":"#3 ","color":"white"},{"selector":"@s","color":"gray"},{"text":"(","color":"white"},{"score":{"objective":"mm_kill_count","name":"@s"},"color":"green"},{"text":" 杀)","color":"white"}]
execute as @a[tag=!mm_ranked,tag=mm_infected,scores={mm_top_1=0}] run scoreboard players reset @s mm_kill_count
execute as @a[tag=!mm_ranked,tag=mm_infected,scores={mm_top_1=0}] run tag @s add mm_ranked

tag @a remove mm_ranked
tellraw @a ""

tellraw @a {"text":"=============================================","color":"green"}


#将返厅倒计时设定为10秒(200游戏刻)
scoreboard players set return_lobby mm_main 200


#清空背包
clear @a