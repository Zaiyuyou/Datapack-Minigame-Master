execute as @s run scoreboard players set random_count_max mm_data 21
execute as @s run function mm:game/game_module/random_count

execute as @s run tellraw @s [{"text":"你获得了","color":"green"},{"score":{"objective":"mm_data","name":"random_count"},"color":"green"},{"text":"秒的","color":"green"},{"text":"夜视","color":"gold"},{"text":"效果!","color":"green"}]
execute if score random_count mm_data matches 1 run effect give @s night_vision 1 0 true
execute if score random_count mm_data matches 2 run effect give @s night_vision 2 0 true
execute if score random_count mm_data matches 3 run effect give @s night_vision 3 0 true
execute if score random_count mm_data matches 4 run effect give @s night_vision 4 0 true
execute if score random_count mm_data matches 5 run effect give @s night_vision 5 0 true
execute if score random_count mm_data matches 6 run effect give @s night_vision 6 0 true
execute if score random_count mm_data matches 7 run effect give @s night_vision 7 0 true
execute if score random_count mm_data matches 8 run effect give @s night_vision 8 0 true
execute if score random_count mm_data matches 9 run effect give @s night_vision 9 0 true
execute if score random_count mm_data matches 10 run effect give @s night_vision 10 0 true
execute if score random_count mm_data matches 11 run effect give @s night_vision 11 0 true
execute if score random_count mm_data matches 12 run effect give @s night_vision 12 0 true
execute if score random_count mm_data matches 13 run effect give @s night_vision 13 0 true
execute if score random_count mm_data matches 14 run effect give @s night_vision 14 0 true
execute if score random_count mm_data matches 15 run effect give @s night_vision 15 0 true
execute if score random_count mm_data matches 16 run effect give @s night_vision 16 0 true
execute if score random_count mm_data matches 17 run effect give @s night_vision 17 0 true
execute if score random_count mm_data matches 18 run effect give @s night_vision 18 0 true
execute if score random_count mm_data matches 19 run effect give @s night_vision 19 0 true
execute if score random_count mm_data matches 20 run effect give @s night_vision 20 0 true