#生成随机数
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1,Tags:["mm_random_count"]}
execute store result score random_count mm_data run data get entity @e[tag=mm_random_count,limit=1] UUID[0]
kill @e[tag=mm_random_count]
scoreboard players operation random_count mm_data %= random_count_max mm_data