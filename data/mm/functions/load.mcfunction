#创建计分板
scoreboard objectives add mm_main dummy
scoreboard objectives add mm_settings dummy
scoreboard objectives add mm_data dummy
scoreboard objectives add mm_scoreboard dummy {"text":"游戏大师","color":"yellow","bold":"true"}
scoreboard objectives add mm_m_chance dummy
scoreboard objectives add mm_m_chance_d dummy
scoreboard objectives add mm_d_chance dummy
scoreboard objectives add mm_d_chance_d dummy
scoreboard objectives add mm_a_chance dummy
scoreboard objectives add mm_a_chance_d dummy
scoreboard objectives add mm_chance_amp dummy
scoreboard objectives add mm_online dummy
scoreboard objectives add zyy_health health
scoreboard objectives add mm_prop_id dummy
scoreboard objectives add mm_package_versions dummy {"text":"数据包版本","color":"yellow","bold":"true"}


##统计数据
scoreboard objectives add mm_stats trigger
scoreboard objectives add mm_stats_id dummy
scoreboard objectives add mm_stats_1 dummy
scoreboard objectives add mm_stats_2 dummy
scoreboard objectives add mm_stats_3 dummy
scoreboard objectives add mm_stats_4 dummy
scoreboard objectives add mm_stats_5 dummy
scoreboard objectives add mm_stats_6 dummy
scoreboard objectives add mm_stats_7 dummy
scoreboard objectives add mm_stats_8 dummy
scoreboard objectives add mm_stats_9 dummy
scoreboard objectives add mm_stats_10 dummy
scoreboard objectives add mm_stats_11 dummy
scoreboard objectives add mm_stats_12 dummy
scoreboard objectives add mm_stats_13 dummy
##地图
scoreboard objectives add mm_map_id dummy
##装饰品
scoreboard objectives add mm_cosmetics trigger
scoreboard objectives add mm_knife_skin dummy
scoreboard objectives add mm_projectile dummy
scoreboard objectives add mm_lastwords dummy
scoreboard objectives add mm_death_cry dummy
scoreboard objectives add mm_dead_body dummy


#设置侧边计分板
scoreboard objectives setdisplay sidebar mm_scoreboard


#设置初始值
##中控
execute unless score game_pause mm_main matches 0..1 run scoreboard players set game_pause mm_main 0
execute unless score game_start mm_main matches 0..2 run scoreboard players set game_start mm_main 0
execute unless score game_mode mm_main matches 0.. run scoreboard players set game_mode mm_main 0
execute unless score timer_uninstall mm_main matches 0.. run scoreboard players set timer_uninstall mm_main 0
execute unless score return_lobby mm_main matches -1.. run scoreboard players set return_lobby mm_main -1

##地图
execute unless score map_count mm_main matches 1.. run scoreboard players set map_count mm_main 1
execute unless score selected_map mm_main matches 1.. run scoreboard players set selected_map mm_main 1
execute unless score selected_map mm_main <= map_count mm_main run scoreboard players set selected_map mm_main 1

##玩法
###游戏开始等待时长(s)
execute unless score game_start_wait_time mm_settings matches 10..60 run scoreboard players set game_start_wait_time mm_settings 20
###游戏时长(s)
execute unless score game_time mm_settings matches 60..2100 run scoreboard players set game_time mm_settings 270
###杀手/侦探武器冷却
execute unless score cooldown_normal_second mm_settings matches 0.. run scoreboard players set cooldown_normal_second mm_settings 5
execute unless score cooldown_normal_tick mm_settings matches 0..19 run scoreboard players set cooldown_normal_tick mm_settings 0
###杀手武器蓄力
execute unless score cooldown_throw_second mm_settings matches 0.. run scoreboard players set cooldown_throw_second mm_settings 0
execute unless score cooldown_throw_tick mm_settings matches 0..19 run scoreboard players set cooldown_throw_tick mm_settings 10
###感染模式武器冷却
execute unless score infection_cooldown_normal_second mm_settings matches 0.. run scoreboard players set infection_cooldown_normal_second mm_settings 15
execute unless score infection_cooldown_normal_tick mm_settings matches 0..19 run scoreboard players set infection_cooldown_normal_tick mm_settings 0
###感染模式武器蓄力
execute unless score infection_cooldown_throw_second mm_settings matches 0.. run scoreboard players set infection_cooldown_throw_second mm_settings 0
execute unless score infection_cooldown_throw_tick mm_settings matches 0..19 run scoreboard players set infection_cooldown_throw_tick mm_settings 10
###感染v1/感染v2/警匪对决/人机大战/生存模式弓箭冷却
execute unless score shoot_cooldown_normal_second mm_settings matches 0.. run scoreboard players set shoot_cooldown_normal_second mm_settings 1
execute unless score shoot_cooldown_normal_tick mm_settings matches 0..19 run scoreboard players set shoot_cooldown_normal_tick mm_settings 0
###遗言显示时长(s)(数字形式10~60)
execute unless score lastwords_display_time mm_settings matches 10..99999 run scoreboard players set lastwords_display_time mm_settings 30
###遗体显示时长(s)(数字形式10~60)
execute unless score dead_body_display_time mm_settings matches 10..99999 run scoreboard players set dead_body_display_time mm_settings 99999
###金锭生成个数(s)(5s生成一次)
execute unless score spawn_gold_ingot_count mm_settings matches 1..20 run scoreboard players set spawn_gold_ingot_count mm_settings 3
###道具生成个数(s)(15s生成一次)
execute unless score spawn_prop_count mm_settings matches 1..20 run scoreboard players set spawn_prop_count mm_settings 1
###杀手小组友伤
execute unless score murderer_friendly_fire mm_settings matches 0..2 run scoreboard players set murderer_friendly_fire mm_settings 1
###杀手死亡音效
execute unless score murderer_death_sound mm_settings matches 0..1 run scoreboard players set murderer_death_sound mm_settings 1
###杀手死亡音效
execute unless score innocent_friendfire_death_sound mm_settings matches 0..1 run scoreboard players set innocent_friendfire_death_sound mm_settings 1
###杀手牵引遗体
execute unless score murderer_pull_dead_body mm_settings matches 0..1 run scoreboard players set murderer_pull_dead_body mm_settings 1
###特殊身份分配随机
execute unless score special_role_random mm_settings matches 0..1 run scoreboard players set special_role_random mm_settings 0
###启用自定义遗言显示时间(与模式半绑定)
execute unless score customize_lastwords_display_time mm_settings matches 0..1 run scoreboard players set customize_lastwords_display_time mm_settings 1
###启用自定义遗体显示时间(与模式半绑定)
execute unless score customize_dead_body_display_time mm_settings matches 0..1 run scoreboard players set customize_dead_body_display_time mm_settings 1
###启用死因显示(与模式半绑定)
execute unless score death_cause_display mm_settings matches 0..1 run scoreboard players set death_cause_display mm_settings 1
###恶灵漂浮潜伏
execute unless score ghost_lurk_levitation mm_settings matches 0..1 run scoreboard players set ghost_lurk_levitation mm_settings 0
###启用自动分配杀手数量
scoreboard players set auto_murder_counts mm_settings 1
###警匪对决击杀结束数量
scoreboard players set showdown_end mm_settings 60
###缩圈模式设置
scoreboard players set border_discount mm_settings 1000

