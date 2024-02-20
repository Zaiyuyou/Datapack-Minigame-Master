execute as @s run scoreboard players remove showdown_end mm_settings 10
execute if score showdown_end mm_settings matches ..-1 run scoreboard players set showdown_end mm_settings 1

title @a subtitle [{"text":"警匪对决结束击杀数已设置为","color":"yellow"},{"score":{"objective":"mm_settings","name":"showdown_end"},"color":"gold"},{"text":"个","color":"gold"},{"text":"!","color":"yellow"}]
title @a title {"text":""}