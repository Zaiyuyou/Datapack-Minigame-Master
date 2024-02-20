execute unless score game_start mm_main matches 2 as @s run function mm:map_correction
execute unless score game_start mm_main matches 2 as @s as @e[tag=mm_lobby_spawn,tag=mm_actived] at @s run forceload remove ~-5 ~-5 ~5 ~5
execute unless score game_start mm_main matches 2 as @s run kill @e[tag=mm_lobby_spawn,tag=mm_actived]
execute unless score game_start mm_main matches 2 as @s run title @a subtitle {"text":"成功移除大厅出生点! 该区域已被移除常加载!","color":"gold"}

title @s title {"text":""}

execute unless score game_start mm_main matches 2 as @s run function mm:map_correction

execute if score game_start mm_main matches 2 as @s run title @a subtitle {"text":"请等待游戏结束再使用!","color":"red"}
title @s title {"text":""}
