#第0行
scoreboard players set §5[骗赞服] mm_scoreboard 0


#第1行
scoreboard players set §e感谢您的游玩! mm_scoreboard 1


#第2行
scoreboard players set §a mm_scoreboard 2


#第3行
execute if score selected_map mm_main matches 1 run scoreboard players set §f地图:§a地图1 mm_scoreboard 3
execute if score selected_map mm_main matches 2 run scoreboard players set §f地图:§a地图2 mm_scoreboard 3
execute if score selected_map mm_main matches 3 run scoreboard players set §f地图:§a地图3 mm_scoreboard 3
execute if score selected_map mm_main matches 4 run scoreboard players set §f地图:§a地图4 mm_scoreboard 3
execute if score selected_map mm_main matches 5 run scoreboard players set §f地图:§a地图5 mm_scoreboard 3
execute if score selected_map mm_main matches 6 run scoreboard players set §f地图:§a地图6 mm_scoreboard 3
execute if score selected_map mm_main matches 7 run scoreboard players set §f地图:§a地图7 mm_scoreboard 3
execute if score selected_map mm_main matches 8 run scoreboard players set §f地图:§a地图8 mm_scoreboard 3
execute if score selected_map mm_main matches 9 run scoreboard players set §f地图:§a地图9 mm_scoreboard 3
execute if score selected_map mm_main matches 10 run scoreboard players set §f地图:§a地图10 mm_scoreboard 3


#第4行
scoreboard players set §d mm_scoreboard 4


#第5行
execute if score game_pause mm_main matches 1 run scoreboard players set §c游戏已被人为暂停 mm_scoreboard 5

