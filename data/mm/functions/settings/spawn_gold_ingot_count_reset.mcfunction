execute as @s run scoreboard players set spawn_gold_ingot_count mm_settings 3

title @a subtitle [{"text":"金锭生成个数已重置为","color":"yellow"},{"score":{"objective":"mm_settings","name":"spawn_gold_ingot_count"},"color":"gold"},{"text":"个/5秒","color":"gold"},{"text":"!","color":"yellow"}]
title @s title {"text":""}