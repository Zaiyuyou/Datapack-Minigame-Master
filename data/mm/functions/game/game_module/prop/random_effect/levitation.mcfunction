execute as @s run scoreboard players set random_count_max mm_data 21
execute as @s run function mm:game/game_module/random_count

execute as @s run tellraw @s [{"text":"你获得了","color":"green"},{"score":{"objective":"mm_data","name":"random_count"},"color":"green"},{"text":"秒的","color":"green"},{"text":"漂浮 II","color":"gold"},{"text":"效果!","color":"green"}]
execute if score random_count mm_data matches 1 run effect give @s levitation 1 1 true
execute if score random_count mm_data matches 2 run effect give @s levitation 2 1 true
execute if score random_count mm_data matches 3 run effect give @s levitation 3 1 true
execute if score random_count mm_data matches 4 run effect give @s levitation 4 1 true
execute if score random_count mm_data matches 5 run effect give @s levitation 5 1 true
execute if score random_count mm_data matches 6 run effect give @s levitation 6 1 true
execute if score random_count mm_data matches 7 run effect give @s levitation 7 1 true
execute if score random_count mm_data matches 8 run effect give @s levitation 8 1 true
execute if score random_count mm_data matches 9 run effect give @s levitation 9 1 true
execute if score random_count mm_data matches 10 run effect give @s levitation 10 1 true
execute if score random_count mm_data matches 11 run effect give @s levitation 11 1 true
execute if score random_count mm_data matches 12 run effect give @s levitation 12 1 true
execute if score random_count mm_data matches 13 run effect give @s levitation 13 1 true
execute if score random_count mm_data matches 14 run effect give @s levitation 14 1 true
execute if score random_count mm_data matches 15 run effect give @s levitation 15 1 true
execute if score random_count mm_data matches 16 run effect give @s levitation 16 1 true
execute if score random_count mm_data matches 17 run effect give @s levitation 17 1 true
execute if score random_count mm_data matches 18 run effect give @s levitation 18 1 true
execute if score random_count mm_data matches 19 run effect give @s levitation 19 1 true
execute if score random_count mm_data matches 20 run effect give @s levitation 20 1 true