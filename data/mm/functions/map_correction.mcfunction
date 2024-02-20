#令所有盔甲架重置状态
tag @e[tag=mm_lobby_spawn] remove mm_actived
tag @e[tag=mm_spawn] remove mm_actived
tag @e[tag=mm_border_center] remove mm_actived
tag @e[tag=mm_dropped_bow_spawn] remove mm_actived



#令所有符合当前地图的盔甲架获得标签
execute as @e[tag=mm_lobby_spawn] if score @s mm_map_id = selected_map mm_main run tag @s add mm_actived
execute as @e[tag=mm_spawn] if score @s mm_map_id = selected_map mm_main run tag @s add mm_actived
execute as @e[tag=mm_border_center] if score @s mm_map_id = selected_map mm_main run tag @s add mm_actived
execute as @e[tag=mm_dropped_bow_spawn] if score @s mm_map_id = selected_map mm_main run tag @s add mm_actived