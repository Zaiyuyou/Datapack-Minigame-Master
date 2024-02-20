execute as @s run scoreboard players add spawn_prop_count mm_settings 1
execute as @s if score spawn_prop_count mm_settings matches 21.. run scoreboard players set spawn_prop_count mm_settings 20

title @a subtitle [{"text":"道具生成个数已设置为","color":"yellow"},{"score":{"objective":"mm_settings","name":"spawn_prop_count"},"color":"gold"},{"text":"个/15秒","color":"gold"},{"text":"!","color":"yellow"}]
title @s title {"text":""}