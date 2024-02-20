execute as @s run tellraw @s {"text":"你将会得到什么呢?","color":"green"}

#坏角色
execute if score game_mode mm_main matches 0 run execute as @s[tag=mm_murderer] run loot give @s loot mm:church_common
execute if score game_mode mm_main matches 1 run execute as @s[tag=mm_murderer] run loot give @s loot mm:church_common
execute if score game_mode mm_main matches 2 run execute as @s[tag=mm_infected] run loot give @s loot mm:church_common
execute if score game_mode mm_main matches 3 run execute as @s[tag=mm_outlaw] run loot give @s loot mm:church_common
execute if score game_mode mm_main matches 4 run execute as @s[tag=mm_murderer] run loot give @s loot mm:church_common
execute if score game_mode mm_main matches 5 run execute as @s[tag=mm_murderer] run loot give @s loot mm:church_common
execute if score game_mode mm_main matches 7 run execute as @s[tag=!mm_survivor] run loot give @s loot mm:church_infected
execute if score game_mode mm_main matches 8 run execute as @s[tag=mm_murderer] run loot give @s loot mm:church_common


#好角色
execute if score game_mode mm_main matches 0 run execute as @s[tag=!mm_murderer] run loot give @s loot mm:church_mm
execute if score game_mode mm_main matches 1 run execute as @s[tag=!mm_murderer] run loot give @s loot mm:church_mm
execute if score game_mode mm_main matches 2 run execute as @s[tag=!mm_infected] run loot give @s loot mm:church_uninfected
execute if score game_mode mm_main matches 3 run execute as @s[tag=!mm_outlaw] run loot give @s loot mm:church_common
execute if score game_mode mm_main matches 4 run execute as @s[tag=!mm_murderer] run loot give @s loot mm:church_mm
execute if score game_mode mm_main matches 5 run execute as @s[tag=!mm_murderer] run loot give @s loot mm:church_mm
execute if score game_mode mm_main matches 6 run execute as @s[tag=mm_survivor] run loot give @s loot mm:church_common
execute if score game_mode mm_main matches 7 run execute as @s[tag=mm_survivor] run loot give @s loot mm:church_uninfected
execute if score game_mode mm_main matches 8 run execute as @s[tag=!mm_murderer] run loot give @s loot mm:church_mm