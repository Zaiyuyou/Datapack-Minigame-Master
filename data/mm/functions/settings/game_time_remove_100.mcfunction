execute as @s run scoreboard players remove game_time mm_settings 100
execute as @s if score game_time mm_settings matches ..59 run scoreboard players set game_time mm_settings 60

title @a subtitle [{"text":"游戏时长已设置为","color":"yellow"},{"score":{"objective":"mm_settings","name":"game_time"},"color":"gold"},{"text":".00s","color":"gold"},{"text":"!","color":"yellow"}]
title @s title {"text":""}
