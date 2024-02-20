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
scoreboard players set §e mm_scoreboard 4


#第5行
execute if entity @a[tag=mm_detective,tag=mm_origin,tag=!mm_dead] run scoreboard players set §f侦探:§a存活 mm_scoreboard 5
execute unless entity @a[tag=mm_detective,tag=mm_origin,tag=!mm_dead] if entity @e[tag=mm_dropped_bow] run scoreboard players set §f弓:§c已掉落 mm_scoreboard 5
execute unless entity @a[tag=mm_detective,tag=mm_origin,tag=!mm_dead] unless entity @e[tag=mm_dropped_bow] run scoreboard players set §f弓:§a尚未掉落 mm_scoreboard 5


#第6行
scoreboard players set §b mm_scoreboard 6


#第7行
execute if score murderer_left mm_data matches 0 run scoreboard players set §f剩余杀手:§c0 mm_scoreboard 7
execute if score murderer_left mm_data matches 1 run scoreboard players set §f剩余杀手:§c1 mm_scoreboard 7
execute if score murderer_left mm_data matches 2 run scoreboard players set §f剩余杀手:§c2 mm_scoreboard 7
execute if score murderer_left mm_data matches 3 run scoreboard players set §f剩余杀手:§c3 mm_scoreboard 7
execute if score murderer_left mm_data matches 4 run scoreboard players set §f剩余杀手:§c4 mm_scoreboard 7
execute if score murderer_left mm_data matches 5 run scoreboard players set §f剩余杀手:§c5 mm_scoreboard 7
execute if score murderer_left mm_data matches 6 run scoreboard players set §f剩余杀手:§c6 mm_scoreboard 7
execute if score murderer_left mm_data matches 7 run scoreboard players set §f剩余杀手:§c7 mm_scoreboard 7
execute if score murderer_left mm_data matches 8 run scoreboard players set §f剩余杀手:§c8 mm_scoreboard 7
execute if score murderer_left mm_data matches 9 run scoreboard players set §f剩余杀手:§c9 mm_scoreboard 7
execute if score murderer_left mm_data matches 10 run scoreboard players set §f剩余杀手:§c10 mm_scoreboard 7
execute if score murderer_left mm_data matches 11 run scoreboard players set §f剩余杀手:§c11 mm_scoreboard 7
execute if score murderer_left mm_data matches 12 run scoreboard players set §f剩余杀手:§c12 mm_scoreboard 7
execute if score murderer_left mm_data matches 13 run scoreboard players set §f剩余杀手:§c13 mm_scoreboard 7
execute if score murderer_left mm_data matches 14 run scoreboard players set §f剩余杀手:§c14 mm_scoreboard 7
execute if score murderer_left mm_data matches 15 run scoreboard players set §f剩余杀手:§c15 mm_scoreboard 7
execute if score murderer_left mm_data matches 16 run scoreboard players set §f剩余杀手:§c16 mm_scoreboard 7


