execute unless score game_start mm_main matches 2 as @s run function mm:map_correction
execute unless score game_start mm_main matches 2 as @s run kill @e[tag=mm_dropped_bow_spawn,tag=mm_actived]
execute unless score game_start mm_main matches 2 as @s run title @a subtitle {"text":"成功移除掉落弓传送点!","color":"gold"}

title @s title {"text":""}
execute unless score game_start mm_main matches 2 as @s run function mm:map_correction

execute if score game_start mm_main matches 2 as @s run title @a subtitle {"text":"请等待游戏结束再使用!","color":"red"}
title @s title {"text":""}