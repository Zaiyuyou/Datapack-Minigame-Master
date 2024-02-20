execute unless score game_start mm_main matches 2 as @s run function mm:map_correction
execute unless score game_start mm_main matches 2 as @s as @e[name=mm_border_center,tag=!mm_border_center] run tag @s add mm_new_border_center
execute unless score game_start mm_main matches 2 as @s as @e[tag=mm_new_border_center] at @s run data modify entity @s NoGravity set value 1b
execute unless score game_start mm_main matches 2 as @s as @e[tag=mm_new_border_center] at @s run data modify entity @s Invisible set value 1b
execute unless score game_start mm_main matches 2 as @s as @e[tag=mm_new_border_center] at @s run data modify entity @s Invulnerable set value 1b
execute unless score game_start mm_main matches 2 as @s as @e[tag=mm_new_border_center] at @s run data modify entity @s Small set value 1b

execute unless score game_start mm_main matches 2 as @s as @e[tag=mm_new_border_center] at @s run tp ~ ~-1.3 ~
execute unless score game_start mm_main matches 2 as @s as @e[tag=mm_new_border_center] run tag @s add mm_border_center
execute unless score game_start mm_main matches 2 as @s as @e[tag=mm_new_border_center] run tag @s remove mm_new_border_center

execute unless score game_start mm_main matches 2 as @s run scoreboard players set spawn_count mm_data 0
execute unless score game_start mm_main matches 2 as @s as @e[tag=mm_border_center] run scoreboard players add spawn_count mm_data 1

execute unless score game_start mm_main matches 2 as @s run title @a actionbar [{"text":"成功注册了","color":"yellow"},{"score":{"objective":"mm_data","name":"spawn_count"},"color":"green"},{"text":"个缩圈中心点!","color":"yellow"}]
execute unless score game_start mm_main matches 2 as @s as @e[tag=mm_border_center] unless score @s mm_map_id matches 1.. run scoreboard players operation @s mm_map_id = selected_map mm_main
execute unless score game_start mm_main matches 2 as @s run function mm:map_correction

execute if score game_start mm_main matches 2 as @s run title @a actionbar {"text":"请等待游戏结束再使用!","color":"red"}