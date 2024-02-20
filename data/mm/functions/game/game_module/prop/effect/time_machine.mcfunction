execute as @s run scoreboard players set random_count_max mm_data 31
execute as @s run function mm:game/game_module/random_count
execute as @s run scoreboard players operation random_count mm_data -= 15 mm_main

execute as @s run scoreboard players operation time_machine mm_data = random_count mm_data
execute as @s if score time_machine mm_data matches ..-1 run scoreboard players operation time_machine mm_data *= -1 mm_main

execute as @s if score random_count mm_data matches 0.. run tellraw @a [{"text":"一位玩家激活了","color":"green"},{"text":"时间机器","color":"blue","bold":"true"},{"text":",游戏时间增加了","color":"green"},{"score":{"objective":"mm_data","name":"time_machine"},"color":"green"},{"text":"秒!","color":"green"}]
execute as @s if score random_count mm_data matches ..-1 run tellraw @a [{"text":"一位玩家激活了","color":"green"},{"text":"时间机器","color":"blue","bold":"true"},{"text":",游戏时间减少了","color":"green"},{"score":{"objective":"mm_data","name":"time_machine"},"color":"green"},{"text":"秒!","color":"green"}]

execute if score game_second mm_main < get_weapon_0 mm_data as @s run tag @s add mm_changed_time

execute as @s[tag=mm_changed_time] run scoreboard players operation game_second mm_main += random_count mm_data
execute as @s[tag=mm_changed_time] if score game_second mm_main matches ..0 run scoreboard players set game_second mm_main 0
execute as @s[tag=mm_changed_time] if score game_second mm_main > get_weapon_0 mm_data run scoreboard players operation game_second mm_main = get_weapon_0 mm_data
execute as @s[tag=mm_changed_time] if score game_second mm_main = get_weapon_0 mm_data run scoreboard players operation game_second mm_main -= 1 mm_main

execute as @s[tag=mm_changed_time] run tag @s remove mm_changed_time