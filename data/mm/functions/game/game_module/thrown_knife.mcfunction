#飞行
execute as @e[tag=mm_thrown_knife] at @s positioned ^0.2 ^ ^ unless block ~ ~1.3 ~ #mm:thrown_knife_permeable run kill @s
execute as @e[tag=mm_thrown_knife] at @s run tp ^ ^ ^0.2

#击中平民
execute as @a[tag=!mm_dead,tag=!mm_will_respawn,tag=mm_innocent] unless score @s mm_death_type matches 1.. at @s if entity @e[tag=mm_thrown_knife,dy=0] run tag @s add mm_be_hit_by_thrown_knife
execute if score murderer_friendly_fire mm_settings matches 1..2 as @a[tag=!mm_dead,tag=!mm_will_respawn,tag=mm_murderer] unless score @s mm_death_type matches 1.. at @s if entity @e[tag=mm_thrown_knife,dy=0] run tag @s add mm_be_hit_by_thrown_knife

execute as @a[tag=mm_innocent,tag=mm_be_hit_by_thrown_knife] run scoreboard players set @s mm_death_type 5
execute as @a[tag=mm_innocent,tag=mm_be_hit_by_thrown_knife,scores={mm_life=0}] at @s as @a[tag=mm_murderer] if score @e[tag=mm_thrown_knife,dy=0,limit=1,sort=nearest] mm_players_id = @s mm_players_id run scoreboard players add @s mm_kill_count 1
execute as @a[tag=mm_innocent,tag=mm_be_hit_by_thrown_knife] at @s as @a[tag=mm_murderer] if score @e[tag=mm_thrown_knife,dy=0,limit=1,sort=nearest] mm_players_id = @s mm_players_id run scoreboard players set @s mm_death_type -8
execute as @a[tag=mm_innocent,tag=mm_be_hit_by_thrown_knife,scores={mm_life=0}] at @s as @a[tag=mm_murderer] if score @e[tag=mm_thrown_knife,dy=0,limit=1,sort=nearest] mm_players_id = @s mm_players_id run tellraw @s {"text":"杀死一位玩家!","color":"gold"}
execute as @a[tag=mm_innocent,tag=mm_be_hit_by_thrown_knife,scores={mm_life=0}] at @s as @a[tag=mm_murderer] if score @e[tag=mm_thrown_knife,dy=0,limit=1,sort=nearest] mm_players_id = @s mm_players_id run scoreboard players add @s mm_stats_2 1
execute as @a[tag=mm_innocent,tag=mm_be_hit_by_thrown_knife,scores={mm_life=0}] at @s as @a[tag=mm_murderer] if score @e[tag=mm_thrown_knife,dy=0,limit=1,sort=nearest] mm_players_id = @s mm_players_id run scoreboard players add @s mm_stats_3 1
execute as @a[tag=mm_innocent,tag=mm_be_hit_by_thrown_knife,scores={mm_life=0}] at @s as @a[tag=mm_murderer] if score @e[tag=mm_thrown_knife,dy=0,limit=1,sort=nearest] mm_players_id = @s mm_players_id run scoreboard players add @s mm_stats_5 1

#击中杀手同伙
execute as @a[tag=mm_murderer,tag=mm_be_hit_by_thrown_knife] at @s unless score @e[tag=mm_thrown_knife,dy=0,limit=1,sort=nearest] mm_players_id = @s mm_players_id run tag @s add mm_be_hit_by_fellow_murderer

##友伤启用
execute if score murderer_friendly_fire mm_settings matches 1 as @a[tag=mm_murderer,tag=mm_be_hit_by_thrown_knife,tag=mm_be_hit_by_fellow_murderer] run scoreboard players set @s mm_death_type 5
execute if score murderer_friendly_fire mm_settings matches 1 as @a[tag=mm_murderer,tag=mm_be_hit_by_thrown_knife,tag=mm_be_hit_by_fellow_murderer] at @s as @a[tag=mm_murderer] if score @e[tag=mm_thrown_knife,dy=0,limit=1,sort=nearest] mm_players_id = @s mm_players_id run scoreboard players set @s mm_death_type 107

