execute as @s run scoreboard players remove shoot_cooldown_normal_second mm_settings 1
execute as @s if score shoot_cooldown_normal_second mm_settings matches ..-1 run scoreboard players set shoot_cooldown_normal_second mm_settings 0

execute as @s if score shoot_cooldown_normal_tick mm_settings matches 10.. run title @a subtitle [{"text":"弓箭冷却时长已设置为","color":"yellow"},{"score":{"objective":"mm_settings","name":"shoot_cooldown_normal_second"},"color":"gold"},{"text":".","color":"gold"},{"score":{"objective":"mm_settings","name":"shoot_cooldown_normal_tick"},"color":"gold"},{"text":"s","color":"gold"},{"text":"!","color":"yellow"}]
execute as @s if score shoot_cooldown_normal_tick mm_settings matches ..9 run title @a subtitle [{"text":"弓箭冷却时长已设置为","color":"yellow"},{"score":{"objective":"mm_settings","name":"shoot_cooldown_normal_second"},"color":"gold"},{"text":".0","color":"gold"},{"score":{"objective":"mm_settings","name":"shoot_cooldown_normal_tick"},"color":"gold"},{"text":"s","color":"gold"},{"text":"!","color":"yellow"}]
title @s title {"text":""}