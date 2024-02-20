#数据运算
function mm:scoreboards/calculate_data


#重置标签
execute if score rank_left mm_data matches 1 run tag @a[tag=!mm_murderer,tag=!mm_detective,tag=!mm_ranked] add mm_highest_murderer_chance
execute if score rank_left mm_data matches 1 run tag @a[tag=!mm_murderer,tag=!mm_detective,tag=!mm_ranked] add mm_murderer
execute if score rank_left mm_data matches 0 run tag @a remove mm_ranked


#查找拥有最高杀手权重的玩家
execute if score rank_left mm_data matches 2.. if score murderer_real_left mm_data < murderer_count mm_settings as @a[tag=!mm_murderer,tag=!mm_detective,tag=!mm_ranked] run scoreboard players operation @s mm_top_1 = @s mm_m_chance_d
execute if score rank_left mm_data matches 2.. if score murderer_real_left mm_data < murderer_count mm_settings as @a[tag=!mm_murderer,tag=!mm_detective,tag=!mm_ranked] run scoreboard players operation @s mm_top_1 > @a[tag=!mm_murderer,tag=!mm_detective,tag=!mm_ranked] mm_top_1
execute if score rank_left mm_data matches 2.. if score murderer_real_left mm_data < murderer_count mm_settings as @a[tag=!mm_murderer,tag=!mm_detective,tag=!mm_ranked] run scoreboard players operation @s mm_top_1 -= @s mm_m_chance_d
execute if score rank_left mm_data matches 2.. if score murderer_real_left mm_data < murderer_count mm_settings as @a[limit=1,sort=random,scores={mm_top_1=0}] run tag @s add mm_highest_murderer_chance

##几率大于10%按几率处理
execute if score rank_left mm_data matches 2.. as @a[tag=mm_highest_murderer_chance] if score @s mm_m_chance_d matches 11.. run scoreboard players set random_count_max mm_data 100
execute if score rank_left mm_data matches 2.. as @a[tag=mm_highest_murderer_chance] if score @s mm_m_chance_d matches 11.. run function mm:game/game_module/random_count
execute if score rank_left mm_data matches 2.. as @a[tag=mm_highest_murderer_chance] if score @s mm_m_chance_d matches 11.. run scoreboard players operation random_count mm_data += 1 mm_main
execute if score rank_left mm_data matches 2.. as @a[tag=mm_highest_murderer_chance] if score @s mm_m_chance_d matches 11.. if score @s mm_m_chance_d >= random_count mm_data run tag @s add mm_murderer

##几率不大于10%按10%几率处理
execute if score rank_left mm_data matches 2.. as @a[tag=mm_highest_murderer_chance] if score @s mm_m_chance_d matches ..10 run scoreboard players set random_count_max mm_data 10
execute if score rank_left mm_data matches 2.. as @a[tag=mm_highest_murderer_chance] if score @s mm_m_chance_d matches ..10 run function mm:game/game_module/random_count
execute if score rank_left mm_data matches 2.. as @a[tag=mm_highest_murderer_chance] if score @s mm_m_chance_d matches ..10 if score random_count mm_data matches 0 run tag @s add mm_murderer

execute as @a[tag=mm_highest_murderer_chance,tag=mm_murderer] run scoreboard players reset @s mm_top_1
execute as @a[tag=mm_highest_murderer_chance] run tag @s add mm_ranked
execute as @a[tag=mm_highest_murderer_chance] run tag @s remove mm_highest_murderer_chance


#数据运算
function mm:scoreboards/calculate_data


#递归
execute if score murderer_real_left mm_data < murderer_count mm_settings run function mm:game/game_module/classic/distribute_special_role_weight_m