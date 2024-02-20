#计分板
scoreboard objectives remove mm_main
scoreboard objectives remove mm_data
scoreboard objectives remove mm_scoreboard
scoreboard objectives remove mm_m_chance
scoreboard objectives remove mm_m_chance_d
scoreboard objectives remove mm_d_chance
scoreboard objectives remove mm_d_chance_d
scoreboard objectives remove mm_a_chance
scoreboard objectives remove mm_a_chance_d
scoreboard objectives remove mm_chance_amp
scoreboard objectives remove mm_online
scoreboard objectives remove mm_projectile_l
scoreboard objectives remove mm_cosmetics
scoreboard objectives remove mm_stats
scoreboard objectives remove mm_stats_id
scoreboard objectives remove mm_knife_skin
scoreboard objectives remove mm_projectile
scoreboard objectives remove mm_lastwords
scoreboard objectives remove mm_death_cry
scoreboard objectives remove mm_dead_body
scoreboard objectives remove mm_death_type
scoreboard objectives remove mm_kill_count
scoreboard objectives remove mm_kill_count_s
scoreboard objectives remove mm_death_count
scoreboard objectives remove mm_survive_time
scoreboard objectives remove mm_top_1
scoreboard objectives remove mm_top_2
scoreboard objectives remove mm_top_3
scoreboard objectives remove mm_top_4
scoreboard objectives remove mm_cd_second
scoreboard objectives remove mm_cd_tick
scoreboard objectives remove mm_sc_second
scoreboard objectives remove mm_sc_tick
scoreboard objectives remove mm_throw_second
scoreboard objectives remove mm_throw_tick
scoreboard objectives remove mm_total_tick
scoreboard objectives remove mm_res_second
scoreboard objectives remove mm_res_tick
scoreboard objectives remove mm_gold_ingot
scoreboard objectives remove mm_arrow
scoreboard objectives remove mm_life
scoreboard objectives remove mm_thrown_knife
scoreboard objectives remove mm_players_id
scoreboard objectives remove mm_shoot_det
scoreboard objectives remove mm_stun_tick
scoreboard objectives remove mm_package_versions

#队伍
team remove mm_murderer
team remove mm_innocent
team remove mm_survivor
team remove mm_infected
team remove mm_sheriff
team remove mm_outlaw
team remove mm_human
team remove mm_robot


#状态
tag @a remove mm_murderer
tag @a remove mm_detective
tag @a remove mm_innocent
tag @a remove mm_hero
tag @a remove mm_dead
tag @a remove mm_origin
tag @a remove mm_infected
tag @a remove mm_survivor
tag @a remove mm_outlaw
tag @a remove mm_sheriff
tag @a remove mm_human
tag @a remove mm_robot
tag @a remove mm_alpha
tag @a remove mm_exposed
tag @a remove mm_invincible
tag @a remove mm_uninvincible
tag @a remove mm_will_respawn
tag @a remove mm_spectator
tag @a remove mm_random_knife_skin
tag @a remove mm_random_projectile
tag @a remove mm_random_lastwords
tag @a remove mm_random_death_cry
tag @a remove mm_random_dead_body


#提示信息及卸载
tellraw @a [{"text":"[游戏大师]  ","color":"aqua"},{"text":"v2.2.0 by NekomusumeMilk","color":"lime"},{"text":"已成功卸载!","color":"yellow"}]
tellraw @a [{"text":"[密室杀手]  ","color":"light_purple"},{"text":"v2.2.0 by NekomusumeMilk","color":"light_purple"},{"text":"已成功卸载!","color":"yellow"}]
tellraw @a [{"text":"[骗赞魔改]  ","color":"dark_purple"},{"text":"v0.2.9 by 在与有","color":"dark_purple"},{"text":"已成功卸载!","color":"yellow"}]
datapack disable "file/Minigame Master [Do NOT Rename]"
datapack disable "file/Minigame Master [Do NOT Rename].zip"