execute if score game_pause mm_main matches 0 if score game_start mm_main matches 0 run scoreboard players set §f等待中... mm_scoreboard 5
execute if score game_pause mm_main matches 0 if score game_start mm_main matches 1 if score game_start_time_second mm_main matches 1 run scoreboard players set §f开始于:§a1s mm_scoreboard 5
execute if score game_pause mm_main matches 0 if score game_start mm_main matches 1 if score game_start_time_second mm_main matches 2 run scoreboard players set §f开始于:§a2s mm_scoreboard 5
execute if score game_pause mm_main matches 0 if score game_start mm_main matches 1 if score game_start_time_second mm_main matches 3 run scoreboard players set §f开始于:§a3s mm_scoreboard 5
execute if score game_pause mm_main matches 0 if score game_start mm_main matches 1 if score game_start_time_second mm_main matches 4 run scoreboard players set §f开始于:§a4s mm_scoreboard 5
execute if score game_pause mm_main matches 0 if score game_start mm_main matches 1 if score game_start_time_second mm_main matches 5 run scoreboard players set §f开始于:§a5s mm_scoreboard 5
execute if score game_pause mm_main matches 0 if score game_start mm_main matches 1 if score game_start_time_second mm_main matches 6 run scoreboard players set §f开始于:§a6s mm_scoreboard 5
execute if score game_pause mm_main matches 0 if score game_start mm_main matches 1 if score game_start_time_second mm_main matches 7 run scoreboard players set §f开始于:§a7s mm_scoreboard 5
execute if score game_pause mm_main matches 0 if score game_start mm_main matches 1 if score game_start_time_second mm_main matches 8 run scoreboard players set §f开始于:§a8s mm_scoreboard 5
execute if score game_pause mm_main matches 0 if score game_start mm_main matches 1 if score game_start_time_second mm_main matches 9 run scoreboard players set §f开始于:§a9s mm_scoreboard 5
execute if score game_pause mm_main matches 0 if score game_start mm_main matches 1 if score game_start_time_second mm_main matches 10 run scoreboard players set §f开始于:§a10s mm_scoreboard 5
execute if score game_pause mm_main matches 0 if score game_start mm_main matches 1 if score game_start_time_second mm_main matches 11 run scoreboard players set §f开始于:§a11s mm_scoreboard 5
execute if score game_pause mm_main matches 0 if score game_start mm_main matches 1 if score game_start_time_second mm_main matches 12 run scoreboard players set §f开始于:§a12s mm_scoreboard 5
execute if score game_pause mm_main matches 0 if score game_start mm_main matches 1 if score game_start_time_second mm_main matches 13 run scoreboard players set §f开始于:§a13s mm_scoreboard 5
execute if score game_pause mm_main matches 0 if score game_start mm_main matches 1 if score game_start_time_second mm_main matches 14 run scoreboard players set §f开始于:§a14s mm_scoreboard 5
execute if score game_pause mm_main matches 0 if score game_start mm_main matches 1 if score game_start_time_second mm_main matches 15 run scoreboard players set §f开始于:§a15s mm_scoreboard 5
execute if score game_pause mm_main matches 0 if score game_start mm_main matches 1 if score game_start_time_second mm_main matches 16 run scoreboard players set §f开始于:§a16s mm_scoreboard 5
execute if score game_pause mm_main matches 0 if score game_start mm_main matches 1 if score game_start_time_second mm_main matches 17 run scoreboard players set §f开始于:§a17s mm_scoreboard 5
execute if score game_pause mm_main matches 0 if score game_start mm_main matches 1 if score game_start_time_second mm_main matches 18 run scoreboard players set §f开始于:§a18s mm_scoreboard 5
execute if score game_pause mm_main matches 0 if score game_start mm_main matches 1 if score game_start_time_second mm_main matches 19 run scoreboard players set §f开始于:§a19s mm_scoreboard 5
execute if score game_pause mm_main matches 0 if score game_start mm_main matches 1 if score game_start_time_second mm_main matches 20 run scoreboard players set §f开始于:§a20s mm_scoreboard 5
execute if score game_pause mm_main matches 0 if score game_start mm_main matches 1 if score game_start_time_second mm_main matches 21 run scoreboard players set §f开始于:§a21s mm_scoreboard 5
execute if score game_pause mm_main matches 0 if score game_start mm_main matches 1 if score game_start_time_second mm_main matches 22 run scoreboard players set §f开始于:§a22s mm_scoreboard 5
execute if score game_pause mm_main matches 0 if score game_start mm_main matches 1 if score game_start_time_second mm_main matches 23 run scoreboard players set §f开始于:§a23s mm_scoreboard 5
execute if score game_pause mm_main matches 0 if score game_start mm_main matches 1 if score game_start_time_second mm_main matches 24 run scoreboard players set §f开始于:§a24s mm_scoreboard 5
execute if score game_pause mm_main matches 0 if score game_start mm_main matches 1 if score game_start_time_second mm_main matches 25 run scoreboard players set §f开始于:§a25s mm_scoreboard 5
execute if score game_pause mm_main matches 0 if score game_start mm_main matches 1 if score game_start_time_second mm_main matches 26 run scoreboard players set §f开始于:§a26s mm_scoreboard 5
execute if score game_pause mm_main matches 0 if score game_start mm_main matches 1 if score game_start_time_second mm_main matches 27 run scoreboard players set §f开始于:§a27s mm_scoreboard 5
execute if score game_pause mm_main matches 0 if score game_start mm_main matches 1 if score game_start_time_second mm_main matches 28 run scoreboard players set §f开始于:§a28s mm_scoreboard 5
execute if score game_pause mm_main matches 0 if score game_start mm_main matches 1 if score game_start_time_second mm_main matches 29 run scoreboard players set §f开始于:§a29s mm_scoreboard 5
execute if score game_pause mm_main matches 0 if score game_start mm_main matches 1 if score game_start_time_second mm_main matches 30 run scoreboard players set §f开始于:§a30s mm_scoreboard 5
execute if score game_pause mm_main matches 0 if score game_start mm_main matches 1 if score game_start_time_second mm_main matches 31 run scoreboard players set §f开始于:§a31s mm_scoreboard 5
execute if score game_pause mm_main matches 0 if score game_start mm_main matches 1 if score game_start_time_second mm_main matches 32 run scoreboard players set §f开始于:§a32s mm_scoreboard 5
execute if score game_pause mm_main matches 0 if score game_start mm_main matches 1 if score game_start_time_second mm_main matches 33 run scoreboard players set §f开始于:§a33s mm_scoreboard 5
execute if score game_pause mm_main matches 0 if score game_start mm_main matches 1 if score game_start_time_second mm_main matches 34 run scoreboard players set §f开始于:§a34s mm_scoreboard 5
execute if score game_pause mm_main matches 0 if score game_start mm_main matches 1 if score game_start_time_second mm_main matches 35 run scoreboard players set §f开始于:§a35s mm_scoreboard 5
execute if score game_pause mm_main matches 0 if score game_start mm_main matches 1 if score game_start_time_second mm_main matches 36 run scoreboard players set §f开始于:§a36s mm_scoreboard 5
execute if score game_pause mm_main matches 0 if score game_start mm_main matches 1 if score game_start_time_second mm_main matches 37 run scoreboard players set §f开始于:§a37s mm_scoreboard 5
execute if score game_pause mm_main matches 0 if score game_start mm_main matches 1 if score game_start_time_second mm_main matches 38 run scoreboard players set §f开始于:§a38s mm_scoreboard 5
execute if score game_pause mm_main matches 0 if score game_start mm_main matches 1 if score game_start_time_second mm_main matches 39 run scoreboard players set §f开始于:§a39s mm_scoreboard 5
execute if score game_pause mm_main matches 0 if score game_start mm_main matches 1 if score game_start_time_second mm_main matches 40 run scoreboard players set §f开始于:§a40s mm_scoreboard 5
execute if score game_pause mm_main matches 0 if score game_start mm_main matches 1 if score game_start_time_second mm_main matches 41 run scoreboard players set §f开始于:§a41s mm_scoreboard 5
execute if score game_pause mm_main matches 0 if score game_start mm_main matches 1 if score game_start_time_second mm_main matches 42 run scoreboard players set §f开始于:§a42s mm_scoreboard 5
execute if score game_pause mm_main matches 0 if score game_start mm_main matches 1 if score game_start_time_second mm_main matches 43 run scoreboard players set §f开始于:§a43s mm_scoreboard 5
execute if score game_pause mm_main matches 0 if score game_start mm_main matches 1 if score game_start_time_second mm_main matches 44 run scoreboard players set §f开始于:§a44s mm_scoreboard 5
execute if score game_pause mm_main matches 0 if score game_start mm_main matches 1 if score game_start_time_second mm_main matches 45 run scoreboard players set §f开始于:§a45s mm_scoreboard 5
execute if score game_pause mm_main matches 0 if score game_start mm_main matches 1 if score game_start_time_second mm_main matches 46 run scoreboard players set §f开始于:§a46s mm_scoreboard 5
execute if score game_pause mm_main matches 0 if score game_start mm_main matches 1 if score game_start_time_second mm_main matches 47 run scoreboard players set §f开始于:§a47s mm_scoreboard 5
execute if score game_pause mm_main matches 0 if score game_start mm_main matches 1 if score game_start_time_second mm_main matches 48 run scoreboard players set §f开始于:§a48s mm_scoreboard 5
execute if score game_pause mm_main matches 0 if score game_start mm_main matches 1 if score game_start_time_second mm_main matches 49 run scoreboard players set §f开始于:§a49s mm_scoreboard 5
execute if score game_pause mm_main matches 0 if score game_start mm_main matches 1 if score game_start_time_second mm_main matches 50 run scoreboard players set §f开始于:§a50s mm_scoreboard 5
execute if score game_pause mm_main matches 0 if score game_start mm_main matches 1 if score game_start_time_second mm_main matches 51 run scoreboard players set §f开始于:§a51s mm_scoreboard 5
execute if score game_pause mm_main matches 0 if score game_start mm_main matches 1 if score game_start_time_second mm_main matches 52 run scoreboard players set §f开始于:§a52s mm_scoreboard 5
execute if score game_pause mm_main matches 0 if score game_start mm_main matches 1 if score game_start_time_second mm_main matches 53 run scoreboard players set §f开始于:§a53s mm_scoreboard 5
execute if score game_pause mm_main matches 0 if score game_start mm_main matches 1 if score game_start_time_second mm_main matches 54 run scoreboard players set §f开始于:§a54s mm_scoreboard 5
execute if score game_pause mm_main matches 0 if score game_start mm_main matches 1 if score game_start_time_second mm_main matches 55 run scoreboard players set §f开始于:§a55s mm_scoreboard 5
execute if score game_pause mm_main matches 0 if score game_start mm_main matches 1 if score game_start_time_second mm_main matches 56 run scoreboard players set §f开始于:§a56s mm_scoreboard 5
execute if score game_pause mm_main matches 0 if score game_start mm_main matches 1 if score game_start_time_second mm_main matches 57 run scoreboard players set §f开始于:§a57s mm_scoreboard 5
execute if score game_pause mm_main matches 0 if score game_start mm_main matches 1 if score game_start_time_second mm_main matches 58 run scoreboard players set §f开始于:§a58s mm_scoreboard 5
execute if score game_pause mm_main matches 0 if score game_start mm_main matches 1 if score game_start_time_second mm_main matches 59 run scoreboard players set §f开始于:§a59s mm_scoreboard 5
execute if score game_pause mm_main matches 0 if score game_start mm_main matches 1 if score game_start_time_second mm_main matches 60 run scoreboard players set §f开始于:§a60s mm_scoreboard 5
execute if score game_pause mm_main matches 0 if score game_start mm_main matches 1 if score game_start_time_second mm_main matches 61..120 run scoreboard players set §f开始于:§a大约1分多钟后 mm_scoreboard 5
execute if score game_pause mm_main matches 0 if score game_start mm_main matches 1 if score game_start_time_second mm_main matches 121..180 run scoreboard players set §f开始于:§a大约2分多钟后 mm_scoreboard 5
execute if score game_pause mm_main matches 0 if score game_start mm_main matches 1 if score game_start_time_second mm_main matches 181..240 run scoreboard players set §f开始于:§a大约3分多钟后 mm_scoreboard 5
execute if score game_pause mm_main matches 0 if score game_start mm_main matches 1 if score game_start_time_second mm_main matches 241..300 run scoreboard players set §f开始于:§a大约4分多钟后 mm_scoreboard 5
execute if score game_pause mm_main matches 0 if score game_start mm_main matches 1 if score game_start_time_second mm_main matches 301..360 run scoreboard players set §f开始于:§a大约5分多钟后 mm_scoreboard 5








