#在线玩家
scoreboard players set online_player mm_data 0
execute as @a run scoreboard players add online_player mm_data 1

scoreboard players operation online_player_half mm_data = online_player mm_data
scoreboard players operation online_player_half mm_data /= 2 mm_main

#成为杀手概率
execute if score special_role_random mm_settings matches 0 run scoreboard players set total_m_chance mm_data 0
execute if score special_role_random mm_settings matches 0 run scoreboard players operation total_m_chance mm_data += @a mm_m_chance
execute if score special_role_random mm_settings matches 0 as @a run scoreboard players operation @s mm_m_chance_d = @s mm_m_chance
execute if score special_role_random mm_settings matches 0 as @a run scoreboard players operation @s mm_m_chance_d *= 100 mm_main
execute if score special_role_random mm_settings matches 0 as @a run scoreboard players operation @s mm_m_chance_d /= total_m_chance mm_data

execute if score special_role_random mm_settings matches 1 as @a run scoreboard players set @s mm_m_chance_d 100
execute if score special_role_random mm_settings matches 1 as @a run scoreboard players operation @s mm_m_chance_d /= online_player mm_data

#成为侦探概率
execute if score special_role_random mm_settings matches 0 run scoreboard players set total_d_chance mm_data 0
execute if score special_role_random mm_settings matches 0 run scoreboard players operation total_d_chance mm_data += @a mm_d_chance
execute if score special_role_random mm_settings matches 0 as @a run scoreboard players operation @s mm_d_chance_d = @s mm_d_chance
execute if score special_role_random mm_settings matches 0 as @a run scoreboard players operation @s mm_d_chance_d *= 100 mm_main
execute if score special_role_random mm_settings matches 0 as @a run scoreboard players operation @s mm_d_chance_d /= total_d_chance mm_data

execute if score special_role_random mm_settings matches 1 as @a run scoreboard players set @s mm_d_chance_d 100
execute if score special_role_random mm_settings matches 1 as @a run scoreboard players operation @s mm_d_chance_d /= online_player mm_data

#成为母体概率
execute if score special_role_random mm_settings matches 0 run scoreboard players set total_a_chance mm_data 0
execute if score special_role_random mm_settings matches 0 run scoreboard players operation total_a_chance mm_data += @a mm_a_chance
execute if score special_role_random mm_settings matches 0 as @a run scoreboard players operation @s mm_a_chance_d = @s mm_a_chance
execute if score special_role_random mm_settings matches 0 as @a run scoreboard players operation @s mm_a_chance_d *= 100 mm_main
execute if score special_role_random mm_settings matches 0 as @a run scoreboard players operation @s mm_a_chance_d /= total_a_chance mm_data

execute if score special_role_random mm_settings matches 1 as @a run scoreboard players set @s mm_a_chance_d 100
execute if score special_role_random mm_settings matches 1 as @a run scoreboard players operation @s mm_a_chance_d /= online_player mm_data

#剩余杀手
scoreboard players set murderer_left mm_data 0
execute as @a[tag=mm_murderer,tag=!mm_dead] run scoreboard players add murderer_left mm_data 1

#实际剩余杀手
scoreboard players set murderer_real_left mm_data 0
execute as @a[tag=mm_murderer] run scoreboard players add murderer_real_left mm_data 1

#剩余平民
scoreboard players set innocent_left mm_data 0
execute as @a[tag=mm_innocent,tag=!mm_dead] run scoreboard players add innocent_left mm_data 1

#剩余侦探
scoreboard players set detective_left mm_data 0
execute as @a[tag=mm_detective] run scoreboard players add detective_left mm_data 1

#剩余掉落弓
scoreboard players set dropped_bow_left mm_data 0
execute as @e[tag=mm_dropped_bow] run scoreboard players add dropped_bow_left mm_data 1
##侦探+掉落弓
scoreboard players set detective_and_dropped_bow_total_left mm_data 0
scoreboard players operation detective_and_dropped_bow_total_left mm_data = detective_left mm_data
scoreboard players operation detective_and_dropped_bow_total_left mm_data += dropped_bow_left mm_data

