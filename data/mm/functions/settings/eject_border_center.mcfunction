execute unless score game_start mm_main matches 2 as @s run function mm:map_correction
execute unless score game_start mm_main matches 2 as @s as @e[tag=mm_border_center,tag=mm_actived] at @s run tp ~ ~1.6 ~
execute unless score game_start mm_main matches 2 as @s as @e[tag=mm_border_center,tag=mm_actived] at @s run data modify entity @s NoGravity set value 0b
execute unless score game_start mm_main matches 2 as @s as @e[tag=mm_border_center,tag=mm_actived] at @s run data modify entity @s Invisible set value 0b
execute unless score game_start mm_main matches 2 as @s as @e[tag=mm_border_center,tag=mm_actived] at @s run data modify entity @s Invulnerable set value 0b
execute unless score game_start mm_main matches 2 as @s as @e[tag=mm_border_center,tag=mm_actived] at @s run data modify entity @s Small set value 0b

execute unless score game_start mm_main matches 2 as @s as @e[tag=mm_border_center,tag=mm_actived] if score @s mm_map_id matches 1.. run scoreboard players reset @s mm_map_id
execute unless score game_start mm_main matches 2 as @s as @e[tag=mm_border_center,tag=mm_actived] run tag @s remove mm_border_center
execute unless score game_start mm_main matches 2 as @s run title @a actionbar {"text":"成功弹出缩圈中心点! 你可以进行修改/移除了!","color":"gold"}
execute unless score game_start mm_main matches 2 as @s run function mm:map_correction

execute if score game_start mm_main matches 2 as @s run title @a actionbar {"text":"请等待游戏结束再使用!","color":"red"}