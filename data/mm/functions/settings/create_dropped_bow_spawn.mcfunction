execute unless score game_start mm_main matches 2 as @s run function mm:map_correction
execute unless score game_start mm_main matches 2 as @s if entity @e[tag=mm_dropped_bow_spawn,tag=mm_actived] run title @a actionbar {"text":"检测到已有掉落弓传送点,将其移除!","color":"gold"}
execute unless score game_start mm_main matches 2 as @s if entity @e[tag=mm_dropped_bow_spawn,tag=mm_actived] run kill @e[tag=mm_dropped_bow_spawn,tag=mm_actived]

execute unless score game_start mm_main matches 2 as @s at @s run summon armor_stand ~ ~-2 ~ {Invisible:1,NoGravity:1,Tags:["mm_dropped_bow_spawn"]}
execute unless score game_start mm_main matches 2 as @s as @e[tag=mm_dropped_bow_spawn] unless score @s mm_map_id matches 1.. run scoreboard players operation @s mm_map_id = selected_map mm_main
execute unless score game_start mm_main matches 2 as @s run title @a actionbar {"text":"成功注册了掉落弓传送点!","color":"yellow"}
execute unless score game_start mm_main matches 2 as @s run function mm:map_correction

execute if score game_start mm_main matches 2 as @s run title @a actionbar {"text":"请等待游戏结束再使用!","color":"red"}