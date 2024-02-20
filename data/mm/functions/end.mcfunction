#计分板刷新
function mm:scoreboards/main
scoreboard players set game_start mm_main 3


#将返厅倒计时设定为10秒(200游戏刻)
tellraw @a {"text":"游戏已被管理员强制结束!","color":"red"}
scoreboard players set return_lobby mm_main 60


#清空背包
clear @a