#剩余感染者
scoreboard players set infected_left mm_data 0
execute as @a[tag=mm_infected] run scoreboard players add infected_left mm_data 1

#实际剩余感染者
scoreboard players set infected_real_left mm_data 0
execute as @a[tag=mm_infected,tag=!mm_dead] run scoreboard players add infected_real_left mm_data 1
execute as @a[tag=mm_alpha,tag=!mm_dead] run scoreboard players add infected_real_left mm_data 1

#剩余幸存者
scoreboard players set survivor_left mm_data 0
execute as @a[tag=mm_survivor,tag=!mm_dead] run scoreboard players add survivor_left mm_data 1

#剩余逃犯
scoreboard players set outlaw_left mm_data 0
execute as @a[tag=mm_outlaw] run scoreboard players add outlaw_left mm_data 1

#剩余警长
scoreboard players set sheriff_left mm_data 0
execute as @a[tag=mm_sheriff] run scoreboard players add sheriff_left mm_data 1

#逃犯击杀数
scoreboard players set outlaw_kill_count mm_data 0
scoreboard players operation outlaw_kill_count mm_data += @a[tag=mm_outlaw] mm_kill_count

#警长击杀数
scoreboard players set sheriff_kill_count mm_data 0
scoreboard players operation sheriff_kill_count mm_data += @a[tag=mm_sheriff] mm_kill_count

#剩余人类
scoreboard players set human_left mm_data 0
execute as @a[tag=mm_human] run scoreboard players add human_left mm_data 1

#剩余机器人
scoreboard players set robot_left mm_data 0
execute as @a[tag=mm_robot] run scoreboard players add robot_left mm_data 1

#总玩家出生点/金锭生成点数
scoreboard players set players_spawn_left mm_data 0
execute as @e[tag=mm_spawn] run scoreboard players add players_spawn_left mm_data 1

#剩余恶灵
scoreboard players set ghost_left mm_data 0
execute as @e[tag=mm_ghost] run scoreboard players add ghost_left mm_data 1

#剩余无排行标签玩家
scoreboard players set rank_left mm_data 0
execute as @a[tag=!mm_murderer,tag=!mm_detective,tag=!mm_alpha,tag=!mm_ranked] run scoreboard players add rank_left mm_data 1