#第8行
execute if score innocent_left mm_data matches 0 run scoreboard players set §f剩余平民:§a0 mm_scoreboard 8
execute if score innocent_left mm_data matches 1 run scoreboard players set §f剩余平民:§a1 mm_scoreboard 8
execute if score innocent_left mm_data matches 2 run scoreboard players set §f剩余平民:§a2 mm_scoreboard 8
execute if score innocent_left mm_data matches 3 run scoreboard players set §f剩余平民:§a3 mm_scoreboard 8
execute if score innocent_left mm_data matches 4 run scoreboard players set §f剩余平民:§a4 mm_scoreboard 8
execute if score innocent_left mm_data matches 5 run scoreboard players set §f剩余平民:§a5 mm_scoreboard 8
execute if score innocent_left mm_data matches 6 run scoreboard players set §f剩余平民:§a6 mm_scoreboard 8
execute if score innocent_left mm_data matches 7 run scoreboard players set §f剩余平民:§a7 mm_scoreboard 8
execute if score innocent_left mm_data matches 8 run scoreboard players set §f剩余平民:§a8 mm_scoreboard 8
execute if score innocent_left mm_data matches 9 run scoreboard players set §f剩余平民:§a9 mm_scoreboard 8
execute if score innocent_left mm_data matches 10 run scoreboard players set §f剩余平民:§a10 mm_scoreboard 8
execute if score innocent_left mm_data matches 11 run scoreboard players set §f剩余平民:§a11 mm_scoreboard 8
execute if score innocent_left mm_data matches 12 run scoreboard players set §f剩余平民:§a12 mm_scoreboard 8
execute if score innocent_left mm_data matches 13 run scoreboard players set §f剩余平民:§a13 mm_scoreboard 8
execute if score innocent_left mm_data matches 14 run scoreboard players set §f剩余平民:§a14 mm_scoreboard 8
execute if score innocent_left mm_data matches 15 run scoreboard players set §f剩余平民:§a15 mm_scoreboard 8
execute if score innocent_left mm_data matches 16 run scoreboard players set §f剩余平民:§a16 mm_scoreboard 8
execute if score innocent_left mm_data matches 17 run scoreboard players set §f剩余平民:§a17 mm_scoreboard 8
execute if score innocent_left mm_data matches 18 run scoreboard players set §f剩余平民:§a18 mm_scoreboard 8
execute if score innocent_left mm_data matches 19 run scoreboard players set §f剩余平民:§a19 mm_scoreboard 8
execute if score innocent_left mm_data matches 20 run scoreboard players set §f剩余平民:§a20 mm_scoreboard 8
execute if score innocent_left mm_data matches 21 run scoreboard players set §f剩余平民:§a21 mm_scoreboard 8
execute if score innocent_left mm_data matches 22 run scoreboard players set §f剩余平民:§a22 mm_scoreboard 8
execute if score innocent_left mm_data matches 23 run scoreboard players set §f剩余平民:§a23 mm_scoreboard 8
execute if score innocent_left mm_data matches 24 run scoreboard players set §f剩余平民:§a24 mm_scoreboard 8
execute if score innocent_left mm_data matches 25 run scoreboard players set §f剩余平民:§a25 mm_scoreboard 8
execute if score innocent_left mm_data matches 26 run scoreboard players set §f剩余平民:§a26 mm_scoreboard 8
execute if score innocent_left mm_data matches 27 run scoreboard players set §f剩余平民:§a27 mm_scoreboard 8
execute if score innocent_left mm_data matches 28 run scoreboard players set §f剩余平民:§a28 mm_scoreboard 8
execute if score innocent_left mm_data matches 29 run scoreboard players set §f剩余平民:§a29 mm_scoreboard 8
execute if score innocent_left mm_data matches 30 run scoreboard players set §f剩余平民:§a30 mm_scoreboard 8
execute if score innocent_left mm_data matches 31 run scoreboard players set §f剩余平民:§a31 mm_scoreboard 8
execute if score innocent_left mm_data matches 32 run scoreboard players set §f剩余平民:§a32 mm_scoreboard 8
execute if score innocent_left mm_data matches 33 run scoreboard players set §f剩余平民:§a33 mm_scoreboard 8
execute if score innocent_left mm_data matches 34 run scoreboard players set §f剩余平民:§a34 mm_scoreboard 8
execute if score innocent_left mm_data matches 35 run scoreboard players set §f剩余平民:§a35 mm_scoreboard 8
execute if score innocent_left mm_data matches 36 run scoreboard players set §f剩余平民:§a36 mm_scoreboard 8
execute if score innocent_left mm_data matches 37 run scoreboard players set §f剩余平民:§a37 mm_scoreboard 8
execute if score innocent_left mm_data matches 38 run scoreboard players set §f剩余平民:§a38 mm_scoreboard 8
execute if score innocent_left mm_data matches 39 run scoreboard players set §f剩余平民:§a39 mm_scoreboard 8
execute if score innocent_left mm_data matches 40 run scoreboard players set §f剩余平民:§a40 mm_scoreboard 8
execute if score innocent_left mm_data matches 41 run scoreboard players set §f剩余平民:§a41 mm_scoreboard 8
execute if score innocent_left mm_data matches 42 run scoreboard players set §f剩余平民:§a42 mm_scoreboard 8
execute if score innocent_left mm_data matches 43 run scoreboard players set §f剩余平民:§a43 mm_scoreboard 8
execute if score innocent_left mm_data matches 44 run scoreboard players set §f剩余平民:§a44 mm_scoreboard 8
execute if score innocent_left mm_data matches 45 run scoreboard players set §f剩余平民:§a45 mm_scoreboard 8
execute if score innocent_left mm_data matches 46 run scoreboard players set §f剩余平民:§a46 mm_scoreboard 8
execute if score innocent_left mm_data matches 47 run scoreboard players set §f剩余平民:§a47 mm_scoreboard 8
execute if score innocent_left mm_data matches 48 run scoreboard players set §f剩余平民:§a48 mm_scoreboard 8
execute if score innocent_left mm_data matches 49 run scoreboard players set §f剩余平民:§a49 mm_scoreboard 8
execute if score innocent_left mm_data matches 50 run scoreboard players set §f剩余平民:§a50 mm_scoreboard 8
execute if score innocent_left mm_data matches 51 run scoreboard players set §f剩余平民:§a51 mm_scoreboard 8
execute if score innocent_left mm_data matches 52 run scoreboard players set §f剩余平民:§a52 mm_scoreboard 8
execute if score innocent_left mm_data matches 53 run scoreboard players set §f剩余平民:§a53 mm_scoreboard 8
execute if score innocent_left mm_data matches 54 run scoreboard players set §f剩余平民:§a54 mm_scoreboard 8
execute if score innocent_left mm_data matches 55 run scoreboard players set §f剩余平民:§a55 mm_scoreboard 8
execute if score innocent_left mm_data matches 56 run scoreboard players set §f剩余平民:§a56 mm_scoreboard 8
execute if score innocent_left mm_data matches 57 run scoreboard players set §f剩余平民:§a57 mm_scoreboard 8
execute if score innocent_left mm_data matches 58 run scoreboard players set §f剩余平民:§a58 mm_scoreboard 8
execute if score innocent_left mm_data matches 59 run scoreboard players set §f剩余平民:§a59 mm_scoreboard 8
execute if score innocent_left mm_data matches 60 run scoreboard players set §f剩余平民:§a60 mm_scoreboard 8
execute if score innocent_left mm_data matches 61 run scoreboard players set §f剩余平民:§a61 mm_scoreboard 8
execute if score innocent_left mm_data matches 62 run scoreboard players set §f剩余平民:§a62 mm_scoreboard 8
execute if score innocent_left mm_data matches 63 run scoreboard players set §f剩余平民:§a63 mm_scoreboard 8
execute if score innocent_left mm_data matches 64 run scoreboard players set §f剩余平民:§a64 mm_scoreboard 8


#第9行
scoreboard players set game_second_line mm_main 9
function mm:scoreboards/time_left


#第10行
scoreboard players set §c mm_scoreboard 10

#第11行
execute if score border_discount mm_main > game_second mm_main run scoreboard players set §l§c!!!!!!!缩圈中!!!!!!! mm_scoreboard 11
execute unless score border_discount mm_main > game_second mm_main if score border_discount mm_main > -1 mm_main run scoreboard players set §5缩圈:§a开 mm_scoreboard 11
execute if score border_discount mm_main <= -1 mm_main run scoreboard players set §5缩圈:§c关 mm_scoreboard 11

#第12行
scoreboard players set §d mm_scoreboard 12


#第13行
execute if score game_mode mm_main matches 0 run scoreboard players set §f模式:§a经典密室 mm_scoreboard 13
execute if score game_mode mm_main matches 5 run scoreboard players set §f模式:§d道具密室 mm_scoreboard 13


#第14行
scoreboard players set §e mm_scoreboard 14