#第6行
execute if score game_mode mm_main matches 0 run scoreboard players set §f玩家需求:§a2~64 mm_scoreboard 6
execute if score game_mode mm_main matches 1 run scoreboard players set §f玩家需求:§a4~72 mm_scoreboard 6
execute if score game_mode mm_main matches 2 run scoreboard players set §f玩家需求:§a2~64 mm_scoreboard 6
execute if score game_mode mm_main matches 3 run scoreboard players set §f玩家需求:§a2~64 mm_scoreboard 6
execute if score game_mode mm_main matches 4 run scoreboard players set §f玩家需求:§a2~64 mm_scoreboard 6
execute if score game_mode mm_main matches 5 run scoreboard players set §f玩家需求:§a2~64 mm_scoreboard 6
execute if score game_mode mm_main matches 6 run scoreboard players set §f玩家需求:§a1~64 mm_scoreboard 6
execute if score game_mode mm_main matches 7 run scoreboard players set §f玩家需求:§a2~64 mm_scoreboard 6
execute if score game_mode mm_main matches 8 run scoreboard players set §f玩家需求:§a4~72 mm_scoreboard 6


#第7行
execute if score online_player mm_data matches 0 run scoreboard players set §f玩家:§a0 mm_scoreboard 7
execute if score online_player mm_data matches 1 run scoreboard players set §f玩家:§a1 mm_scoreboard 7
execute if score online_player mm_data matches 2 run scoreboard players set §f玩家:§a2 mm_scoreboard 7
execute if score online_player mm_data matches 3 run scoreboard players set §f玩家:§a3 mm_scoreboard 7
execute if score online_player mm_data matches 4 run scoreboard players set §f玩家:§a4 mm_scoreboard 7
execute if score online_player mm_data matches 5 run scoreboard players set §f玩家:§a5 mm_scoreboard 7
execute if score online_player mm_data matches 6 run scoreboard players set §f玩家:§a6 mm_scoreboard 7
execute if score online_player mm_data matches 7 run scoreboard players set §f玩家:§a7 mm_scoreboard 7
execute if score online_player mm_data matches 8 run scoreboard players set §f玩家:§a8 mm_scoreboard 7
execute if score online_player mm_data matches 9 run scoreboard players set §f玩家:§a9 mm_scoreboard 7
execute if score online_player mm_data matches 10 run scoreboard players set §f玩家:§a10 mm_scoreboard 7
execute if score online_player mm_data matches 11 run scoreboard players set §f玩家:§a11 mm_scoreboard 7
execute if score online_player mm_data matches 12 run scoreboard players set §f玩家:§a12 mm_scoreboard 7
execute if score online_player mm_data matches 13 run scoreboard players set §f玩家:§a13 mm_scoreboard 7
execute if score online_player mm_data matches 14 run scoreboard players set §f玩家:§a14 mm_scoreboard 7
execute if score online_player mm_data matches 15 run scoreboard players set §f玩家:§a15 mm_scoreboard 7
execute if score online_player mm_data matches 16 run scoreboard players set §f玩家:§a16 mm_scoreboard 7
execute if score online_player mm_data matches 17 run scoreboard players set §f玩家:§a17 mm_scoreboard 7
execute if score online_player mm_data matches 18 run scoreboard players set §f玩家:§a18 mm_scoreboard 7
execute if score online_player mm_data matches 19 run scoreboard players set §f玩家:§a19 mm_scoreboard 7
execute if score online_player mm_data matches 20 run scoreboard players set §f玩家:§a20 mm_scoreboard 7
execute if score online_player mm_data matches 21 run scoreboard players set §f玩家:§a21 mm_scoreboard 7
execute if score online_player mm_data matches 22 run scoreboard players set §f玩家:§a22 mm_scoreboard 7
execute if score online_player mm_data matches 23 run scoreboard players set §f玩家:§a23 mm_scoreboard 7
execute if score online_player mm_data matches 24 run scoreboard players set §f玩家:§a24 mm_scoreboard 7
execute if score online_player mm_data matches 25 run scoreboard players set §f玩家:§a25 mm_scoreboard 7
execute if score online_player mm_data matches 26 run scoreboard players set §f玩家:§a26 mm_scoreboard 7
execute if score online_player mm_data matches 27 run scoreboard players set §f玩家:§a27 mm_scoreboard 7
execute if score online_player mm_data matches 28 run scoreboard players set §f玩家:§a28 mm_scoreboard 7
execute if score online_player mm_data matches 29 run scoreboard players set §f玩家:§a29 mm_scoreboard 7
execute if score online_player mm_data matches 30 run scoreboard players set §f玩家:§a30 mm_scoreboard 7
execute if score online_player mm_data matches 31 run scoreboard players set §f玩家:§a31 mm_scoreboard 7
execute if score online_player mm_data matches 32 run scoreboard players set §f玩家:§a32 mm_scoreboard 7
execute if score online_player mm_data matches 33 run scoreboard players set §f玩家:§a33 mm_scoreboard 7
execute if score online_player mm_data matches 34 run scoreboard players set §f玩家:§a34 mm_scoreboard 7
execute if score online_player mm_data matches 35 run scoreboard players set §f玩家:§a35 mm_scoreboard 7
execute if score online_player mm_data matches 36 run scoreboard players set §f玩家:§a36 mm_scoreboard 7
execute if score online_player mm_data matches 37 run scoreboard players set §f玩家:§a37 mm_scoreboard 7
execute if score online_player mm_data matches 38 run scoreboard players set §f玩家:§a38 mm_scoreboard 7
execute if score online_player mm_data matches 39 run scoreboard players set §f玩家:§a39 mm_scoreboard 7
execute if score online_player mm_data matches 40 run scoreboard players set §f玩家:§a40 mm_scoreboard 7
execute if score online_player mm_data matches 41 run scoreboard players set §f玩家:§a41 mm_scoreboard 7
execute if score online_player mm_data matches 42 run scoreboard players set §f玩家:§a42 mm_scoreboard 7
execute if score online_player mm_data matches 43 run scoreboard players set §f玩家:§a43 mm_scoreboard 7
execute if score online_player mm_data matches 44 run scoreboard players set §f玩家:§a44 mm_scoreboard 7
execute if score online_player mm_data matches 45 run scoreboard players set §f玩家:§a45 mm_scoreboard 7
execute if score online_player mm_data matches 46 run scoreboard players set §f玩家:§a46 mm_scoreboard 7
execute if score online_player mm_data matches 47 run scoreboard players set §f玩家:§a47 mm_scoreboard 7
execute if score online_player mm_data matches 48 run scoreboard players set §f玩家:§a48 mm_scoreboard 7
execute if score online_player mm_data matches 49 run scoreboard players set §f玩家:§a49 mm_scoreboard 7
execute if score online_player mm_data matches 50 run scoreboard players set §f玩家:§a50 mm_scoreboard 7
execute if score online_player mm_data matches 51 run scoreboard players set §f玩家:§a51 mm_scoreboard 7
execute if score online_player mm_data matches 52 run scoreboard players set §f玩家:§a52 mm_scoreboard 7
execute if score online_player mm_data matches 53 run scoreboard players set §f玩家:§a53 mm_scoreboard 7
execute if score online_player mm_data matches 54 run scoreboard players set §f玩家:§a54 mm_scoreboard 7
execute if score online_player mm_data matches 55 run scoreboard players set §f玩家:§a55 mm_scoreboard 7
execute if score online_player mm_data matches 56 run scoreboard players set §f玩家:§a56 mm_scoreboard 7
execute if score online_player mm_data matches 57 run scoreboard players set §f玩家:§a57 mm_scoreboard 7
execute if score online_player mm_data matches 58 run scoreboard players set §f玩家:§a58 mm_scoreboard 7
execute if score online_player mm_data matches 59 run scoreboard players set §f玩家:§a59 mm_scoreboard 7
execute if score online_player mm_data matches 60 run scoreboard players set §f玩家:§a60 mm_scoreboard 7
execute if score online_player mm_data matches 61 run scoreboard players set §f玩家:§a61 mm_scoreboard 7
execute if score online_player mm_data matches 62 run scoreboard players set §f玩家:§a62 mm_scoreboard 7
execute if score online_player mm_data matches 63 run scoreboard players set §f玩家:§a63 mm_scoreboard 7
execute if score online_player mm_data matches 64 run scoreboard players set §f玩家:§a64 mm_scoreboard 7
execute if score online_player mm_data matches 65 run scoreboard players set §f玩家:§a65 mm_scoreboard 7
execute if score online_player mm_data matches 66 run scoreboard players set §f玩家:§a66 mm_scoreboard 7
execute if score online_player mm_data matches 67 run scoreboard players set §f玩家:§a67 mm_scoreboard 7
execute if score online_player mm_data matches 68 run scoreboard players set §f玩家:§a68 mm_scoreboard 7
execute if score online_player mm_data matches 69 run scoreboard players set §f玩家:§a69 mm_scoreboard 7
execute if score online_player mm_data matches 70 run scoreboard players set §f玩家:§a70 mm_scoreboard 7
execute if score online_player mm_data matches 71 run scoreboard players set §f玩家:§a71 mm_scoreboard 7
execute if score online_player mm_data matches 72 run scoreboard players set §f玩家:§a72 mm_scoreboard 7