#冷却条(%)
##90
scoreboard players operation cooldown_normal_tick_90 mm_data = cooldown_normal_second mm_settings
scoreboard players operation cooldown_normal_tick_90 mm_data *= 20 mm_main
scoreboard players operation cooldown_normal_tick_90 mm_data += cooldown_normal_tick mm_settings
scoreboard players operation cooldown_normal_tick_90 mm_data *= 9 mm_main
scoreboard players operation cooldown_normal_tick_90 mm_data /= 10 mm_main
##80
scoreboard players operation cooldown_normal_tick_80 mm_data = cooldown_normal_second mm_settings
scoreboard players operation cooldown_normal_tick_80 mm_data *= 20 mm_main
scoreboard players operation cooldown_normal_tick_80 mm_data += cooldown_normal_tick mm_settings
scoreboard players operation cooldown_normal_tick_80 mm_data *= 8 mm_main
scoreboard players operation cooldown_normal_tick_80 mm_data /= 10 mm_main
##70
scoreboard players operation cooldown_normal_tick_70 mm_data = cooldown_normal_second mm_settings
scoreboard players operation cooldown_normal_tick_70 mm_data *= 20 mm_main
scoreboard players operation cooldown_normal_tick_70 mm_data += cooldown_normal_tick mm_settings
scoreboard players operation cooldown_normal_tick_70 mm_data *= 7 mm_main
scoreboard players operation cooldown_normal_tick_70 mm_data /= 10 mm_main
##60
scoreboard players operation cooldown_normal_tick_60 mm_data = cooldown_normal_second mm_settings
scoreboard players operation cooldown_normal_tick_60 mm_data *= 20 mm_main
scoreboard players operation cooldown_normal_tick_60 mm_data += cooldown_normal_tick mm_settings
scoreboard players operation cooldown_normal_tick_60 mm_data *= 6 mm_main
scoreboard players operation cooldown_normal_tick_60 mm_data /= 10 mm_main
##50
scoreboard players operation cooldown_normal_tick_50 mm_data = cooldown_normal_second mm_settings
scoreboard players operation cooldown_normal_tick_50 mm_data *= 20 mm_main
scoreboard players operation cooldown_normal_tick_50 mm_data += cooldown_normal_tick mm_settings
scoreboard players operation cooldown_normal_tick_50 mm_data *= 5 mm_main
scoreboard players operation cooldown_normal_tick_50 mm_data /= 10 mm_main
##40
scoreboard players operation cooldown_normal_tick_40 mm_data = cooldown_normal_second mm_settings
scoreboard players operation cooldown_normal_tick_40 mm_data *= 20 mm_main
scoreboard players operation cooldown_normal_tick_40 mm_data += cooldown_normal_tick mm_settings
scoreboard players operation cooldown_normal_tick_40 mm_data *= 4 mm_main
scoreboard players operation cooldown_normal_tick_40 mm_data /= 10 mm_main
##30
scoreboard players operation cooldown_normal_tick_30 mm_data = cooldown_normal_second mm_settings
scoreboard players operation cooldown_normal_tick_30 mm_data *= 20 mm_main
scoreboard players operation cooldown_normal_tick_30 mm_data += cooldown_normal_tick mm_settings
scoreboard players operation cooldown_normal_tick_30 mm_data *= 3 mm_main
scoreboard players operation cooldown_normal_tick_30 mm_data /= 10 mm_main
##20
scoreboard players operation cooldown_normal_tick_20 mm_data = cooldown_normal_second mm_settings
scoreboard players operation cooldown_normal_tick_20 mm_data *= 20 mm_main
scoreboard players operation cooldown_normal_tick_20 mm_data += cooldown_normal_tick mm_settings
scoreboard players operation cooldown_normal_tick_20 mm_data *= 2 mm_main
scoreboard players operation cooldown_normal_tick_20 mm_data /= 10 mm_main
##10
scoreboard players operation cooldown_normal_tick_10 mm_data = cooldown_normal_second mm_settings
scoreboard players operation cooldown_normal_tick_10 mm_data *= 20 mm_main
scoreboard players operation cooldown_normal_tick_10 mm_data += cooldown_normal_tick mm_settings
scoreboard players operation cooldown_normal_tick_10 mm_data /= 10 mm_main

