execute unless score game_start mm_main matches 2 as @s run scoreboard players set game_mode mm_main 7
execute unless score game_start mm_main matches 2 as @s run scoreboard players set customize_lastwords_display_time mm_settings 1
execute unless score game_start mm_main matches 2 as @s run scoreboard players set customize_dead_body_display_time mm_settings 1
execute unless score game_start mm_main matches 2 as @s run scoreboard players set death_cause_display mm_settings 0
execute unless score game_start mm_main matches 2 as @s run title @a subtitle [{"text":"游戏模式已设置为","color":"yellow"},{"text":"感染v2","color":"green"},{"text":"!","color":"yellow"}]

execute if score game_start mm_main matches 2 as @s run title @s subtitle {"text":"请等待游戏结束再使用!","color":"red"}
title @a title {"text":""}