execute as @s run scoreboard players set random_count_max mm_data 31
execute as @s run function mm:game/game_module/random_count

execute as @s run tellraw @s [{"text":"你获得了","color":"green"},{"score":{"objective":"mm_data","name":"random_count"},"color":"green"},{"text":"秒的","color":"green"},{"text":"失明","color":"gold"},{"text":"效果!","color":"green"}]
execute if score random_count mm_data matches 1 run effect give @s blindness 1 0 true
execute if score random_count mm_data matches 2 run effect give @s blindness 2 0 true
execute if score random_count mm_data matches 3 run effect give @s blindness 3 0 true
execute if score random_count mm_data matches 4 run effect give @s blindness 4 0 true
execute if score random_count mm_data matches 5 run effect give @s blindness 5 0 true
execute if score random_count mm_data matches 6 run effect give @s blindness 6 0 true
execute if score random_count mm_data matches 7 run effect give @s blindness 7 0 true
execute if score random_count mm_data matches 8 run effect give @s blindness 8 0 true
execute if score random_count mm_data matches 9 run effect give @s blindness 9 0 true
execute if score random_count mm_data matches 10 run effect give @s blindness 10 0 true
execute if score random_count mm_data matches 11 run effect give @s blindness 11 0 true
execute if score random_count mm_data matches 12 run effect give @s blindness 12 0 true
execute if score random_count mm_data matches 13 run effect give @s blindness 13 0 true
execute if score random_count mm_data matches 14 run effect give @s blindness 14 0 true
execute if score random_count mm_data matches 15 run effect give @s blindness 15 0 true
execute if score random_count mm_data matches 16 run effect give @s blindness 16 0 true
execute if score random_count mm_data matches 17 run effect give @s blindness 17 0 true
execute if score random_count mm_data matches 18 run effect give @s blindness 18 0 true
execute if score random_count mm_data matches 19 run effect give @s blindness 19 0 true
execute if score random_count mm_data matches 20 run effect give @s blindness 20 0 true
execute if score random_count mm_data matches 21 run effect give @s blindness 21 0 true
execute if score random_count mm_data matches 22 run effect give @s blindness 22 0 true
execute if score random_count mm_data matches 23 run effect give @s blindness 23 0 true
execute if score random_count mm_data matches 24 run effect give @s blindness 24 0 true
execute if score random_count mm_data matches 25 run effect give @s blindness 25 0 true
execute if score random_count mm_data matches 26 run effect give @s blindness 26 0 true
execute if score random_count mm_data matches 27 run effect give @s blindness 27 0 true
execute if score random_count mm_data matches 28 run effect give @s blindness 28 0 true
execute if score random_count mm_data matches 29 run effect give @s blindness 29 0 true
execute if score random_count mm_data matches 30 run effect give @s blindness 30 0 true