#第8行
execute if score game_mode mm_main matches 0 run scoreboard players set §b mm_scoreboard 8
execute if score game_mode mm_main matches 1 run scoreboard players set §b mm_scoreboard 8
execute if score mm_prop_spawn mm_main matches 1 if score game_mode mm_main matches 2 run scoreboard players set §5额外道具生成:§a开 mm_scoreboard 8
execute if score mm_prop_spawn mm_main matches 1 if score game_mode mm_main matches 3 run scoreboard players set §5额外道具生成:§a开 mm_scoreboard 8
execute if score mm_prop_spawn mm_main matches 1 if score game_mode mm_main matches 4 run scoreboard players set §5额外道具生成:§a开 mm_scoreboard 8
execute if score game_mode mm_main matches 5 run scoreboard players set §b mm_scoreboard 8
execute if score mm_prop_spawn mm_main matches 1 if score game_mode mm_main matches 6 run scoreboard players set §5额外道具生成:§a开 mm_scoreboard 8
execute if score mm_prop_spawn mm_main matches 1 if score game_mode mm_main matches 7 run scoreboard players set §5额外道具生成:§a开 mm_scoreboard 8
execute if score game_mode mm_main matches 8 run scoreboard players set §b mm_scoreboard 8

execute if score mm_prop_spawn mm_main matches -1 if score game_mode mm_main matches 2 run scoreboard players set §5额外道具生成:§c关 mm_scoreboard 8
execute if score mm_prop_spawn mm_main matches -1 if score game_mode mm_main matches 3 run scoreboard players set §5额外道具生成:§c关 mm_scoreboard 8
execute if score mm_prop_spawn mm_main matches -1 if score game_mode mm_main matches 4 run scoreboard players set §5额外道具生成:§c关 mm_scoreboard 8
execute if score mm_prop_spawn mm_main matches -1 if score game_mode mm_main matches 6 run scoreboard players set §5额外道具生成:§c关 mm_scoreboard 8
execute if score mm_prop_spawn mm_main matches -1 if score game_mode mm_main matches 7 run scoreboard players set §5额外道具生成:§c关 mm_scoreboard 8