##游戏常数
scoreboard players set 100 mm_main 100
scoreboard players set 56 mm_main 56
scoreboard players set 48 mm_main 48
scoreboard players set 40 mm_main 40
scoreboard players set 32 mm_main 32
scoreboard players set 30 mm_main 30
scoreboard players set 24 mm_main 24
scoreboard players set 20 mm_main 20
scoreboard players set 16 mm_main 16
scoreboard players set 15 mm_main 15
scoreboard players set 14 mm_main 14
scoreboard players set 13 mm_main 13
scoreboard players set 12 mm_main 12
scoreboard players set 11 mm_main 11
scoreboard players set 10 mm_main 10
scoreboard players set 9 mm_main 9
scoreboard players set 8 mm_main 8
scoreboard players set 7 mm_main 7
scoreboard players set 6 mm_main 6
scoreboard players set 5 mm_main 5
scoreboard players set 4 mm_main 4
scoreboard players set 3 mm_main 3
scoreboard players set 2 mm_main 2
scoreboard players set 1 mm_main 1
scoreboard players set -1 mm_main -1

##装饰品常数
scoreboard players set cosmetics_knife_skin_count mm_main 45
scoreboard players set cosmetics_projectile_count mm_main 10
scoreboard players set cosmetics_lastwords_count mm_main 26
scoreboard players set cosmetics_death_cry_count mm_main 3
scoreboard players set cosmetics_dead_body_count mm_main 8
scoreboard players set prop_changeless_spawn_cyl mm_settings 6
scoreboard players set border_discount mm_main -1
scoreboard players set mm_prop_spawn mm_main -1


##重载边界
function mm:border_reload


##游戏规则
difficulty easy
gamerule announceAdvancements false
gamerule disableRaids true
gamerule doEntityDrops false
gamerule doMobSpawning false
gamerule doMobLoot false
gamerule fallDamage false
gamerule fireDamage false
gamerule drowningDamage true
gamerule keepInventory true
gamerule mobGriefing false
gamerule showDeathMessages false
gamerule sendCommandFeedback false
gamerule doImmediateRespawn true

##数据包版本
scoreboard players set minigame_master mm_package_versions 29
scoreboard players set murder_mystery mm_package_versions 220

##提示信息
tellraw @a [{"text":"[游戏大师]  ","color":"aqua"},{"text":"v2.2.0 by NekomusumeMilk","color":"lime"},{"text":"已成功加载!","color":"yellow"}]
tellraw @a [{"text":"[密室杀手]  ","color":"light_purple"},{"text":"v2.2.0 by NekomusumeMilk","color":"light_purple"},{"text":"已成功加载!","color":"yellow"}]
tellraw @a [{"text":"[骗赞魔改]  ","color":"dark_purple"},{"text":"v0.2.9 by 在与有","color":"dark_purple"},{"text":"已成功加载!","color":"yellow"}]
tellraw @a [{"text":"--"},{"text":"[装饰]  ","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics"}},{"text":"<=点击打开装饰品菜单!","color":"yellow"}]
tellraw @a [{"text":"--"},{"text":"[统计]  ","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger mm_stats"}},{"text":"<=点击打开统计菜单!","color":"yellow"}]
tellraw @a [{"text":"--"},{"text":"[设置]  ","color":"green","clickEvent":{"action":"run_command","value":"/execute as @s run function mm:settings"}},{"text":"<=点击打开设置菜单!(仅管理员)","color":"yellow"}]
tellraw @a [{"text":"--"},{"text":"[暂停]  ","color":"gold","clickEvent":{"action":"run_command","value":"/execute as @s run function mm:pause"}},{"text":"<=点击暂停/继续游戏!(仅管理员)","color":"yellow"}]
tellraw @a [{"text":"--"},{"text":"[卸载]  ","color":"red","clickEvent":{"action":"run_command","value":"/execute as @s run function mm:uni"}},{"text":"<=点击卸载数据包!(仅管理员)","color":"yellow"}]

