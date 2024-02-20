#第0行
scoreboard players set §5[骗赞服] mm_scoreboard 0

#第1行
scoreboard players set §e感谢您的游玩! mm_scoreboard 1


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
scoreboard players set §e mm_scoreboard 4


#第5行
execute if entity @e[tag=mm_dropped_bow] if score dropped_bow_left mm_data matches 2 run scoreboard players set §f弓#2:§c已掉落 mm_scoreboard 5
execute if entity @e[tag=mm_dropped_bow] unless score dropped_bow_left mm_data matches 2 run scoreboard players set §f弓#2:§a尚未掉落 mm_scoreboard 5
execute unless entity @e[tag=mm_dropped_bow] run scoreboard players set §f弓#2:§a尚未掉落 mm_scoreboard 5


#第6行
execute if entity @e[tag=mm_dropped_bow] run scoreboard players set §f弓#1:§c已掉落 mm_scoreboard 6
execute unless entity @e[tag=mm_dropped_bow] run scoreboard players set §f弓#1:§a尚未掉落 mm_scoreboard 6


#第7行
scoreboard players set §b mm_scoreboard 7


#第8行
execute if score murderer_left mm_data matches 0 run scoreboard players set §f剩余杀手:§a0 mm_scoreboard 5
execute if score murderer_left mm_data matches 1 run scoreboard players set §f剩余杀手:§a1 mm_scoreboard 5
execute if score murderer_left mm_data matches 2 run scoreboard players set §f剩余杀手:§a2 mm_scoreboard 5
execute if score murderer_left mm_data matches 3 run scoreboard players set §f剩余杀手:§a3 mm_scoreboard 5
execute if score murderer_left mm_data matches 4 run scoreboard players set §f剩余杀手:§a4 mm_scoreboard 5
execute if score murderer_left mm_data matches 5 run scoreboard players set §f剩余杀手:§a5 mm_scoreboard 5
execute if score murderer_left mm_data matches 6 run scoreboard players set §f剩余杀手:§a6 mm_scoreboard 5
execute if score murderer_left mm_data matches 7 run scoreboard players set §f剩余杀手:§a7 mm_scoreboard 5
execute if score murderer_left mm_data matches 8 run scoreboard players set §f剩余杀手:§a8 mm_scoreboard 5
execute if score murderer_left mm_data matches 9 run scoreboard players set §f剩余杀手:§a9 mm_scoreboard 5
execute if score murderer_left mm_data matches 10 run scoreboard players set §f剩余杀手:§a10 mm_scoreboard 5
execute if score murderer_left mm_data matches 11 run scoreboard players set §f剩余杀手:§a11 mm_scoreboard 5
execute if score murderer_left mm_data matches 12 run scoreboard players set §f剩余杀手:§a12 mm_scoreboard 5
execute if score murderer_left mm_data matches 13 run scoreboard players set §f剩余杀手:§a13 mm_scoreboard 5
execute if score murderer_left mm_data matches 14 run scoreboard players set §f剩余杀手:§a14 mm_scoreboard 5
execute if score murderer_left mm_data matches 15 run scoreboard players set §f剩余杀手:§a15 mm_scoreboard 5
execute if score murderer_left mm_data matches 16 run scoreboard players set §f剩余杀手:§a16 mm_scoreboard 5
execute if score murderer_left mm_data matches 17 run scoreboard players set §f剩余杀手:§a17 mm_scoreboard 5
execute if score murderer_left mm_data matches 18 run scoreboard players set §f剩余杀手:§a18 mm_scoreboard 5
execute if score murderer_left mm_data matches 19 run scoreboard players set §f剩余杀手:§a19 mm_scoreboard 5
execute if score murderer_left mm_data matches 20 run scoreboard players set §f剩余杀手:§a20 mm_scoreboard 5
execute if score murderer_left mm_data matches 21 run scoreboard players set §f剩余杀手:§a21 mm_scoreboard 5
execute if score murderer_left mm_data matches 22 run scoreboard players set §f剩余杀手:§a22 mm_scoreboard 5
execute if score murderer_left mm_data matches 23 run scoreboard players set §f剩余杀手:§a23 mm_scoreboard 5
execute if score murderer_left mm_data matches 24 run scoreboard players set §f剩余杀手:§a24 mm_scoreboard 5
execute if score murderer_left mm_data matches 25 run scoreboard players set §f剩余杀手:§a25 mm_scoreboard 5
execute if score murderer_left mm_data matches 26 run scoreboard players set §f剩余杀手:§a26 mm_scoreboard 5
execute if score murderer_left mm_data matches 27 run scoreboard players set §f剩余杀手:§a27 mm_scoreboard 5
execute if score murderer_left mm_data matches 28 run scoreboard players set §f剩余杀手:§a28 mm_scoreboard 5
execute if score murderer_left mm_data matches 29 run scoreboard players set §f剩余杀手:§a29 mm_scoreboard 5
execute if score murderer_left mm_data matches 30 run scoreboard players set §f剩余杀手:§a30 mm_scoreboard 5
execute if score murderer_left mm_data matches 31 run scoreboard players set §f剩余杀手:§a31 mm_scoreboard 5
execute if score murderer_left mm_data matches 32 run scoreboard players set §f剩余杀手:§a32 mm_scoreboard 5
execute if score murderer_left mm_data matches 33 run scoreboard players set §f剩余杀手:§a33 mm_scoreboard 5
execute if score murderer_left mm_data matches 34 run scoreboard players set §f剩余杀手:§a34 mm_scoreboard 5
execute if score murderer_left mm_data matches 35 run scoreboard players set §f剩余杀手:§a35 mm_scoreboard 5
execute if score murderer_left mm_data matches 36 run scoreboard players set §f剩余杀手:§a36 mm_scoreboard 5
execute if score murderer_left mm_data matches 37 run scoreboard players set §f剩余杀手:§a37 mm_scoreboard 5
execute if score murderer_left mm_data matches 38 run scoreboard players set §f剩余杀手:§a38 mm_scoreboard 5
execute if score murderer_left mm_data matches 39 run scoreboard players set §f剩余杀手:§a39 mm_scoreboard 5
execute if score murderer_left mm_data matches 40 run scoreboard players set §f剩余杀手:§a40 mm_scoreboard 5
execute if score murderer_left mm_data matches 41 run scoreboard players set §f剩余杀手:§a41 mm_scoreboard 5
execute if score murderer_left mm_data matches 42 run scoreboard players set §f剩余杀手:§a42 mm_scoreboard 5
execute if score murderer_left mm_data matches 43 run scoreboard players set §f剩余杀手:§a43 mm_scoreboard 5
execute if score murderer_left mm_data matches 44 run scoreboard players set §f剩余杀手:§a44 mm_scoreboard 5
execute if score murderer_left mm_data matches 45 run scoreboard players set §f剩余杀手:§a45 mm_scoreboard 5
execute if score murderer_left mm_data matches 46 run scoreboard players set §f剩余杀手:§a46 mm_scoreboard 5
execute if score murderer_left mm_data matches 47 run scoreboard players set §f剩余杀手:§a47 mm_scoreboard 5
execute if score murderer_left mm_data matches 48 run scoreboard players set §f剩余杀手:§a48 mm_scoreboard 5
execute if score murderer_left mm_data matches 49 run scoreboard players set §f剩余杀手:§a49 mm_scoreboard 5
execute if score murderer_left mm_data matches 50 run scoreboard players set §f剩余杀手:§a50 mm_scoreboard 5
execute if score murderer_left mm_data matches 51 run scoreboard players set §f剩余杀手:§a51 mm_scoreboard 5
execute if score murderer_left mm_data matches 52 run scoreboard players set §f剩余杀手:§a52 mm_scoreboard 5
execute if score murderer_left mm_data matches 53 run scoreboard players set §f剩余杀手:§a53 mm_scoreboard 5
execute if score murderer_left mm_data matches 54 run scoreboard players set §f剩余杀手:§a54 mm_scoreboard 5
execute if score murderer_left mm_data matches 55 run scoreboard players set §f剩余杀手:§a55 mm_scoreboard 5
execute if score murderer_left mm_data matches 56 run scoreboard players set §f剩余杀手:§a56 mm_scoreboard 5
execute if score murderer_left mm_data matches 57 run scoreboard players set §f剩余杀手:§a57 mm_scoreboard 5
execute if score murderer_left mm_data matches 58 run scoreboard players set §f剩余杀手:§a58 mm_scoreboard 5
execute if score murderer_left mm_data matches 59 run scoreboard players set §f剩余杀手:§a59 mm_scoreboard 5
execute if score murderer_left mm_data matches 60 run scoreboard players set §f剩余杀手:§a60 mm_scoreboard 5
execute if score murderer_left mm_data matches 61 run scoreboard players set §f剩余杀手:§a61 mm_scoreboard 5
execute if score murderer_left mm_data matches 62 run scoreboard players set §f剩余杀手:§a62 mm_scoreboard 5
execute if score murderer_left mm_data matches 63 run scoreboard players set §f剩余杀手:§a63 mm_scoreboard 5
execute if score murderer_left mm_data matches 64 run scoreboard players set §f剩余杀手:§a64 mm_scoreboard 5
execute if score murderer_left mm_data matches 65 run scoreboard players set §f剩余杀手:§a65 mm_scoreboard 5
execute if score murderer_left mm_data matches 66 run scoreboard players set §f剩余杀手:§a66 mm_scoreboard 5
execute if score murderer_left mm_data matches 67 run scoreboard players set §f剩余杀手:§a67 mm_scoreboard 5
execute if score murderer_left mm_data matches 68 run scoreboard players set §f剩余杀手:§a68 mm_scoreboard 5
execute if score murderer_left mm_data matches 69 run scoreboard players set §f剩余杀手:§a69 mm_scoreboard 5
execute if score murderer_left mm_data matches 70 run scoreboard players set §f剩余杀手:§a70 mm_scoreboard 5
execute if score murderer_left mm_data matches 71 run scoreboard players set §f剩余杀手:§a71 mm_scoreboard 5
execute if score murderer_left mm_data matches 72 run scoreboard players set §f剩余杀手:§a72 mm_scoreboard 5


