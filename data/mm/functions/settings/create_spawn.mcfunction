execute unless score game_start mm_main matches 2 as @s run function mm:map_correction
execute unless score game_start mm_main matches 2 as @s as @e[name=mm_spawn,tag=!mm_spawn] run tag @s add mm_new_spawn
execute unless score game_start mm_main matches 2 as @s as @e[tag=mm_new_spawn] at @s run data modify entity @s NoGravity set value 1b
execute unless score game_start mm_main matches 2 as @s as @e[tag=mm_new_spawn] at @s run data modify entity @s Invisible set value 1b
execute unless score game_start mm_main matches 2 as @s as @e[tag=mm_new_spawn] at @s run data modify entity @s Invulnerable set value 1b
execute unless score game_start mm_main matches 2 as @s as @e[tag=mm_new_spawn] at @s run data modify entity @s Small set value 1b

execute unless score game_start mm_main matches 2 as @s as @e[tag=mm_new_spawn] at @s run tp ~ ~-1.3 ~
execute unless score game_start mm_main matches 2 as @s as @e[tag=mm_new_spawn] run tag @s add mm_spawn
execute unless score game_start mm_main matches 2 as @s as @e[tag=mm_new_spawn] run tag @s remove mm_new_spawn

execute unless score game_start mm_main matches 2 as @s run scoreboard players set spawn_count mm_data 0
execute unless score game_start mm_main matches 2 as @s as @e[tag=mm_spawn] run scoreboard players add spawn_count mm_data 1

execute unless score game_start mm_main matches 2 as @s run title @a actionbar [{"text":"成功注册了","color":"yellow"},{"score":{"objective":"mm_data","name":"spawn_count"},"color":"green"},{"text":"个玩家出生点/金锭生成点!","color":"yellow"}]
execute unless score game_start mm_main matches 2 as @s as @e[tag=mm_spawn] unless score @s mm_map_id matches 1.. run scoreboard players operation @s mm_map_id = selected_map mm_main
execute unless score game_start mm_main matches 2 as @s run function mm:map_correction

execute if score game_start mm_main matches 2 as @s run title @a actionbar {"text":"请等待游戏结束再使用!","color":"red"}