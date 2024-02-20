execute as @s run scoreboard players set random_count_max mm_data 41
execute as @s run function mm:game/game_module/random_count

execute as @s run tellraw @s [{"text":"你获得了","color":"green"},{"score":{"objective":"mm_data","name":"random_count"},"color":"green"},{"text":"秒的","color":"green"},{"text":"跳跃提升 I","color":"gold"},{"text":"效果!","color":"green"}]
execute if score random_count mm_data matches 1 run effect give @s jump_boost 1 0 true
execute if score random_count mm_data matches 2 run effect give @s jump_boost 2 0 true
execute if score random_count mm_data matches 3 run effect give @s jump_boost 3 0 true
execute if score random_count mm_data matches 4 run effect give @s jump_boost 4 0 true
execute if score random_count mm_data matches 5 run effect give @s jump_boost 5 0 true
execute if score random_count mm_data matches 6 run effect give @s jump_boost 6 0 true
execute if score random_count mm_data matches 7 run effect give @s jump_boost 7 0 true
execute if score random_count mm_data matches 8 run effect give @s jump_boost 8 0 true
execute if score random_count mm_data matches 9 run effect give @s jump_boost 9 0 true
execute if score random_count mm_data matches 10 run effect give @s jump_boost 10 0 true
execute if score random_count mm_data matches 11 run effect give @s jump_boost 11 0 true
execute if score random_count mm_data matches 12 run effect give @s jump_boost 12 0 true
execute if score random_count mm_data matches 13 run effect give @s jump_boost 13 0 true
execute if score random_count mm_data matches 14 run effect give @s jump_boost 14 0 true
execute if score random_count mm_data matches 15 run effect give @s jump_boost 15 0 true
execute if score random_count mm_data matches 16 run effect give @s jump_boost 16 0 true
execute if score random_count mm_data matches 17 run effect give @s jump_boost 17 0 true
execute if score random_count mm_data matches 18 run effect give @s jump_boost 18 0 true
execute if score random_count mm_data matches 19 run effect give @s jump_boost 19 0 true
execute if score random_count mm_data matches 20 run effect give @s jump_boost 20 0 true
execute if score random_count mm_data matches 21 run effect give @s jump_boost 21 0 true
execute if score random_count mm_data matches 22 run effect give @s jump_boost 22 0 true
execute if score random_count mm_data matches 23 run effect give @s jump_boost 23 0 true
execute if score random_count mm_data matches 24 run effect give @s jump_boost 24 0 true
execute if score random_count mm_data matches 25 run effect give @s jump_boost 25 0 true
execute if score random_count mm_data matches 26 run effect give @s jump_boost 26 0 true
execute if score random_count mm_data matches 27 run effect give @s jump_boost 27 0 true
execute if score random_count mm_data matches 28 run effect give @s jump_boost 28 0 true
execute if score random_count mm_data matches 29 run effect give @s jump_boost 29 0 true
execute if score random_count mm_data matches 30 run effect give @s jump_boost 30 0 true
execute if score random_count mm_data matches 31 run effect give @s jump_boost 31 0 true
execute if score random_count mm_data matches 32 run effect give @s jump_boost 32 0 true
execute if score random_count mm_data matches 33 run effect give @s jump_boost 33 0 true
execute if score random_count mm_data matches 34 run effect give @s jump_boost 34 0 true
execute if score random_count mm_data matches 35 run effect give @s jump_boost 35 0 true
execute if score random_count mm_data matches 36 run effect give @s jump_boost 36 0 true
execute if score random_count mm_data matches 37 run effect give @s jump_boost 37 0 true
execute if score random_count mm_data matches 38 run effect give @s jump_boost 38 0 true
execute if score random_count mm_data matches 39 run effect give @s jump_boost 39 0 true
execute if score random_count mm_data matches 40 run effect give @s jump_boost 40 0 true