#蓄力条(%)
##90
scoreboard players operation cooldown_throw_tick_90 mm_data = cooldown_throw_second mm_settings
scoreboard players operation cooldown_throw_tick_90 mm_data *= 20 mm_main
scoreboard players operation cooldown_throw_tick_90 mm_data += cooldown_throw_tick mm_settings
scoreboard players operation cooldown_throw_tick_90 mm_data *= 9 mm_main
scoreboard players operation cooldown_throw_tick_90 mm_data /= 10 mm_main
##80
scoreboard players operation cooldown_throw_tick_80 mm_data = cooldown_throw_second mm_settings
scoreboard players operation cooldown_throw_tick_80 mm_data *= 20 mm_main
scoreboard players operation cooldown_throw_tick_80 mm_data += cooldown_throw_tick mm_settings
scoreboard players operation cooldown_throw_tick_80 mm_data *= 8 mm_main
scoreboard players operation cooldown_throw_tick_80 mm_data /= 10 mm_main
##70
scoreboard players operation cooldown_throw_tick_70 mm_data = cooldown_throw_second mm_settings
scoreboard players operation cooldown_throw_tick_70 mm_data *= 20 mm_main
scoreboard players operation cooldown_throw_tick_70 mm_data += cooldown_throw_tick mm_settings
scoreboard players operation cooldown_throw_tick_70 mm_data *= 7 mm_main
scoreboard players operation cooldown_throw_tick_70 mm_data /= 10 mm_main
##60
scoreboard players operation cooldown_throw_tick_60 mm_data = cooldown_throw_second mm_settings
scoreboard players operation cooldown_throw_tick_60 mm_data *= 20 mm_main
scoreboard players operation cooldown_throw_tick_60 mm_data += cooldown_throw_tick mm_settings
scoreboard players operation cooldown_throw_tick_60 mm_data *= 6 mm_main
scoreboard players operation cooldown_throw_tick_60 mm_data /= 10 mm_main
##50
scoreboard players operation cooldown_throw_tick_50 mm_data = cooldown_throw_second mm_settings
scoreboard players operation cooldown_throw_tick_50 mm_data *= 20 mm_main
scoreboard players operation cooldown_throw_tick_50 mm_data += cooldown_throw_tick mm_settings
scoreboard players operation cooldown_throw_tick_50 mm_data *= 5 mm_main
scoreboard players operation cooldown_throw_tick_50 mm_data /= 10 mm_main
##40
scoreboard players operation cooldown_throw_tick_40 mm_data = cooldown_throw_second mm_settings
scoreboard players operation cooldown_throw_tick_40 mm_data *= 20 mm_main
scoreboard players operation cooldown_throw_tick_40 mm_data += cooldown_throw_tick mm_settings
scoreboard players operation cooldown_throw_tick_40 mm_data *= 4 mm_main
scoreboard players operation cooldown_throw_tick_40 mm_data /= 10 mm_main
##30
scoreboard players operation cooldown_throw_tick_30 mm_data = cooldown_throw_second mm_settings
scoreboard players operation cooldown_throw_tick_30 mm_data *= 20 mm_main
scoreboard players operation cooldown_throw_tick_30 mm_data += cooldown_throw_tick mm_settings
scoreboard players operation cooldown_throw_tick_30 mm_data *= 3 mm_main
scoreboard players operation cooldown_throw_tick_30 mm_data /= 10 mm_main
##20
scoreboard players operation cooldown_throw_tick_20 mm_data = cooldown_throw_second mm_settings
scoreboard players operation cooldown_throw_tick_20 mm_data *= 20 mm_main
scoreboard players operation cooldown_throw_tick_20 mm_data += cooldown_throw_tick mm_settings
scoreboard players operation cooldown_throw_tick_20 mm_data *= 2 mm_main
scoreboard players operation cooldown_throw_tick_20 mm_data /= 10 mm_main
##10
scoreboard players operation cooldown_throw_tick_10 mm_data = cooldown_throw_second mm_settings
scoreboard players operation cooldown_throw_tick_10 mm_data *= 20 mm_main
scoreboard players operation cooldown_throw_tick_10 mm_data += cooldown_throw_tick mm_settings
scoreboard players operation cooldown_throw_tick_10 mm_data /= 10 mm_main

