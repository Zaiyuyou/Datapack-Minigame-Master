scoreboard players set auto_murder_counts mm_settings 0
scoreboard players remove murderer_count mm_settings 1
execute if score murderer_count mm_settings matches ..-1 run scoreboard players set murderer_count mm_settings 1

title @a subtitle [{"text":"杀手数量已设置为","color":"yellow"},{"text":":","color":"gold"},{"score":{"objective":"mm_settings","name":"murderer_count"},"color":"gold"},{"text":"!","color":"yellow"}]
title @s title {"text":""} 
execute as @s run function mm:play_settings