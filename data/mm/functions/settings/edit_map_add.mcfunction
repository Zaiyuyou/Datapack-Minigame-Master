execute unless score game_start mm_main matches 2 as @s run scoreboard players add selected_map mm_main 1
execute unless score game_start mm_main matches 2 unless score selected_map mm_main <= map_count mm_main run scoreboard players operation selected_map mm_main = map_count mm_main

execute unless score game_start mm_main matches 2 run title @a subtitle [{"text":"你现在正在编辑地图#","color":"yellow"},{"score":{"objective":"mm_main","name":"selected_map"},"color":"gold"},{"text":"!","color":"yellow"}]

title @s title {"text":""}
execute unless score game_start mm_main matches 2 as @s run function mm:map_correction

execute if score game_start mm_main matches 2 as @s run title @a subtitle {"text":"请等待游戏结束再使用!","color":"red"}
title @s title {"text":""}