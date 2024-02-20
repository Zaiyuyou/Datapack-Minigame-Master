execute as @s run scoreboard players set random_count_max mm_data 10
execute as @s run function mm:game/game_module/random_count

execute if score random_count mm_data matches 0 as @s run function mm:game/game_module/prop/random_effect/speed
execute if score random_count mm_data matches 1 as @s run function mm:game/game_module/prop/random_effect/jump_boost
execute if score random_count mm_data matches 2 as @s run function mm:game/game_module/prop/random_effect/invisibility
execute if score random_count mm_data matches 3 as @s run function mm:game/game_module/prop/random_effect/blindness
execute if score random_count mm_data matches 4 as @s run function mm:game/game_module/prop/random_effect/slowness
execute if score random_count mm_data matches 5 as @s run function mm:game/game_module/prop/random_effect/levitation
execute if score random_count mm_data matches 6 as @s run function mm:game/game_module/prop/random_effect/glowing
execute if score random_count mm_data matches 7 as @s run function mm:game/game_module/prop/random_effect/poison
execute if score random_count mm_data matches 8 as @s run function mm:game/game_module/prop/random_effect/nausea
execute if score random_count mm_data matches 9 as @s run function mm:game/game_module/prop/random_effect/night_vision