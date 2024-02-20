#底部
execute if score timer mm_main matches 0 if score game_start mm_main matches 0 run function mm:waiting/actionbar_display


#触发前重置计时
execute if score game_start mm_main matches 0 unless score game_start_time_tick mm_main matches 20 run scoreboard players set game_start_time_tick mm_main 20
execute if score game_start mm_main matches 0 unless score game_start_time_second mm_main = game_start_wait_time mm_settings run scoreboard players operation game_start_time_second mm_main = game_start_wait_time mm_settings


#触发开始条件
##经典模式-2~64人
execute if score game_pause mm_main matches 0 if score game_start mm_main matches 0 if entity @e[tag=mm_lobby_spawn,tag=mm_actived] if entity @e[tag=mm_spawn,tag=mm_actived] if entity @e[tag=mm_dropped_bow_spawn,tag=mm_actived] if score game_mode mm_main matches 0 if score online_player mm_data matches 2..64 run scoreboard players set game_start mm_main 1
##双倍模式-4~72人
execute if score game_pause mm_main matches 0 if score game_start mm_main matches 0 if entity @e[tag=mm_lobby_spawn,tag=mm_actived] if entity @e[tag=mm_spawn,tag=mm_actived] if entity @e[tag=mm_dropped_bow_spawn,tag=mm_actived] if score game_mode mm_main matches 1 if score online_player mm_data matches 4..72 run scoreboard players set game_start mm_main 1
##感染v1模式-2~64人
execute if score game_pause mm_main matches 0 if score game_start mm_main matches 0 if entity @e[tag=mm_lobby_spawn,tag=mm_actived] if entity @e[tag=mm_spawn,tag=mm_actived] if entity @e[tag=mm_dropped_bow_spawn,tag=mm_actived] if score game_mode mm_main matches 2 if score online_player mm_data matches 2..64 run scoreboard players set game_start mm_main 1
##警匪对决-2~64人
execute if score game_pause mm_main matches 0 if score game_start mm_main matches 0 if entity @e[tag=mm_lobby_spawn,tag=mm_actived] if entity @e[tag=mm_spawn,tag=mm_actived] if entity @e[tag=mm_dropped_bow_spawn,tag=mm_actived] if score game_mode mm_main matches 3 if score online_player mm_data matches 2..64 run scoreboard players set game_start mm_main 1
##人机大战模式-2~64人
execute if score game_pause mm_main matches 0 if score game_start mm_main matches 0 if entity @e[tag=mm_lobby_spawn,tag=mm_actived] if entity @e[tag=mm_spawn,tag=mm_actived] if entity @e[tag=mm_dropped_bow_spawn,tag=mm_actived] if score game_mode mm_main matches 4 if score online_player mm_data matches 2..64 run scoreboard players set game_start mm_main 1
##道具模式-2~64人
execute if score game_pause mm_main matches 0 if score game_start mm_main matches 0 if entity @e[tag=mm_lobby_spawn,tag=mm_actived] if entity @e[tag=mm_spawn,tag=mm_actived] if entity @e[tag=mm_dropped_bow_spawn,tag=mm_actived] if score game_mode mm_main matches 5 if score online_player mm_data matches 2..64 run scoreboard players set game_start mm_main 1
##生存模式-1~64人
execute if score game_pause mm_main matches 0 if score game_start mm_main matches 0 if entity @e[tag=mm_lobby_spawn,tag=mm_actived] if entity @e[tag=mm_spawn,tag=mm_actived] if entity @e[tag=mm_dropped_bow_spawn,tag=mm_actived] if score game_mode mm_main matches 6 if score online_player mm_data matches 1..64 run scoreboard players set game_start mm_main 1
##感染v2模式-2~64人
execute if score game_pause mm_main matches 0 if score game_start mm_main matches 0 if entity @e[tag=mm_lobby_spawn,tag=mm_actived] if entity @e[tag=mm_spawn,tag=mm_actived] if entity @e[tag=mm_dropped_bow_spawn,tag=mm_actived] if score game_mode mm_main matches 7 if score online_player mm_data matches 2..64 run scoreboard players set game_start mm_main 1
##道具双倍模式-4~72人
execute if score game_pause mm_main matches 0 if score game_start mm_main matches 0 if entity @e[tag=mm_lobby_spawn,tag=mm_actived] if entity @e[tag=mm_spawn,tag=mm_actived] if entity @e[tag=mm_dropped_bow_spawn,tag=mm_actived] if score game_mode mm_main matches 8 if score online_player mm_data matches 4..72 run scoreboard players set game_start mm_main 1


#触发后计时
execute if score game_start mm_main matches 1 run function mm:waiting/triggered


#无法达到开始条件则取消
##人为暂停
execute if score game_start mm_main matches 1 unless score game_pause mm_main matches 0 run tellraw @a {"text":"游戏已被人为暂停!","color":"red"}
execute if score game_start mm_main matches 1 unless score game_pause mm_main matches 0 run scoreboard players set game_start mm_main 0

