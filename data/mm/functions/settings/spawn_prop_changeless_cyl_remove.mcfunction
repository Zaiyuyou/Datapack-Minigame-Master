execute as @s run scoreboard players remove prop_changeless_spawn_cyl mm_settings 1
execute as @s if score prop_changeless_spawn_cyl mm_settings matches ..0 run scoreboard players set prop_changeless_spawn_cyl mm_settings 1

title @a subtitle [{"text":"神话道具稀有度已设置为","color":"yellow"},{"score":{"objective":"mm_settings","name":"prop_changeless_spawn_cyl"},"color":"gold"},{"text":"!","color":"yellow"}]
title @s title {"text":""}