#第9行
execute if score innocent_left mm_data matches 0 run scoreboard players set §f剩余平民:§a0 mm_scoreboard 6
execute if score innocent_left mm_data matches 1 run scoreboard players set §f剩余平民:§a1 mm_scoreboard 6
execute if score innocent_left mm_data matches 2 run scoreboard players set §f剩余平民:§a2 mm_scoreboard 6
execute if score innocent_left mm_data matches 3 run scoreboard players set §f剩余平民:§a3 mm_scoreboard 6
execute if score innocent_left mm_data matches 4 run scoreboard players set §f剩余平民:§a4 mm_scoreboard 6
execute if score innocent_left mm_data matches 5 run scoreboard players set §f剩余平民:§a5 mm_scoreboard 6
execute if score innocent_left mm_data matches 6 run scoreboard players set §f剩余平民:§a6 mm_scoreboard 6
execute if score innocent_left mm_data matches 7 run scoreboard players set §f剩余平民:§a7 mm_scoreboard 6
execute if score innocent_left mm_data matches 8 run scoreboard players set §f剩余平民:§a8 mm_scoreboard 6
execute if score innocent_left mm_data matches 9 run scoreboard players set §f剩余平民:§a9 mm_scoreboard 6
execute if score innocent_left mm_data matches 10 run scoreboard players set §f剩余平民:§a10 mm_scoreboard 6
execute if score innocent_left mm_data matches 11 run scoreboard players set §f剩余平民:§a11 mm_scoreboard 6
execute if score innocent_left mm_data matches 12 run scoreboard players set §f剩余平民:§a12 mm_scoreboard 6
execute if score innocent_left mm_data matches 13 run scoreboard players set §f剩余平民:§a13 mm_scoreboard 6
execute if score innocent_left mm_data matches 14 run scoreboard players set §f剩余平民:§a14 mm_scoreboard 6
execute if score innocent_left mm_data matches 15 run scoreboard players set §f剩余平民:§a15 mm_scoreboard 6
execute if score innocent_left mm_data matches 16 run scoreboard players set §f剩余平民:§a16 mm_scoreboard 6
execute if score innocent_left mm_data matches 17 run scoreboard players set §f剩余平民:§a17 mm_scoreboard 6
execute if score innocent_left mm_data matches 18 run scoreboard players set §f剩余平民:§a18 mm_scoreboard 6
execute if score innocent_left mm_data matches 19 run scoreboard players set §f剩余平民:§a19 mm_scoreboard 6
execute if score innocent_left mm_data matches 20 run scoreboard players set §f剩余平民:§a20 mm_scoreboard 6
execute if score innocent_left mm_data matches 21 run scoreboard players set §f剩余平民:§a21 mm_scoreboard 6
execute if score innocent_left mm_data matches 22 run scoreboard players set §f剩余平民:§a22 mm_scoreboard 6
execute if score innocent_left mm_data matches 23 run scoreboard players set §f剩余平民:§a23 mm_scoreboard 6
execute if score innocent_left mm_data matches 24 run scoreboard players set §f剩余平民:§a24 mm_scoreboard 6
execute if score innocent_left mm_data matches 25 run scoreboard players set §f剩余平民:§a25 mm_scoreboard 6
execute if score innocent_left mm_data matches 26 run scoreboard players set §f剩余平民:§a26 mm_scoreboard 6
execute if score innocent_left mm_data matches 27 run scoreboard players set §f剩余平民:§a27 mm_scoreboard 6
execute if score innocent_left mm_data matches 28 run scoreboard players set §f剩余平民:§a28 mm_scoreboard 6
execute if score innocent_left mm_data matches 29 run scoreboard players set §f剩余平民:§a29 mm_scoreboard 6
execute if score innocent_left mm_data matches 30 run scoreboard players set §f剩余平民:§a30 mm_scoreboard 6
execute if score innocent_left mm_data matches 31 run scoreboard players set §f剩余平民:§a31 mm_scoreboard 6
execute if score innocent_left mm_data matches 32 run scoreboard players set §f剩余平民:§a32 mm_scoreboard 6
execute if score innocent_left mm_data matches 33 run scoreboard players set §f剩余平民:§a33 mm_scoreboard 6
execute if score innocent_left mm_data matches 34 run scoreboard players set §f剩余平民:§a34 mm_scoreboard 6
execute if score innocent_left mm_data matches 35 run scoreboard players set §f剩余平民:§a35 mm_scoreboard 6
execute if score innocent_left mm_data matches 36 run scoreboard players set §f剩余平民:§a36 mm_scoreboard 6
execute if score innocent_left mm_data matches 37 run scoreboard players set §f剩余平民:§a37 mm_scoreboard 6
execute if score innocent_left mm_data matches 38 run scoreboard players set §f剩余平民:§a38 mm_scoreboard 6
execute if score innocent_left mm_data matches 39 run scoreboard players set §f剩余平民:§a39 mm_scoreboard 6
execute if score innocent_left mm_data matches 40 run scoreboard players set §f剩余平民:§a40 mm_scoreboard 6
execute if score innocent_left mm_data matches 41 run scoreboard players set §f剩余平民:§a41 mm_scoreboard 6
execute if score innocent_left mm_data matches 42 run scoreboard players set §f剩余平民:§a42 mm_scoreboard 6
execute if score innocent_left mm_data matches 43 run scoreboard players set §f剩余平民:§a43 mm_scoreboard 6
execute if score innocent_left mm_data matches 44 run scoreboard players set §f剩余平民:§a44 mm_scoreboard 6
execute if score innocent_left mm_data matches 45 run scoreboard players set §f剩余平民:§a45 mm_scoreboard 6
execute if score innocent_left mm_data matches 46 run scoreboard players set §f剩余平民:§a46 mm_scoreboard 6
execute if score innocent_left mm_data matches 47 run scoreboard players set §f剩余平民:§a47 mm_scoreboard 6
execute if score innocent_left mm_data matches 48 run scoreboard players set §f剩余平民:§a48 mm_scoreboard 6
execute if score innocent_left mm_data matches 49 run scoreboard players set §f剩余平民:§a49 mm_scoreboard 6
execute if score innocent_left mm_data matches 50 run scoreboard players set §f剩余平民:§a50 mm_scoreboard 6
execute if score innocent_left mm_data matches 51 run scoreboard players set §f剩余平民:§a51 mm_scoreboard 6
execute if score innocent_left mm_data matches 52 run scoreboard players set §f剩余平民:§a52 mm_scoreboard 6
execute if score innocent_left mm_data matches 53 run scoreboard players set §f剩余平民:§a53 mm_scoreboard 6
execute if score innocent_left mm_data matches 54 run scoreboard players set §f剩余平民:§a54 mm_scoreboard 6
execute if score innocent_left mm_data matches 55 run scoreboard players set §f剩余平民:§a55 mm_scoreboard 6
execute if score innocent_left mm_data matches 56 run scoreboard players set §f剩余平民:§a56 mm_scoreboard 6
execute if score innocent_left mm_data matches 57 run scoreboard players set §f剩余平民:§a57 mm_scoreboard 6
execute if score innocent_left mm_data matches 58 run scoreboard players set §f剩余平民:§a58 mm_scoreboard 6
execute if score innocent_left mm_data matches 59 run scoreboard players set §f剩余平民:§a59 mm_scoreboard 6
execute if score innocent_left mm_data matches 60 run scoreboard players set §f剩余平民:§a60 mm_scoreboard 6
execute if score innocent_left mm_data matches 61 run scoreboard players set §f剩余平民:§a61 mm_scoreboard 6
execute if score innocent_left mm_data matches 62 run scoreboard players set §f剩余平民:§a62 mm_scoreboard 6
execute if score innocent_left mm_data matches 63 run scoreboard players set §f剩余平民:§a63 mm_scoreboard 6
execute if score innocent_left mm_data matches 64 run scoreboard players set §f剩余平民:§a64 mm_scoreboard 6
execute if score innocent_left mm_data matches 65 run scoreboard players set §f剩余平民:§a65 mm_scoreboard 6
execute if score innocent_left mm_data matches 66 run scoreboard players set §f剩余平民:§a66 mm_scoreboard 6
execute if score innocent_left mm_data matches 67 run scoreboard players set §f剩余平民:§a67 mm_scoreboard 6
execute if score innocent_left mm_data matches 68 run scoreboard players set §f剩余平民:§a68 mm_scoreboard 6
execute if score innocent_left mm_data matches 69 run scoreboard players set §f剩余平民:§a69 mm_scoreboard 6
execute if score innocent_left mm_data matches 70 run scoreboard players set §f剩余平民:§a70 mm_scoreboard 6
execute if score innocent_left mm_data matches 71 run scoreboard players set §f剩余平民:§a71 mm_scoreboard 6
execute if score innocent_left mm_data matches 72 run scoreboard players set §f剩余平民:§a72 mm_scoreboard 6


#第10行
scoreboard players set game_second_line mm_main 10
function mm:scoreboards/time_left


#第11行
scoreboard players set §c mm_scoreboard 11


#第12行

execute if score border_discount mm_main > game_second mm_main run scoreboard players set §l§c!!!!!!!缩圈中!!!!!!! mm_scoreboard 12
execute unless score border_discount mm_main > game_second mm_main if score border_discount mm_main > -1 mm_main run scoreboard players set §5缩圈:§a开 mm_scoreboard 12
execute if score border_discount mm_main <= -1 mm_main run scoreboard players set §5缩圈:§c关 mm_scoreboard 12

#第13行
scoreboard players set §d mm_scoreboard 13

#第14行
execute if score game_mode mm_main matches 1 run scoreboard players set §f模式:§a双倍密室 mm_scoreboard 14
execute if score game_mode mm_main matches 8 run scoreboard players set §f模式:§d双倍道具密室 mm_scoreboard 14


#第15行
scoreboard players set §e mm_scoreboard 15