##地图损坏
execute if score game_start mm_main matches 1 unless entity @e[tag=mm_lobby_spawn,tag=mm_actived] run tellraw @a {"text":"地图缺失大厅出生点! 游戏已取消!","color":"red"}
execute if score game_start mm_main matches 1 unless entity @e[tag=mm_lobby_spawn,tag=mm_actived] run scoreboard players set game_start mm_main 0
execute if score game_start mm_main matches 1 unless entity @e[tag=mm_spawn,tag=mm_actived] run tellraw @a {"text":"地图缺失玩家/金锭出生点! 游戏已取消!","color":"red"}
execute if score game_start mm_main matches 1 unless entity @e[tag=mm_spawn,tag=mm_actived] run scoreboard players set game_start mm_main 0
execute if score game_start mm_main matches 1 unless entity @e[tag=mm_dropped_bow_spawn,tag=mm_actived] run tellraw @a {"text":"地图掉落弓传送点! 游戏已取消!","color":"red"}
execute if score game_start mm_main matches 1 unless entity @e[tag=mm_dropped_bow_spawn,tag=mm_actived] run scoreboard players set game_start mm_main 0

##经典模式-人数不足或过多
execute if score game_start mm_main matches 1 if score game_mode mm_main matches 0 unless score online_player mm_data matches 2..64 run tellraw @a {"text":"人数不足或过多! 游戏已取消!","color":"red"}
execute if score game_start mm_main matches 1 if score game_mode mm_main matches 0 unless score online_player mm_data matches 2..64 run scoreboard players set game_start mm_main 0

##双倍模式-人数不足或过多
execute if score game_start mm_main matches 1 if score game_mode mm_main matches 1 unless score online_player mm_data matches 4..72 run tellraw @a {"text":"人数不足或过多! 游戏已取消!","color":"red"}
execute if score game_start mm_main matches 1 if score game_mode mm_main matches 1 unless score online_player mm_data matches 4..72 run scoreboard players set game_start mm_main 0

##感染v1模式-人数不足或过多
execute if score game_start mm_main matches 1 if score game_mode mm_main matches 2 unless score online_player mm_data matches 2..64 run tellraw @a {"text":"人数不足或过多! 游戏已取消!","color":"red"}
execute if score game_start mm_main matches 1 if score game_mode mm_main matches 2 unless score online_player mm_data matches 2..64 run scoreboard players set game_start mm_main 0

##警匪对决-人数不足或过多
execute if score game_start mm_main matches 1 if score game_mode mm_main matches 3 unless score online_player mm_data matches 2..64 run tellraw @a {"text":"人数不足或过多! 游戏已取消!","color":"red"}
execute if score game_start mm_main matches 1 if score game_mode mm_main matches 3 unless score online_player mm_data matches 2..64 run scoreboard players set game_start mm_main 0

##人机大战模式-人数不足或过多
execute if score game_start mm_main matches 1 if score game_mode mm_main matches 4 unless score online_player mm_data matches 2..64 run tellraw @a {"text":"人数不足或过多! 游戏已取消!","color":"red"}
execute if score game_start mm_main matches 1 if score game_mode mm_main matches 4 unless score online_player mm_data matches 2..64 run scoreboard players set game_start mm_main 0

##道具模式-人数不足或过多
execute if score game_start mm_main matches 1 if score game_mode mm_main matches 5 unless score online_player mm_data matches 2..64 run tellraw @a {"text":"人数不足或过多! 游戏已取消!","color":"red"}
execute if score game_start mm_main matches 1 if score game_mode mm_main matches 5 unless score online_player mm_data matches 2..64 run scoreboard players set game_start mm_main 0

##生存模式-人数不足或过多
execute if score game_start mm_main matches 1 if score game_mode mm_main matches 6 unless score online_player mm_data matches 1..64 run tellraw @a {"text":"人数不足或过多! 游戏已取消!","color":"red"}
execute if score game_start mm_main matches 1 if score game_mode mm_main matches 6 unless score online_player mm_data matches 1..64 run scoreboard players set game_start mm_main 0

##感染v2模式-人数不足或过多
execute if score game_start mm_main matches 1 if score game_mode mm_main matches 7 unless score online_player mm_data matches 2..64 run tellraw @a {"text":"人数不足或过多! 游戏已取消!","color":"red"}
execute if score game_start mm_main matches 1 if score game_mode mm_main matches 7 unless score online_player mm_data matches 2..64 run scoreboard players set game_start mm_main 0

##道具双倍模式-人数不足或过多
execute if score game_start mm_main matches 1 if score game_mode mm_main matches 8 unless score online_player mm_data matches 4..72 run tellraw @a {"text":"人数不足或过多! 游戏已取消!","color":"red"}
execute if score game_start mm_main matches 1 if score game_mode mm_main matches 8 unless score online_player mm_data matches 4..72 run scoreboard players set game_start mm_main 0