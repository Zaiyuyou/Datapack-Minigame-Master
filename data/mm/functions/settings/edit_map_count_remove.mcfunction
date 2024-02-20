execute unless score game_start mm_main matches 2 as @s if score map_count mm_main matches 2.. run scoreboard players remove map_count mm_main 1
execute unless score game_start mm_main matches 2 unless score selected_map mm_main <= map_count mm_main run scoreboard players operation selected_map mm_main = map_count mm_main

execute unless score game_start mm_main matches 2 run title @a subtitle [{"text":"已移除一张地图! 你现在共有","color":"yellow"},{"score":{"objective":"mm_main","name":"map_count"},"color":"gold"},{"text":"张地图!","color":"yellow"}]

title @s title {"text":""}
execute unless score game_start mm_main matches 2 run title @a subtitle [{"text":"你现在正在编辑地图#","color":"yellow"},{"score":{"objective":"mm_main","name":"selected_map"},"color":"gold"},{"text":"!","color":"yellow"}]

title @s title {"text":""}
execute unless score game_start mm_main matches 2 as @s run function mm:map_correction

execute if score game_start mm_main matches 2 as @s run title @a subtitle {"text":"请等待游戏结束再使用!","color":"red"}
title @s title {"text":""}