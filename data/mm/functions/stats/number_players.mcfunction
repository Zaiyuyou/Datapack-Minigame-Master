#给随机玩家编号
scoreboard players add number_players mm_main 1
scoreboard players operation @a[limit=1,sort=random,scores={mm_stats_id=0}] mm_stats_id = number_players mm_main


#递归
execute if entity @a[scores={mm_stats_id=0}] run function mm:stats/number_players