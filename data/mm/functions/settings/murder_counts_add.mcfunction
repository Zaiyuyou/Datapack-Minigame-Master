scoreboard players set auto_murder_counts mm_settings 0
scoreboard players add murderer_count mm_settings 1

title @a subtitle [{"text":"杀手数量已设置为","color":"yellow"},{"text":":","color":"gold"},{"score":{"objective":"mm_settings","name":"murderer_count"},"color":"gold"},{"text":"!","color":"yellow"}]
title @s title {"text":""}