#感染模式冷却条(%)
##90
scoreboard players operation infection_cooldown_normal_tick_90 mm_data = infection_cooldown_normal_second mm_settings
scoreboard players operation infection_cooldown_normal_tick_90 mm_data *= 20 mm_main
scoreboard players operation infection_cooldown_normal_tick_90 mm_data += infection_cooldown_normal_tick mm_settings
scoreboard players operation infection_cooldown_normal_tick_90 mm_data *= 9 mm_main
scoreboard players operation infection_cooldown_normal_tick_90 mm_data /= 10 mm_main
##80
scoreboard players operation infection_cooldown_normal_tick_80 mm_data = infection_cooldown_normal_second mm_settings
scoreboard players operation infection_cooldown_normal_tick_80 mm_data *= 20 mm_main
scoreboard players operation infection_cooldown_normal_tick_80 mm_data += infection_cooldown_normal_tick mm_settings
scoreboard players operation infection_cooldown_normal_tick_80 mm_data *= 8 mm_main
scoreboard players operation infection_cooldown_normal_tick_80 mm_data /= 10 mm_main
##70
scoreboard players operation infection_cooldown_normal_tick_70 mm_data = infection_cooldown_normal_second mm_settings
scoreboard players operation infection_cooldown_normal_tick_70 mm_data *= 20 mm_main
scoreboard players operation infection_cooldown_normal_tick_70 mm_data += infection_cooldown_normal_tick mm_settings
scoreboard players operation infection_cooldown_normal_tick_70 mm_data *= 7 mm_main
scoreboard players operation infection_cooldown_normal_tick_70 mm_data /= 10 mm_main
##60
scoreboard players operation infection_cooldown_normal_tick_60 mm_data = infection_cooldown_normal_second mm_settings
scoreboard players operation infection_cooldown_normal_tick_60 mm_data *= 20 mm_main
scoreboard players operation infection_cooldown_normal_tick_60 mm_data += infection_cooldown_normal_tick mm_settings
scoreboard players operation infection_cooldown_normal_tick_60 mm_data *= 6 mm_main
scoreboard players operation infection_cooldown_normal_tick_60 mm_data /= 10 mm_main
##50
scoreboard players operation infection_cooldown_normal_tick_50 mm_data = infection_cooldown_normal_second mm_settings
scoreboard players operation infection_cooldown_normal_tick_50 mm_data *= 20 mm_main
scoreboard players operation infection_cooldown_normal_tick_50 mm_data += infection_cooldown_normal_tick mm_settings
scoreboard players operation infection_cooldown_normal_tick_50 mm_data *= 5 mm_main
scoreboard players operation infection_cooldown_normal_tick_50 mm_data /= 10 mm_main
##40
scoreboard players operation infection_cooldown_normal_tick_40 mm_data = infection_cooldown_normal_second mm_settings
scoreboard players operation infection_cooldown_normal_tick_40 mm_data *= 20 mm_main
scoreboard players operation infection_cooldown_normal_tick_40 mm_data += infection_cooldown_normal_tick mm_settings
scoreboard players operation infection_cooldown_normal_tick_40 mm_data *= 4 mm_main
scoreboard players operation infection_cooldown_normal_tick_40 mm_data /= 10 mm_main
##30
scoreboard players operation infection_cooldown_normal_tick_30 mm_data = infection_cooldown_normal_second mm_settings
scoreboard players operation infection_cooldown_normal_tick_30 mm_data *= 20 mm_main
scoreboard players operation infection_cooldown_normal_tick_30 mm_data += infection_cooldown_normal_tick mm_settings
scoreboard players operation infection_cooldown_normal_tick_30 mm_data *= 3 mm_main
scoreboard players operation infection_cooldown_normal_tick_30 mm_data /= 10 mm_main
##20
scoreboard players operation infection_cooldown_normal_tick_20 mm_data = infection_cooldown_normal_second mm_settings
scoreboard players operation infection_cooldown_normal_tick_20 mm_data *= 20 mm_main
scoreboard players operation infection_cooldown_normal_tick_20 mm_data += infection_cooldown_normal_tick mm_settings
scoreboard players operation infection_cooldown_normal_tick_20 mm_data *= 2 mm_main
scoreboard players operation infection_cooldown_normal_tick_20 mm_data /= 10 mm_main
##10
scoreboard players operation infection_cooldown_normal_tick_10 mm_data = infection_cooldown_normal_second mm_settings
scoreboard players operation infection_cooldown_normal_tick_10 mm_data *= 20 mm_main
scoreboard players operation infection_cooldown_normal_tick_10 mm_data += infection_cooldown_normal_tick mm_settings
scoreboard players operation infection_cooldown_normal_tick_10 mm_data /= 10 mm_main

