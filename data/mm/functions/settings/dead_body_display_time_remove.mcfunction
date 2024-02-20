execute as @s run scoreboard players remove dead_body_display_time mm_settings 1
execute as @s if score dead_body_display_time mm_settings matches ..9 run scoreboard players set dead_body_display_time mm_settings 10

title @a subtitle [{"text":"遗体显示时长已设置为","color":"yellow"},{"score":{"objective":"mm_settings","name":"dead_body_display_time"},"color":"gold"},{"text":".00s","color":"gold"},{"text":"!","color":"yellow"}]
title @s title {"text":""}