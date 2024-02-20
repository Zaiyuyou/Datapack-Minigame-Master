execute as @s run function mm:map_correction
execute as @s run effect give @e[tag=mm_lobby_spawn,tag=mm_actived] glowing 10 1 true
execute as @s run effect give @e[tag=mm_spawn,tag=mm_actived] glowing 10 1 true
execute as @s run effect give @e[tag=mm_dropped_bow_spawn,tag=mm_actived] glowing 10 1 true

title @a title [{"text":"已令地图#","color":"yellow"},{"score":{"objective":"mm_main","name":"selected_map"},"color":"gold"},{"text":"的所有元素发光10秒!","color":"yellow"}]
title @a title {"text":""}