#感染模式蓄力条(%)
##90
scoreboard players operation infection_cooldown_throw_tick_90 mm_data = infection_cooldown_throw_second mm_settings
scoreboard players operation infection_cooldown_throw_tick_90 mm_data *= 20 mm_main
scoreboard players operation infection_cooldown_throw_tick_90 mm_data += infection_cooldown_throw_tick mm_settings
scoreboard players operation infection_cooldown_throw_tick_90 mm_data *= 9 mm_main
scoreboard players operation infection_cooldown_throw_tick_90 mm_data /= 10 mm_main
##80
scoreboard players operation infection_cooldown_throw_tick_80 mm_data = infection_cooldown_throw_second mm_settings
scoreboard players operation infection_cooldown_throw_tick_80 mm_data *= 20 mm_main
scoreboard players operation infection_cooldown_throw_tick_80 mm_data += infection_cooldown_throw_tick mm_settings
scoreboard players operation infection_cooldown_throw_tick_80 mm_data *= 8 mm_main
scoreboard players operation infection_cooldown_throw_tick_80 mm_data /= 10 mm_main
##70
scoreboard players operation infection_cooldown_throw_tick_70 mm_data = infection_cooldown_throw_second mm_settings
scoreboard players operation infection_cooldown_throw_tick_70 mm_data *= 20 mm_main
scoreboard players operation infection_cooldown_throw_tick_70 mm_data += infection_cooldown_throw_tick mm_settings
scoreboard players operation infection_cooldown_throw_tick_70 mm_data *= 7 mm_main
scoreboard players operation infection_cooldown_throw_tick_70 mm_data /= 10 mm_main
##60
scoreboard players operation infection_cooldown_throw_tick_60 mm_data = infection_cooldown_throw_second mm_settings
scoreboard players operation infection_cooldown_throw_tick_60 mm_data *= 20 mm_main
scoreboard players operation infection_cooldown_throw_tick_60 mm_data += infection_cooldown_throw_tick mm_settings
scoreboard players operation infection_cooldown_throw_tick_60 mm_data *= 6 mm_main
scoreboard players operation infection_cooldown_throw_tick_60 mm_data /= 10 mm_main
##50
scoreboard players operation infection_cooldown_throw_tick_50 mm_data = infection_cooldown_throw_second mm_settings
scoreboard players operation infection_cooldown_throw_tick_50 mm_data *= 20 mm_main
scoreboard players operation infection_cooldown_throw_tick_50 mm_data += infection_cooldown_throw_tick mm_settings
scoreboard players operation infection_cooldown_throw_tick_50 mm_data *= 5 mm_main
scoreboard players operation infection_cooldown_throw_tick_50 mm_data /= 10 mm_main
##40
scoreboard players operation infection_cooldown_throw_tick_40 mm_data = infection_cooldown_throw_second mm_settings
scoreboard players operation infection_cooldown_throw_tick_40 mm_data *= 20 mm_main
scoreboard players operation infection_cooldown_throw_tick_40 mm_data += infection_cooldown_throw_tick mm_settings
scoreboard players operation infection_cooldown_throw_tick_40 mm_data *= 4 mm_main
scoreboard players operation infection_cooldown_throw_tick_40 mm_data /= 10 mm_main
##30
scoreboard players operation infection_cooldown_throw_tick_30 mm_data = infection_cooldown_throw_second mm_settings
scoreboard players operation infection_cooldown_throw_tick_30 mm_data *= 20 mm_main
scoreboard players operation infection_cooldown_throw_tick_30 mm_data += infection_cooldown_throw_tick mm_settings
scoreboard players operation infection_cooldown_throw_tick_30 mm_data *= 3 mm_main
scoreboard players operation infection_cooldown_throw_tick_30 mm_data /= 10 mm_main
##20
scoreboard players operation infection_cooldown_throw_tick_20 mm_data = infection_cooldown_throw_second mm_settings
scoreboard players operation infection_cooldown_throw_tick_20 mm_data *= 20 mm_main
scoreboard players operation infection_cooldown_throw_tick_20 mm_data += infection_cooldown_throw_tick mm_settings
scoreboard players operation infection_cooldown_throw_tick_20 mm_data *= 2 mm_main
scoreboard players operation infection_cooldown_throw_tick_20 mm_data /= 10 mm_main
##10
scoreboard players operation infection_cooldown_throw_tick_10 mm_data = infection_cooldown_throw_second mm_settings
scoreboard players operation infection_cooldown_throw_tick_10 mm_data *= 20 mm_main
scoreboard players operation infection_cooldown_throw_tick_10 mm_data += infection_cooldown_throw_tick mm_settings
scoreboard players operation infection_cooldown_throw_tick_10 mm_data /= 10 mm_main

