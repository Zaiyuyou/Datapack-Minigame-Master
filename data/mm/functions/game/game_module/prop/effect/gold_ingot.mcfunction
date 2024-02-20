execute as @s run scoreboard players set random_count_max mm_data 5
execute as @s run function mm:game/game_module/random_count

execute as @s run tellraw @s [{"text":"你获得了","color":"green"},{"score":{"objective":"mm_data","name":"random_count"},"color":"green"},{"text":"块金锭!","color":"green"}]
execute as @s run scoreboard players operation @s mm_gold_ingot += random_count mm_data
execute as @s[scores={mm_gold_ingot=65..}] run scoreboard players set @s mm_gold_ingot 64