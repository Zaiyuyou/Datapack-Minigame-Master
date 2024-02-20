execute as @s run scoreboard players remove spawn_gold_ingot_count mm_settings 1
execute as @s if score spawn_gold_ingot_count mm_settings matches ..0 run scoreboard players set spawn_gold_ingot_count mm_settings 1

title @a subtitle [{"text":"金锭生成个数已设置为","color":"yellow"},{"score":{"objective":"mm_settings","name":"spawn_gold_ingot_count"},"color":"gold"},{"text":"个/5秒","color":"gold"},{"text":"!","color":"yellow"}]
title @s title {"text":""}