#弓箭冷却条(%)
##90
scoreboard players operation shoot_cooldown_normal_tick_90 mm_data = shoot_cooldown_normal_second mm_settings
scoreboard players operation shoot_cooldown_normal_tick_90 mm_data *= 20 mm_main
scoreboard players operation shoot_cooldown_normal_tick_90 mm_data += shoot_cooldown_normal_tick mm_settings
scoreboard players operation shoot_cooldown_normal_tick_90 mm_data *= 9 mm_main
scoreboard players operation shoot_cooldown_normal_tick_90 mm_data /= 10 mm_main
##80
scoreboard players operation shoot_cooldown_normal_tick_80 mm_data = shoot_cooldown_normal_second mm_settings
scoreboard players operation shoot_cooldown_normal_tick_80 mm_data *= 20 mm_main
scoreboard players operation shoot_cooldown_normal_tick_80 mm_data += shoot_cooldown_normal_tick mm_settings
scoreboard players operation shoot_cooldown_normal_tick_80 mm_data *= 8 mm_main
scoreboard players operation shoot_cooldown_normal_tick_80 mm_data /= 10 mm_main
##70
scoreboard players operation shoot_cooldown_normal_tick_70 mm_data = shoot_cooldown_normal_second mm_settings
scoreboard players operation shoot_cooldown_normal_tick_70 mm_data *= 20 mm_main
scoreboard players operation shoot_cooldown_normal_tick_70 mm_data += shoot_cooldown_normal_tick mm_settings
scoreboard players operation shoot_cooldown_normal_tick_70 mm_data *= 7 mm_main
scoreboard players operation shoot_cooldown_normal_tick_70 mm_data /= 10 mm_main
##60
scoreboard players operation shoot_cooldown_normal_tick_60 mm_data = shoot_cooldown_normal_second mm_settings
scoreboard players operation shoot_cooldown_normal_tick_60 mm_data *= 20 mm_main
scoreboard players operation shoot_cooldown_normal_tick_60 mm_data += shoot_cooldown_normal_tick mm_settings
scoreboard players operation shoot_cooldown_normal_tick_60 mm_data *= 6 mm_main
scoreboard players operation shoot_cooldown_normal_tick_60 mm_data /= 10 mm_main
##50
scoreboard players operation shoot_cooldown_normal_tick_50 mm_data = shoot_cooldown_normal_second mm_settings
scoreboard players operation shoot_cooldown_normal_tick_50 mm_data *= 20 mm_main
scoreboard players operation shoot_cooldown_normal_tick_50 mm_data += shoot_cooldown_normal_tick mm_settings
scoreboard players operation shoot_cooldown_normal_tick_50 mm_data *= 5 mm_main
scoreboard players operation shoot_cooldown_normal_tick_50 mm_data /= 10 mm_main
##40
scoreboard players operation shoot_cooldown_normal_tick_40 mm_data = shoot_cooldown_normal_second mm_settings
scoreboard players operation shoot_cooldown_normal_tick_40 mm_data *= 20 mm_main
scoreboard players operation shoot_cooldown_normal_tick_40 mm_data += shoot_cooldown_normal_tick mm_settings
scoreboard players operation shoot_cooldown_normal_tick_40 mm_data *= 4 mm_main
scoreboard players operation shoot_cooldown_normal_tick_40 mm_data /= 10 mm_main
##30
scoreboard players operation shoot_cooldown_normal_tick_30 mm_data = shoot_cooldown_normal_second mm_settings
scoreboard players operation shoot_cooldown_normal_tick_30 mm_data *= 20 mm_main
scoreboard players operation shoot_cooldown_normal_tick_30 mm_data += shoot_cooldown_normal_tick mm_settings
scoreboard players operation shoot_cooldown_normal_tick_30 mm_data *= 3 mm_main
scoreboard players operation shoot_cooldown_normal_tick_30 mm_data /= 10 mm_main
##20
scoreboard players operation shoot_cooldown_normal_tick_20 mm_data = shoot_cooldown_normal_second mm_settings
scoreboard players operation shoot_cooldown_normal_tick_20 mm_data *= 20 mm_main
scoreboard players operation shoot_cooldown_normal_tick_20 mm_data += shoot_cooldown_normal_tick mm_settings
scoreboard players operation shoot_cooldown_normal_tick_20 mm_data *= 2 mm_main
scoreboard players operation shoot_cooldown_normal_tick_20 mm_data /= 10 mm_main
##10
scoreboard players operation shoot_cooldown_normal_tick_10 mm_data = shoot_cooldown_normal_second mm_settings
scoreboard players operation shoot_cooldown_normal_tick_10 mm_data *= 20 mm_main
scoreboard players operation shoot_cooldown_normal_tick_10 mm_data += shoot_cooldown_normal_tick mm_settings
scoreboard players operation shoot_cooldown_normal_tick_10 mm_data /= 10 mm_main

