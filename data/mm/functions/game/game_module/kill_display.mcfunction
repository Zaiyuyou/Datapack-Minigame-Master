#击杀
execute as @s[scores={mm_death_type=-1}] run tellraw @s {"text":"杀死一位玩家!","color":"gold"}
execute as @s[scores={mm_death_type=-1}] run scoreboard players add @s mm_kill_count 1
execute as @s[scores={mm_death_type=-1}] run scoreboard players add @s mm_stats_2 1
execute as @s[scores={mm_death_type=-1}] run scoreboard players add @s mm_stats_3 1
execute as @s[scores={mm_death_type=-1}] run scoreboard players add @s mm_stats_4 1

execute as @s[scores={mm_death_type=-2}] run tellraw @s {"text":"杀死一名杀手!","color":"gold"}
execute as @s[scores={mm_death_type=-2}] run tag @s add mm_hero
execute as @s[scores={mm_death_type=-2}] run scoreboard players add @s mm_stats_2 1
execute as @s[scores={mm_death_type=-2}] run scoreboard players add @s mm_stats_12 1

execute as @s[scores={mm_death_type=-3}] run tellraw @s {"text":"感染一位玩家!","color":"gold"}
execute as @s[scores={mm_death_type=-3}] run scoreboard players add @s mm_kill_count 1
execute as @s[scores={mm_death_type=-3}] run scoreboard players add @s mm_stats_10 1

execute as @s[scores={mm_death_type=-4}] at @s run playsound minecraft:entity.zombie.death player @s
execute as @s[scores={mm_death_type=-4}] run scoreboard players add @s mm_kill_count_s 1
execute as @s[scores={mm_death_type=-4}] run scoreboard players add @s mm_stats_11 1

execute as @s[scores={mm_death_type=-5}] run scoreboard players add @s mm_kill_count 1

execute as @s[scores={mm_death_type=-6}] run tellraw @s {"text":"杀死一只恶灵!","color":"gold"}
execute as @s[scores={mm_death_type=-6}] run scoreboard players add @s mm_kill_count 1
execute as @s[scores={mm_death_type=-6}] run scoreboard players add @s mm_stats_11 1
execute as @s[scores={mm_death_type=-6}] at @s run playsound minecraft:entity.ghast.hurt player @s

execute as @s[scores={mm_death_type=-7}] run tellraw @s {"text":"杀死一只玩家恶灵! 得到一次复活机会!","color":"gold"}
execute as @s[scores={mm_death_type=-7}] run scoreboard players add @s mm_kill_count 1
execute as @s[scores={mm_death_type=-7}] at @s run playsound minecraft:entity.ghast.hurt player @s
execute as @s[scores={mm_death_type=-7}] run scoreboard players add @s mm_life 1
execute as @s[scores={mm_death_type=-7}] run tellraw @s [{"text":"你现在有","color":"yellow"},{"score":{"objective":"mm_life","name":"@s"},"color":"green"},{"text":"次复活机会!","color":"yellow"}]