execute if score border_discount mm_main > -1 mm_main run scoreboard players set §5缩圈:§a开 mm_scoreboard 9
execute if score border_discount mm_main <= -1 mm_main run scoreboard players set §5缩圈:§c关 mm_scoreboard 9

#第10行
scoreboard players set §c mm_scoreboard 10




#第11行
execute if score game_mode mm_main matches 0 run scoreboard players set §f模式:§a经典密室 mm_scoreboard 11
execute if score game_mode mm_main matches 1 run scoreboard players set §f模式:§a双倍密室 mm_scoreboard 11
execute if score game_mode mm_main matches 2 run scoreboard players set §f模式:§a感染v1 mm_scoreboard 11
execute if score game_mode mm_main matches 3 run scoreboard players set §f模式:§a警匪对决 mm_scoreboard 11
execute if score game_mode mm_main matches 4 run scoreboard players set §f模式:§6人机大战 mm_scoreboard 11
execute if score game_mode mm_main matches 5 run scoreboard players set §f模式:§d道具密室 mm_scoreboard 11
execute if score game_mode mm_main matches 6 run scoreboard players set §f模式:§d生存 mm_scoreboard 11
execute if score game_mode mm_main matches 7 run scoreboard players set §f模式:§a感染v2 mm_scoreboard 11
execute if score game_mode mm_main matches 8 run scoreboard players set §f模式:§d双倍道具密室 mm_scoreboard 11


#第12行
scoreboard players set §d mm_scoreboard 12