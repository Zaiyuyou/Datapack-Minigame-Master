execute as @s run scoreboard players set infection_cooldown_throw_second mm_settings 0
execute as @s run scoreboard players set infection_cooldown_throw_tick mm_settings 10

execute as @s if score infection_cooldown_throw_tick mm_settings matches 10.. run title @a subtitle [{"text":"感染者飞刀蓄力时长已重置为","color":"yellow"},{"score":{"objective":"mm_settings","name":"infection_cooldown_throw_second"},"color":"gold"},{"text":".","color":"gold"},{"score":{"objective":"mm_settings","name":"infection_cooldown_throw_tick"},"color":"gold"},{"text":"s","color":"gold"},{"text":"!","color":"yellow"}]
execute as @s if score infection_cooldown_throw_tick mm_settings matches ..9 run title @a subtitle [{"text":"感染者飞刀蓄力时长已重置为","color":"yellow"},{"score":{"objective":"mm_settings","name":"infection_cooldown_throw_second"},"color":"gold"},{"text":".0","color":"gold"},{"score":{"objective":"mm_settings","name":"infection_cooldown_throw_tick"},"color":"gold"},{"text":"s","color":"gold"},{"text":"!","color":"yellow"}]
title @s title {"text":""}