#获取武器时间
scoreboard players operation get_weapon_5 mm_data = game_time mm_settings
scoreboard players operation get_weapon_5 mm_data -= 10 mm_main

scoreboard players operation get_weapon_4 mm_data = game_time mm_settings
scoreboard players operation get_weapon_4 mm_data -= 11 mm_main

scoreboard players operation get_weapon_3 mm_data = game_time mm_settings
scoreboard players operation get_weapon_3 mm_data -= 12 mm_main

scoreboard players operation get_weapon_2 mm_data = game_time mm_settings
scoreboard players operation get_weapon_2 mm_data -= 13 mm_main

scoreboard players operation get_weapon_1 mm_data = game_time mm_settings
scoreboard players operation get_weapon_1 mm_data -= 14 mm_main

scoreboard players operation get_weapon_0 mm_data = game_time mm_settings
scoreboard players operation get_weapon_0 mm_data -= 15 mm_main

scoreboard players operation get_weapon_5_short mm_data = game_time mm_settings
scoreboard players operation get_weapon_5_short mm_data -= 5 mm_main

scoreboard players operation get_weapon_4_short mm_data = game_time mm_settings
scoreboard players operation get_weapon_4_short mm_data -= 6 mm_main

scoreboard players operation get_weapon_3_short mm_data = game_time mm_settings
scoreboard players operation get_weapon_3_short mm_data -= 7 mm_main

scoreboard players operation get_weapon_2_short mm_data = game_time mm_settings
scoreboard players operation get_weapon_2_short mm_data -= 8 mm_main

scoreboard players operation get_weapon_1_short mm_data = game_time mm_settings
scoreboard players operation get_weapon_1_short mm_data -= 9 mm_main

scoreboard players operation get_weapon_0_short mm_data = game_time mm_settings
scoreboard players operation get_weapon_0_short mm_data -= 10 mm_main

scoreboard players operation remove_alpha_invincible mm_data = game_time mm_settings
scoreboard players operation remove_alpha_invincible mm_data -= 30 mm_main