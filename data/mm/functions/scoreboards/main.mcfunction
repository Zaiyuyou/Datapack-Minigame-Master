#数据运算
function mm:scoreboards/calculate_data


#清空计分板内容
scoreboard players reset * mm_scoreboard


#等待大厅
execute if score game_start mm_main matches 0..1 run function mm:scoreboards/waiting
#经典模式
execute if score game_start mm_main matches 2 if score game_mode mm_main matches 0 run function mm:scoreboards/game_module/classic
#双倍模式
execute if score game_start mm_main matches 2 if score game_mode mm_main matches 1 run function mm:scoreboards/game_module/double_up
#感染v1模式
execute if score game_start mm_main matches 2 if score game_mode mm_main matches 2 run function mm:scoreboards/game_module/infection_v1
#警匪对决
execute if score game_start mm_main matches 2 if score game_mode mm_main matches 3 run function mm:scoreboards/game_module/showdown
#人机大战模式
execute if score game_start mm_main matches 2 if score game_mode mm_main matches 4 run function mm:scoreboards/game_module/human_robot_war
#道具模式
execute if score game_start mm_main matches 2 if score game_mode mm_main matches 5 run function mm:scoreboards/game_module/classic
#生存模式
execute if score game_start mm_main matches 2 if score game_mode mm_main matches 6 run function mm:scoreboards/game_module/survival
#感染v2模式
execute if score game_start mm_main matches 2 if score game_mode mm_main matches 7 run function mm:scoreboards/game_module/infection_v2
#道具双倍模式
execute if score game_start mm_main matches 2 if score game_mode mm_main matches 8 run function mm:scoreboards/game_module/double_up