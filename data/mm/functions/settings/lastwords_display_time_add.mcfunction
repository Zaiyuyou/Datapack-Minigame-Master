execute as @s run scoreboard players add lastwords_display_time mm_settings 1
execute as @s if score lastwords_display_time mm_settings matches 61.. run scoreboard players set lastwords_display_time mm_settings 60

title @a subtitle [{"text":"遗言显示时长已设置为","color":"yellow"},{"score":{"objective":"mm_settings","name":"lastwords_display_time"},"color":"gold"},{"text":".00s","color":"gold"},{"text":"!","color":"yellow"}]
title @s title {"text":""}