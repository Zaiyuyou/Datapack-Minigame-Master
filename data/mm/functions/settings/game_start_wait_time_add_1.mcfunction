execute as @s run scoreboard players add game_start_wait_time mm_settings 1
execute as @s if score game_start_wait_time mm_settings matches 361.. run scoreboard players set game_start_wait_time mm_settings 360

title @a subtitle [{"text":"游戏达到开始条件后等待时长已设置为","color":"yellow"},{"score":{"objective":"mm_settings","name":"game_start_wait_time"},"color":"gold"},{"text":".00s","color":"gold"},{"text":"!","color":"yellow"}]
title @s title {"text":""}