##击晕启用
execute if score murderer_friendly_fire mm_settings matches 2 as @a[tag=mm_murderer,tag=mm_be_hit_by_thrown_knife,tag=mm_be_hit_by_fellow_murderer] at @s as @a[tag=mm_murderer] if score @e[tag=mm_thrown_knife,dy=0,limit=1,sort=nearest] mm_players_id = @s mm_players_id run tag @s[scores={mm_stun_tick=-1}] add mm_be_stunned

execute as @a[tag=mm_be_hit_by_thrown_knife] run tag @s remove mm_be_hit_by_fellow_murderer

#击中幸存者
execute as @a[tag=!mm_dead,tag=!mm_will_respawn,tag=mm_survivor] unless score @s mm_death_type matches 1.. at @s if entity @e[tag=mm_thrown_knife,dy=0] run tag @s add mm_be_hit_by_thrown_knife

execute as @a[tag=mm_survivor,tag=mm_be_hit_by_thrown_knife] run scoreboard players set @s mm_death_type 7
execute as @a[tag=mm_survivor,tag=mm_be_hit_by_thrown_knife,scores={mm_life=0}] at @s as @a[tag=mm_alpha] if score @e[tag=mm_thrown_knife,dy=0,limit=1,sort=nearest] mm_players_id = @s mm_players_id run scoreboard players add @s mm_kill_count 1
execute as @a[tag=mm_survivor,tag=mm_be_hit_by_thrown_knife] at @s as @a[tag=mm_alpha] if score @e[tag=mm_thrown_knife,dy=0,limit=1,sort=nearest] mm_players_id = @s mm_players_id run scoreboard players set @s mm_death_type -8
execute as @a[tag=mm_survivor,tag=mm_be_hit_by_thrown_knife,scores={mm_life=0}] at @s as @a[tag=mm_alpha] if score @e[tag=mm_thrown_knife,dy=0,limit=1,sort=nearest] mm_players_id = @s mm_players_id run tellraw @s {"text":"感染一位玩家!","color":"gold"}
execute as @a[tag=mm_survivor,tag=mm_be_hit_by_thrown_knife,scores={mm_life=0}] at @s as @a[tag=mm_alpha] if score @e[tag=mm_thrown_knife,dy=0,limit=1,sort=nearest] mm_players_id = @s mm_players_id run scoreboard players add @s mm_stats_10 1
execute as @a[tag=mm_survivor,tag=mm_be_hit_by_thrown_knife,scores={mm_life=0}] at @s as @a[tag=mm_infected] if score @e[tag=mm_thrown_knife,dy=0,limit=1,sort=nearest] mm_players_id = @s mm_players_id run scoreboard players add @s mm_kill_count 1
execute as @a[tag=mm_survivor,tag=mm_be_hit_by_thrown_knife] at @s as @a[tag=mm_infected] if score @e[tag=mm_thrown_knife,dy=0,limit=1,sort=nearest] mm_players_id = @s mm_players_id run scoreboard players set @s mm_death_type -8
execute as @a[tag=mm_survivor,tag=mm_be_hit_by_thrown_knife,scores={mm_life=0}] at @s as @a[tag=mm_infected] if score @e[tag=mm_thrown_knife,dy=0,limit=1,sort=nearest] mm_players_id = @s mm_players_id run tellraw @s {"text":"感染一位玩家!","color":"gold"}
execute as @a[tag=mm_survivor,tag=mm_be_hit_by_thrown_knife,scores={mm_life=0}] at @s as @a[tag=mm_infected] if score @e[tag=mm_thrown_knife,dy=0,limit=1,sort=nearest] mm_players_id = @s mm_players_id run scoreboard players add @s mm_stats_10 1

execute as @a[tag=mm_be_hit_by_thrown_knife] run tag @s remove mm_be_hit_by_thrown_knife