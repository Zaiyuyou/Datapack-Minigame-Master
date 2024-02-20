tellraw @s ""
tellraw @s ""
tellraw @s ""
#玩法相关
#
tellraw @s [{"text":"[模式切换]--","color":"gold"}]

#
tellraw @s [{"text":"| ","color":"gold"},{"text":"[密室杀手] ","color":"light_purple"}]
#
tellraw @s [{"text":"| ","color":"gold"},{"text":"| ","color":"light_purple"},{"text":"[经典] ","color":"green","clickEvent":{"action":"run_command","value":"/function mm:settings/game_mode_classic"}},{"text":"[双倍] ","color":"green","clickEvent":{"action":"run_command","value":"/function mm:settings/game_mode_double_up"}},{"text":"[道具] ","color":"light_purple","clickEvent":{"action":"run_command","value":"/function mm:settings/game_mode_prop"}},{"text":"[道具双倍] ","color":"light_purple","clickEvent":{"action":"run_command","value":"/function mm:settings/game_mode_prop_double_up"}}]

#
tellraw @s [{"text":"| ","color":"gold"},{"text":"[娱乐模式] ","color":"red"}]
#
tellraw @s [{"text":"| ","color":"gold"},{"text":"| ","color":"red"},{"text":"[感染v1] ","color":"green","clickEvent":{"action":"run_command","value":"/function mm:settings/game_mode_infection_v1"}},{"text":"[感染v2] ","color":"green","clickEvent":{"action":"run_command","value":"/function mm:settings/game_mode_infection_v2"}},{"text":"[对决] ","color":"green","clickEvent":{"action":"run_command","value":"/function mm:settings/game_mode_showdown"}},{"text":"[生存] ","color":"light_purple","clickEvent":{"action":"run_command","value":"/function mm:settings/game_mode_survival"}}]

#
tellraw @s ""


#
tellraw @s [{"text":"[大厅设置]--","color":"gold"}]

#
tellraw @s [{"text":"| ","color":"gold"},{"text":"[等待时长] ","color":"yellow"},{"score":{"objective":"mm_settings","name":"game_start_wait_time"},"color":"gold"},{"text":".00s","color":"gold"}]
#
tellraw @s [{"text":"| ","color":"gold"},{"text":"| ","color":"yellow"},{"text":"[恢复默认] ","color":"green","clickEvent":{"action":"run_command","value":"/function mm:settings/game_start_wait_time_reset"}},{"text":"[+100] ","color":"green","clickEvent":{"action":"run_command","value":"/function mm:settings/game_start_wait_time_add_100"}},{"text":"[+10] ","color":"green","clickEvent":{"action":"run_command","value":"/function mm:settings/game_start_wait_time_add_10"}},{"text":"[+1] ","color":"green","clickEvent":{"action":"run_command","value":"/function mm:settings/game_start_wait_time_add_1"}},{"text":"[-1] ","color":"red","clickEvent":{"action":"run_command","value":"/function mm:settings/game_start_wait_time_remove_1"}},{"text":"[-10] ","color":"red","clickEvent":{"action":"run_command","value":"/function mm:settings/game_start_wait_time_remove_10"}},{"text":"[-100] ","color":"red","clickEvent":{"action":"run_command","value":"/function mm:settings/game_start_wait_time_remove_100"}}]


#
tellraw @s [{"text":"| ","color":"gold"},{"text":"[游戏时长] ","color":"light_purple"},{"score":{"objective":"mm_settings","name":"game_time"},"color":"gold"},{"text":".00s","color":"gold"}]
#
tellraw @s [{"text":"| ","color":"gold"},{"text":"| ","color":"light_purple"},{"text":"[恢复默认] ","color":"green","clickEvent":{"action":"run_command","value":"/function mm:settings/game_time_reset"}},{"text":"[+100] ","color":"green","clickEvent":{"action":"run_command","value":"/function mm:settings/game_time_add_100"}},{"text":"[+10] ","color":"green","clickEvent":{"action":"run_command","value":"/function mm:settings/game_time_add_10"}},{"text":"[+1] ","color":"green","clickEvent":{"action":"run_command","value":"/function mm:settings/game_time_add_1"}},{"text":"[-1] ","color":"red","clickEvent":{"action":"run_command","value":"/function mm:settings/game_time_remove_1"}},{"text":"[-10] ","color":"red","clickEvent":{"action":"run_command","value":"/function mm:settings/game_time_remove_10"}},{"text":"[-100] ","color":"red","clickEvent":{"action":"run_command","value":"/function mm:settings/game_time_remove_100"}}]
#
tellraw @s ""

##全局设置

#
tellraw @s [{"text":"[全局游戏设置]--","color":"gold"}]


tellraw @s [{"text":"| ","color":"gold"},{"text":"[身份随机分配] ","color":"yellow"},{"text":"[?] ","color":"white","hoverEvent":{"action":"show_text","value":[{"text":"开启后，杀手/侦探/母体身份将随机分配。\n","color":"yellow"},{"text":"关闭后，杀手/侦探/母体身份将按玩家所拥有的权重分配。\n","color":"yellow"},{"text":"每当你成为平民/幸存者后，你的杀手/侦探/母体权重会增加。\n","color":"yellow"},{"text":"每当你成为杀手/侦探/母体后，你的对应权重会重置。\n","color":"yellow"},{"text":"权重越高，你越有可能成为杀手/侦探/母体。","color":"yellow"}]}}]

tellraw @s [{"text":"| ","color":"gold"},{"text":"| ","color":"yellow"},{"text":"[开启] ","color":"green","clickEvent":{"action":"run_command","value":"/function mm:settings/special_role_random_true"}},{"text":"[关闭] ","color":"red","clickEvent":{"action":"run_command","value":"/function mm:settings/special_role_random_false"}}]

tellraw @s [{"text":"| ","color":"gold"}]

execute if score shoot_cooldown_normal_tick mm_settings matches 10.. run tellraw @s [{"text":"| ","color":"gold"},{"text":"[弓箭冷却时长] ","color":"yellow"},{"score":{"objective":"mm_settings","name":"shoot_cooldown_normal_second"},"color":"gold"},{"text":".","color":"gold"},{"score":{"objective":"mm_settings","name":"shoot_cooldown_normal_tick"},"color":"gold"},{"text":"s","color":"gold"}]

execute if score shoot_cooldown_normal_tick mm_settings matches ..9 run tellraw @s [{"text":"| ","color":"gold"},{"text":"[弓箭冷却时长] ","color":"yellow"},{"score":{"objective":"mm_settings","name":"shoot_cooldown_normal_second"},"color":"gold"},{"text":".0","color":"gold"},{"score":{"objective":"mm_settings","name":"shoot_cooldown_normal_tick"},"color":"gold"},{"text":"s","color":"gold"}]



tellraw @s [{"text":"| ","color":"gold"},{"text":"| ","color":"yellow"},{"text":"[+]","color":"green","clickEvent":{"action":"run_command","value":"/function mm:settings/shoot_cooldown_normal_second_add"}},{"text":"秒","color":"yellow"},{"text":"[-] ","color":"red","clickEvent":{"action":"run_command","value":"/function mm:settings/shoot_cooldown_normal_second_remove"}},{"text":"[+]","color":"green","clickEvent":{"action":"run_command","value":"/function mm:settings/shoot_cooldown_normal_tick_add"}},{"text":"刻","color":"yellow"},{"text":"[-] ","color":"red","clickEvent":{"action":"run_command","value":"/function mm:settings/shoot_cooldown_normal_tick_remove"}},{"text":"[恢复默认] ","color":"green","clickEvent":{"action":"run_command","value":"/function mm:settings/shoot_cooldown_normal_reset"}}]

tellraw @s [{"text":"| ","color":"gold"},{"text":"[遗言显示时长] ","color":"yellow"},{"score":{"objective":"mm_settings","name":"lastwords_display_time"},"color":"gold"},{"text":".00s ","color":"gold"}]
#
tellraw @s [{"text":"| ","color":"gold"},{"text":"| ","color":"yellow"},{"text":"[+]","color":"green","clickEvent":{"action":"run_command","value":"/function mm:settings/lastwords_display_time_add"}},{"text":"秒","color":"yellow"},{"text":"[-] ","color":"red","clickEvent":{"action":"run_command","value":"/function mm:settings/lastwords_display_time_remove"}},{"text":" [永久] ","color":"gold","clickEvent":{"action":"run_command","value":"/function mm:settings/lastwords_display_time_infinite"}},{"text":"[恢复默认] ","color":"green","clickEvent":{"action":"run_command","value":"/function mm:settings/lastwords_display_time_reset"}}]
#
tellraw @s [{"text":"| ","color":"gold"}]
#
tellraw @s [{"text":"| ","color":"gold"},{"text":"[遗体显示时长] ","color":"aqua"},{"score":{"objective":"mm_settings","name":"dead_body_display_time"},"color":"gold"},{"text":".00s ","color":"gold"}]
#
tellraw @s [{"text":"| ","color":"gold"},{"text":"| ","color":"aqua"},{"text":"[+]","color":"green","clickEvent":{"action":"run_command","value":"/function mm:settings/dead_body_display_time_add"}},{"text":"秒","color":"yellow"},{"text":"[-] ","color":"red","clickEvent":{"action":"run_command","value":"/function mm:settings/dead_body_display_time_remove"}},{"text":" [永久] ","color":"gold","clickEvent":{"action":"run_command","value":"/function mm:settings/dead_body_display_time_infinite"}},{"text":"[恢复默认] ","color":"green","clickEvent":{"action":"run_command","value":"/function mm:settings/dead_body_display_time_reset"}}]
#
tellraw @s [{"text":"| ","color":"gold"}]
#


tellraw @s ""

##密室杀手模式设置
#
tellraw @s [{"text":"[密室杀手设置]--","color":"light_purple"}]
#
execute if score auto_murder_counts mm_settings matches 0 run tellraw @s [{"text":"| ","color":"light_purple"},{"text":"[杀手数量分配] ","color":"yellow"},{"score":{"objective":"mm_settings","name":"murderer_count"},"color":"gold"},{"text":"个","color":"gold"}]
#
execute unless score auto_murder_counts mm_settings matches 0 run tellraw @s [{"text":"| ","color":"light_purple"},{"text":"[杀手数量分配] ","color":"yellow"},{"text":"自动配置","color":"gold"}]
#
tellraw @s [{"text":"| ","color":"light_purple"},{"text":"| ","color":"yellow"},{"text":"[自动分配] ","color":"gold","clickEvent":{"action":"run_command","value":"/function mm:settings/murder_counts_auto"}},{"text":"[+1] ","color":"green","clickEvent":{"action":"run_command","value":"/function mm:settings/murder_counts_add"}},{"text":"[-1] ","color":"red","clickEvent":{"action":"run_command","value":"/function mm:settings/murder_counts_remove"}}]
#
tellraw @s [{"text":"| ","color":"light_purple"}]
#
execute if score cooldown_normal_tick mm_settings matches 10.. run tellraw @s [{"text":"| ","color":"light_purple"},{"text":"[远程攻击冷却] ","color":"yellow"},{"score":{"objective":"mm_settings","name":"cooldown_normal_second"},"color":"gold"},{"text":".","color":"gold"},{"score":{"objective":"mm_settings","name":"cooldown_normal_tick"},"color":"gold"},{"text":"s","color":"gold"}]
#
execute if score cooldown_normal_tick mm_settings matches ..9 run tellraw @s [{"text":"| ","color":"light_purple"},{"text":"[远程攻击冷却] ","color":"yellow"},{"score":{"objective":"mm_settings","name":"cooldown_normal_second"},"color":"gold"},{"text":".0","color":"gold"},{"score":{"objective":"mm_settings","name":"cooldown_normal_tick"},"color":"gold"},{"text":"s","color":"gold"}]]
#
tellraw @s [{"text":"| ","color":"light_purple"},{"text":"| ","color":"yellow"},{"text":"[恢复默认] ","color":"green","clickEvent":{"action":"run_command","value":"/function mm:settings/cooldown_normal_reset"}},{"text":"[+]","color":"green","clickEvent":{"action":"run_command","value":"/function mm:settings/cooldown_normal_second_add"}},{"text":"秒","color":"yellow"},{"text":"[-] ","color":"red","clickEvent":{"action":"run_command","value":"/function mm:settings/cooldown_normal_second_remove"}},{"text":"[+]","color":"green","clickEvent":{"action":"run_command","value":"/function mm:settings/cooldown_normal_tick_add"}},{"text":"刻","color":"yellow"},{"text":"[-] ","color":"red","clickEvent":{"action":"run_command","value":"/function mm:settings/cooldown_normal_tick_remove"}}]
#
tellraw @s [{"text":"| ","color":"light_purple"}]
#
execute if score cooldown_throw_tick mm_settings matches 10.. run tellraw @s [{"text":"| ","color":"light_purple"},{"text":"[飞刀蓄力时长] ","color":"yellow"},{"score":{"objective":"mm_settings","name":"cooldown_throw_second"},"color":"gold"},{"text":".","color":"gold"},{"score":{"objective":"mm_settings","name":"cooldown_throw_tick"},"color":"gold"},{"text":"s","color":"gold"}]
#
execute if score cooldown_throw_tick mm_settings matches ..9 run tellraw @s [{"text":"| ","color":"light_purple"},{"text":"[飞刀蓄力时长] ","color":"yellow"},{"score":{"objective":"mm_settings","name":"cooldown_throw_second"},"color":"gold"},{"text":".0","color":"gold"},{"score":{"objective":"mm_settings","name":"cooldown_throw_tick"},"color":"gold"},{"text":"s","color":"gold"}]
#
execute if score cooldown_throw_tick mm_settings matches 10.. run tellraw @s [{"text":"| ","color":"light_purple"},{"text":"| ","color":"yellow"},{"text":"[恢复默认] ","color":"green","clickEvent":{"action":"run_command","value":"/function mm:settings/cooldown_throw_reset"}},{"text":"[+]","color":"green","clickEvent":{"action":"run_command","value":"/function mm:settings/cooldown_throw_second_add"}},{"text":"秒","color":"yellow"},{"text":"[-] ","color":"red","clickEvent":{"action":"run_command","value":"/function mm:settings/cooldown_throw_second_remove"}},{"text":"[+]","color":"green","clickEvent":{"action":"run_command","value":"/function mm:settings/cooldown_throw_tick_add"}},{"text":"[-] ","color":"red","clickEvent":{"action":"run_command","value":"/function mm:settings/cooldown_throw_tick_remove"}},{"text":"刻","color":"yellow"}]
#
tellraw @s [{"text":"| ","color":"light_purple"}]
#
tellraw @s [{"text":"| ","color":"light_purple"},{"text":"[杀手牵引遗体] ","color":"yellow"},{"text":"[?] ","color":"white","hoverEvent":{"action":"show_text","value":[{"text":"开启后，杀手可按住Shift键来拖动脚下的一具遗体。","color":"yellow"}]}},{"text":"[开启] ","color":"green","clickEvent":{"action":"run_command","value":"/function mm:settings/murderer_pull_dead_body_true"}},{"text":"[关闭] ","color":"red","clickEvent":{"action":"run_command","value":"/function mm:settings/murderer_pull_dead_body_false"}}]
#
tellraw @s [{"text":"| ","color":"light_purple"}]
#
tellraw @s [{"text":"| ","color":"light_purple"},{"text":"[杀手小组友伤] ","color":"yellow"},{"text":"[?] ","color":"white","hoverEvent":{"action":"show_text","value":[{"text":"开启后，杀手将可以互相攻击。若一名杀手杀死了其杀手同伙，则他们俩都会死亡，游戏将立即结束。\n","color":"yellow"},{"text":"关闭后，杀手将无法相互攻击。\n","color":"yellow"},{"text":"启用击晕惩罚后，若一名杀手试图杀死其杀手同伙，则该杀手获得缓慢V效果并失去刀，持续5秒。","color":"yellow"}]}},{"text":"[开启] ","color":"green","clickEvent":{"action":"run_command","value":"/function mm:settings/murderer_friendly_fire_true"}},{"text":"[关闭] ","color":"red","clickEvent":{"action":"run_command","value":"/function mm:settings/murderer_friendly_fire_false"}},{"text":"[击晕惩罚] ","color":"gold","clickEvent":{"action":"run_command","value":"/function mm:settings/murderer_friendly_fire_stun"}}]
#
tellraw @s [{"text":"| ","color":"light_purple"}]
#
tellraw @s [{"text":"| ","color":"light_purple"},{"text":"[杀手死亡音效] ","color":"yellow"},{"text":"[开启] ","color":"green","clickEvent":{"action":"run_command","value":"/function mm:settings/murderer_death_sound_true"}},{"text":"[关闭] ","color":"red","clickEvent":{"action":"run_command","value":"/function mm:settings/murderer_death_sound_false"}},{"text":"[?] ","color":"white","hoverEvent":{"action":"show_text","value":[{"text":"开启后，杀手死亡时将播放特殊音效。","color":"yellow"}]}}]
#
tellraw @s [{"text":"| ","color":"light_purple"}]
#
tellraw @s [{"text":"| ","color":"light_purple"},{"text":"[平民误杀音效] ","color":"yellow"},{"text":"[开启] ","color":"green","clickEvent":{"action":"run_command","value":"/function mm:settings/innocent_friendfire_death_sound_true"}},{"text":"[关闭] ","color":"red","clickEvent":{"action":"run_command","value":"/function mm:settings/innocent_friendfire_death_sound_false"}},{"text":"[?] ","color":"white","hoverEvent":{"action":"show_text","value":[{"text":"开启后，平民因误伤对方而死亡时将播放特殊音效。","color":"yellow"}]}}]
#
tellraw @s ""

##感染模式V2设置
#
tellraw @s [{"text":"[感染V2设置]--","color":"light_purple"}]

#
execute if score infection_cooldown_normal_tick mm_settings matches 10.. run tellraw @s [{"text":"| ","color":"light_purple"},{"text":"[感染者飞刀冷却时长] ","color":"yellow"},{"score":{"objective":"mm_settings","name":"infection_cooldown_normal_second"},"color":"gold"},{"text":".","color":"gold"},{"score":{"objective":"mm_settings","name":"infection_cooldown_normal_tick"},"color":"gold"},{"text":"s","color":"gold"}]
#
execute if score infection_cooldown_normal_tick mm_settings matches ..9 run tellraw @s [{"text":"| ","color":"light_purple"},{"text":"[感染者飞刀冷却时长] ","color":"yellow"},{"score":{"objective":"mm_settings","name":"infection_cooldown_normal_second"},"color":"gold"},{"text":".0","color":"gold"},{"score":{"objective":"mm_settings","name":"infection_cooldown_normal_tick"},"color":"gold"},{"text":"s","color":"gold"}]

tellraw @s [{"text":"| ","color":"light_purple"},{"text":"| ","color":"yellow"},{"text":"[+]","color":"green","clickEvent":{"action":"run_command","value":"/function mm:settings/infection_cooldown_normal_second_add"}},{"text":"秒","color":"yellow"},{"text":"[-] ","color":"red","clickEvent":{"action":"run_command","value":"/function mm:settings/infection_cooldown_normal_second_remove"}},{"text":"[+]","color":"green","clickEvent":{"action":"run_command","value":"/function mm:settings/infection_cooldown_normal_tick_add"}},{"text":"刻","color":"yellow"},{"text":"[-] ","color":"red","clickEvent":{"action":"run_command","value":"/function mm:settings/infection_cooldown_normal_tick_remove"}},{"text":"[恢复默认] ","color":"green","clickEvent":{"action":"run_command","value":"/function mm:settings/infection_cooldown_normal_reset"}}]
#
tellraw @s [{"text":"| ","color":"light_purple"}]
#
execute if score infection_cooldown_throw_tick mm_settings matches 10.. run tellraw @s [{"text":"| ","color":"light_purple"},{"text":"[感染者飞刀蓄力时长] ","color":"yellow"},{"score":{"objective":"mm_settings","name":"infection_cooldown_throw_second"},"color":"gold"},{"text":".","color":"gold"},{"score":{"objective":"mm_settings","name":"infection_cooldown_throw_tick"},"color":"gold"},{"text":"s","color":"gold"}]
#
execute if score infection_cooldown_throw_tick mm_settings matches ..9 run tellraw @s [{"text":"| ","color":"light_purple"},{"text":"[感染者飞刀蓄力时长] ","color":"yellow"},{"score":{"objective":"mm_settings","name":"infection_cooldown_throw_second"},"color":"gold"},{"text":".0","color":"gold"},{"score":{"objective":"mm_settings","name":"infection_cooldown_throw_tick"},"color":"gold"},{"text":"s","color":"gold"}]

tellraw @s [{"text":"| ","color":"light_purple"},{"text":"| ","color":"yellow"},{"text":"[+]","color":"green","clickEvent":{"action":"run_command","value":"/function mm:settings/infection_cooldown_throw_second_add"}},{"text":"秒","color":"yellow"},{"text":"[-] ","color":"red","clickEvent":{"action":"run_command","value":"/function mm:settings/infection_cooldown_throw_second_remove"}},{"text":"[+]","color":"green","clickEvent":{"action":"run_command","value":"/function mm:settings/infection_cooldown_throw_tick_add"}},{"text":"刻","color":"yellow"},{"text":"[-] ","color":"red","clickEvent":{"action":"run_command","value":"/function mm:settings/infection_cooldown_throw_tick_remove"}},{"text":"[恢复默认] ","color":"green","clickEvent":{"action":"run_command","value":"/function mm:settings/infection_cooldown_throw_reset"}}]

tellraw @s ""

##生存模式设置
#
tellraw @s [{"text":"[生存游戏设置] ","color":"red"}]
tellraw @s [{"text":"| ","color":"red"},{"text":"[恶灵漂浮潜伏] ","color":"yellow"},{"text":"[?] ","color":"white","hoverEvent":{"action":"show_text","value":[{"text":"开启后，恶灵将会以漂浮方式潜伏，但这并不适用于露天地图。\n","color":"yellow"},{"text":"关闭后，恶灵将就地潜伏。","color":"yellow"}]}}]

tellraw @s [{"text":"| ","color":"red"},{"text":"| ","color":"yellow"},{"text":"[开启] ","color":"green","clickEvent":{"action":"run_command","value":"/function mm:settings/ghost_lurk_levitation_true"}},{"text":"[关闭] ","color":"red","clickEvent":{"action":"run_command","value":"/function mm:settings/ghost_lurk_levitation_false"}}]

tellraw @s ""
##警匪对决设置
#
tellraw @s [{"text":"[对决游戏设置] ","color":"green"}]
tellraw @s [{"text":"| ","color":"green"},{"text":"[结束击杀数] ","color":"yellow"},{"score":{"objective":"mm_settings","name":"showdown_end"},"color":"gold"},{"text":"个","color":"gold"}]

tellraw @s [{"text":"| ","color":"green"},{"text":"| ","color":"yellow"},{"text":"[恢复默认] ","color":"green","clickEvent":{"action":"run_command","value":"/function mm:settings/showdown_end_reset"}},{"text":"[+100] ","color":"green","clickEvent":{"action":"run_command","value":"/function mm:settings/showdown_end_add_100"}},{"text":"[+10] ","color":"green","clickEvent":{"action":"run_command","value":"/function mm:settings/showdown_end_add_10"}},{"text":"[+1] ","color":"green","clickEvent":{"action":"run_command","value":"/function mm:settings/showdown_end_add_1"}},{"text":"[-1] ","color":"red","clickEvent":{"action":"run_command","value":"/function mm:settings/showdown_end_remove_1"}},{"text":"[-10] ","color":"red","clickEvent":{"action":"run_command","value":"/function mm:settings/showdown_end_remove_10"}},{"text":"[-100] ","color":"red","clickEvent":{"action":"run_command","value":"/function mm:settings/showdown_end_remove_100"}}]

tellraw @s ""

##资源设置
tellraw @s [{"text":"[资源设置]--","color":"#7bee00"}]
#
tellraw @s [{"text":"| ","color":"#7bee00"},{"text":"[金锭资源设置] ","color":"yellow"},{"score":{"objective":"mm_settings","name":"spawn_gold_ingot_count"},"color":"gold"},{"text":"个/5秒  ","color":"gold"}]

tellraw @s [{"text":"| ","color":"#7bee00"},{"text":"| ","color":"yellow"},{"text":"[+]","color":"green","clickEvent":{"action":"run_command","value":"/function mm:settings/spawn_gold_ingot_count_add"}},{"text":"刷新速率","color":"yellow"},{"text":"[-] ","color":"red","clickEvent":{"action":"run_command","value":"/function mm:settings/spawn_gold_ingot_count_remove"}},{"text":"[恢复默认] ","color":"green","clickEvent":{"action":"run_command","value":"/function mm:settings/spawn_gold_ingot_count_reset"}}]


tellraw @s [{"text":"| ","color":"#7bee00"}]

tellraw @s [{"text":"| ","color":"#7bee00"},{"text":"[道具资源设置] ","color":"gold"},{"score":{"objective":"mm_settings","name":"spawn_prop_count"},"color":"gold"},{"text":"个/15秒 ","color":"gold"}]

tellraw @s [{"text":"| ","color":"#7bee00"},{"text":"| ","color":"gold"},{"text":"[+]","color":"green","clickEvent":{"action":"run_command","value":"/function mm:settings/spawn_prop_count_add"}},{"text":"刷新速率","color":"yellow"},{"text":"[-] ","color":"red","clickEvent":{"action":"run_command","value":"/function mm:settings/spawn_prop_count_remove"}},{"text":"[恢复默认] ","color":"green","clickEvent":{"action":"run_command","value":"/function mm:settings/spawn_prop_count_reset"}}]

tellraw @s [{"text":"| ","color":"#7bee00"},{"text":"| ","color":"gold"},{"text":"[关闭道具生成] ","color":"red","clickEvent":{"action":"run_command","value":"/function mm:settings/prop_disable"}},{"text":"[启用道具生成] ","color":"green","clickEvent":{"action":"run_command","value":"/function mm:settings/prop_enable"}}]

tellraw @s [{"text":"| ","color":"#7bee00"},{"text":"| ","color":"gold"}]

tellraw @s [{"text":"| ","color":"#7bee00"},{"text":"| ","color":"gold"},{"text":"[神话道具稀有度] ","color":"yellow"},{"score":{"objective":"mm_settings","name":"prop_changeless_spawn_cyl"},"color":"gold"},{"text":"[?] ","color":"white","hoverEvent":{"action":"show_text","value":[{"text":"设置每生成多少次\n普通道具后才刷新一次神话道具\n神话道具是固定周期固定地点刷新的\n所以如果普通道具的刷新数量较大建议适当调高稀有度","color":"yellow"}]}}]

tellraw @s [{"text":"| ","color":"#7bee00"},{"text":"| ","color":"gold"},{"text":"| ","color":"yellow"},{"text":"[+]","color":"green","clickEvent":{"action":"run_command","value":"/function mm:settings/spawn_prop_changeless_cyl_add"}},{"text":"商","color":"yellow"},{"text":"[-] ","color":"red","clickEvent":{"action":"run_command","value":"/function mm:settings/spawn_prop_changeless_cyl_remove"}},{"text":"[恢复默认] ","color":"green","clickEvent":{"action":"run_command","value":"/function mm:settings/spawn_prop_changeless_cyl_reset"}}]




#
tellraw @s ""

##魔改部分
#
tellraw @s [{"text":"[魔改功能设置]  ","color":"dark_purple"}]
#
tellraw @s [{"text":"| ","color":"dark_purple"},{"text":"[缩圈设置] ","color":"yellow"}]
#
tellraw @s [{"text":"| ","color":"dark_purple"},{"text":"| ","color":"yellow"},{"score":{"objective":"mm_settings","name":"border_discount"},"color":"gold"},{"text":".00s","color":"gold"},{"text":"秒","color":"yellow"}]
#
tellraw @s [{"text":"| ","color":"dark_purple"},{"text":"| ","color":"yellow"},{"text":"[+100] ","color":"green","clickEvent":{"action":"run_command","value":"/function mm:settings/border_discount_add_100"}},{"text":"[+10] ","color":"green","clickEvent":{"action":"run_command","value":"/function mm:settings/border_discount_add_10"}},{"text":"[+1] ","color":"green","clickEvent":{"action":"run_command","value":"/function mm:settings/border_discount_add_1"}},{"text":"[-1] ","color":"red","clickEvent":{"action":"run_command","value":"/function mm:settings/border_discount_remove_1"}},{"text":"[-10] ","color":"red","clickEvent":{"action":"run_command","value":"/function mm:settings/border_discount_remove_10"}},{"text":"[-100] ","color":"red","clickEvent":{"action":"run_command","value":"/function mm:settings/border_discount_remove_100"}},{"text":"[关闭缩圈功能] ","color":"red","clickEvent":{"action":"run_command","value":"/function mm:settings/border_discount_disable"}},{"text":"[恢复默认] ","color":"green","clickEvent":{"action":"run_command","value":"/function mm:settings/border_discount_reset"}}]

#
#
tellraw @s [{"text":"| ","color":"dark_purple"}]
#
tellraw @s [{"text":"| ","color":"dark_purple"},{"text":"[微重力效果] ","color":"yellow"},{"text":"[开启]","color":"green","clickEvent":{"action":"run_command","value":"/function mm:settings/microgravity_enable"}},{"text":"[关闭] ","color":"red","clickEvent":{"action":"run_command","value":"/function mm:settings/microgravity_disable"}}]
#
tellraw @s [{"text":"| ","color":"dark_purple"},{"text":"[全员夜视效果] ","color":"yellow"},{"text":"[开启]","color":"green","clickEvent":{"action":"run_command","value":"/function mm:settings/night_vision_enable"}},{"text":"[关闭] ","color":"red","clickEvent":{"action":"run_command","value":"/function mm:settings/night_vision_disable"}}]
#
tellraw @s [{"text":"| ","color":"dark_purple"},{"text":"[全员喷气飞行道具] ","color":"yellow"},{"text":"[开启]","color":"green","clickEvent":{"action":"run_command","value":"/function mm:settings/jet_enable"}},{"text":"[关闭] ","color":"red","clickEvent":{"action":"run_command","value":"/function mm:settings/jet_disable"}}]











#






#
tellraw @s ""

#
tellraw @s {"text":"<<<返回上一级菜单 ","color":"green","clickEvent":{"action":"run_command","value":"/function mm:settings"}}

##page1
#[{"text":"[玩法相关]","color":"dark_blue"},{"text":"\n"},{"text":"| ","color":"dark_blue"},{"text":"\n"},{"text":"| ","color":"dark_blue"},{"text":"[游戏模式](谜案对局)","color":"#8d7600"},{"text":"\n"},{"text":"| ","color":"dark_blue"},{"text":"| ","color":"#8d7600"},{"text":"[经典] ","color":"dark_green","clickEvent":{"action":"run_command","value":"/function mm:settings/game_mode_classic"}},{"text":"[双倍] ","color":"dark_green","clickEvent":{"action":"run_command","value":"/function mm:settings/game_mode_double_up"}},{"text":"\n"},{"text":"| ","color":"dark_blue"},{"text":"| ","color":"#8d7600"},{"text":"[道具] ","color":"dark_purple","clickEvent":{"action":"run_command","value":"/function mm:settings/game_mode_prop"}},{"text":"[道具双倍] ","color":"dark_purple","clickEvent":{"action":"run_command","value":"/function mm:settings/game_mode_prop_double_up"}},{"text":"\n"},{"text":"| ","color":"dark_blue"},{"text":"\n"},{"text":"| ","color":"dark_blue"},{"text":"[游戏模式](娱乐对局) ","color":"dark_red"},{"text":"\n"},{"text":"| ","color":"dark_blue"},{"text":"| ","color":"dark_red"},{"text":"[感染v1] ","color":"dark_green","clickEvent":{"action":"run_command","value":"/function mm:settings/game_mode_infection_v1"}},{"text":"[感染v2] ","color":"dark_green","clickEvent":{"action":"run_command","value":"/function mm:settings/game_mode_infection_v2"}},{"text":"\n"},{"text":"| ","color":"dark_blue"},{"text":"| ","color":"dark_red"},{"text":"[对决] ","color":"dark_purple","clickEvent":{"action":"run_command","value":"/function mm:settings/game_mode_showdown"}},{"text":"[生存] ","color":"dark_purple","clickEvent":{"action":"run_command","value":"/function mm:settings/game_mode_survival"}}]

##page2
#[{"text":"[游戏准备]  ","color":"dark_blue"},{"text":"\n"},{"text":"| ","color":"dark_blue"},{"text":"\n"},{"text":"| ","color":"dark_blue"},{"text":"[等待时长]","color":"#862b00"},{"text":"\n"},{"text":"| ","color":"dark_blue"},{"text":"| ","color":"#862b00"},{"text":"[+100] ","color":"green","clickEvent":{"action":"run_command","value":"/function mm:settings/game_start_wait_time_add_100"}},{"text":"[+10] ","color":"green","clickEvent":{"action":"run_command","value":"/function mm:settings/game_start_wait_time_add_10"}},{"text":"[+1] ","color":"green","clickEvent":{"action":"run_command","value":"/function mm:settings/game_start_wait_time_add_1"}},{"text":"\n"},{"text":"| ","color":"dark_blue"},{"text":"| ","color":"#862b00"},{"text":"[-1] ","color":"red","clickEvent":{"action":"run_command","value":"/function mm:settings/game_start_wait_time_remove_1"}},{"text":"[-10] ","color":"red","clickEvent":{"action":"run_command","value":"/function mm:settings/game_start_wait_time_remove_10"}},{"text":"[-100] ","color":"red","clickEvent":{"action":"run_command","value":"/function mm:settings/game_start_wait_time_remove_100"}},{"text":"\n"},{"text":"| ","color":"dark_blue"},{"text":"| ","color":"#862b00"},{"text":"[恢复默认] ","color":"green","clickEvent":{"action":"run_command","value":"/function mm:settings/game_start_wait_time_reset"}},{"text":"\n"},{"text":"| ","color":"dark_blue"},{"text":"\n"},{"text":"| ","color":"dark_blue"},{"text":"[游戏时长]","color":"#862b00"},{"text":"\n"},{"text":"| ","color":"dark_blue"},{"text":"| ","color":"#862b00"},{"text":"[+100] ","color":"green","clickEvent":{"action":"run_command","value":"/function mm:settings/game_time_add_100"}},{"text":"[+10] ","color":"green","clickEvent":{"action":"run_command","value":"/function mm:settings/game_time_add_10"}},{"text":"[+1] ","color":"green","clickEvent":{"action":"run_command","value":"/function mm:settings/game_time_add_1"}},{"text":"\n"},{"text":"| ","color":"dark_blue"},{"text":"| ","color":"#862b00"},{"text":"[-1] ","color":"red","clickEvent":{"action":"run_command","value":"/function mm:settings/game_time_remove_1"}},{"text":"[-10] ","color":"red","clickEvent":{"action":"run_command","value":"/function mm:settings/game_time_remove_10"}},{"text":"[-100] ","color":"red","clickEvent":{"action":"run_command","value":"/function mm:settings/game_time_remove_100"}},{"text":"\n"},{"text":"| ","color":"dark_blue"},{"text":"| ","color":"#862b00"},{"text":"[恢复默认] ","color":"green","clickEvent":{"action":"run_command","value":"/function mm:settings/game_time_reset"}},{"text":"\n"},{"text":"| ","color":"dark_blue"},{"text":"\n"},{"text":"| ","color":"dark_blue"},{"text":"[强制开始游戏] ","color":"green","clickEvent":{"action":"run_command","value":"/function mm:start"}},{"text":"\n"},{"text":"| ","color":"dark_blue"},{"text":"[强制结束游戏] ","color":"red","clickEvent":{"action":"run_command","value":"/function mm:end"}}]



##page3
#[{"text":"[全局设置]  ","color":"dark_blue"},{"text":"\n"},{"text":"| ","color":"dark_blue"},{"text":"\n"},{"text":"| ","color":"dark_blue"},{"text":"[道具生成] ","color":"#862b00"},{"text":"\n"},{"text":"| ","color":"dark_blue"},{"text":"| ","color":"#862b00"},{"text":"[+]","color":"green","clickEvent":{"action":"run_command","value":"/function mm:settings/spawn_prop_count_add"}},{"text":"[-] ","color":"red","clickEvent":{"action":"run_command","value":"/function mm:settings/spawn_prop_count_remove"}},{"text":"[恢复默认] ","color":"green","clickEvent":{"action":"run_command","value":"/function mm:settings/spawn_prop_count_reset"}},{"text":"\n"},{"text":"| ","color":"dark_blue"},{"text":"\n"},{"text":"| ","color":"dark_blue"},{"text":"[金锭生成速率] ","color":"#862b00"},{"text":"\n"},{"text":"| ","color":"dark_blue"},{"text":"| ","color":"#862b00"},{"text":"[+]","color":"green","clickEvent":{"action":"run_command","value":"/function mm:settings/spawn_gold_ingot_count_add"}},{"text":"[-] ","color":"red","clickEvent":{"action":"run_command","value":"/function mm:settings/spawn_gold_ingot_count_remove"}},{"text":"[恢复默认] ","color":"green","clickEvent":{"action":"run_command","value":"/function mm:settings/spawn_gold_ingot_count_reset"}},{"text":"\n"},{"text":"| ","color":"dark_blue"},{"text":"\n"},{"text":"| ","color":"dark_blue"},{"text":"[遗体显示时长] ","color":"#862b00"},{"text":"\n"},{"text":"| ","color":"dark_blue"},{"text":"| ","color":"#862b00"},{"text":"[+]","color":"green","clickEvent":{"action":"run_command","value":"/function mm:settings/dead_body_display_time_add"}},{"text":"[-] ","color":"red","clickEvent":{"action":"run_command","value":"/function mm:settings/dead_body_display_time_remove"}},{"text":"[永久] ","color":"gold","clickEvent":{"action":"run_command","value":"/function mm:settings/dead_body_display_time_infinite"}},{"text":"[恢复默认] ","color":"green","clickEvent":{"action":"run_command","value":"/function mm:settings/dead_body_display_time_reset"}}]

##page4
#[{"text":"[娱乐模式]  ","color":"dark_blue"},{"text":"\n"},{"text":"| ","color":"dark_blue"},{"text":"\n"},{"text":"| ","color":"dark_blue"},{"text":"[道具生成] ","color":"#862b00"},{"text":"\n"},{"text":"| ","color":"dark_blue"},{"text":"| ","color":"#862b00"},{"text":"[关闭] ","color":"red","clickEvent":{"action":"run_command","value":"/function mm:settings/prop_disable"}},{"text":"[开启] ","color":"green","clickEvent":{"action":"run_command","value":"/function mm:settings/prop_enable"}},{"text":"\n"},{"text":"| ","color":"dark_blue"},{"text":"\n"},{"text":"| ","color":"dark_blue"},{"text":"[神话道具稀有度] ","color":"#862b00"},{"text":"\n"},{"text":"| ","color":"dark_blue"},{"text":"| ","color":"#862b00"},{"text":"[+]","color":"green","clickEvent":{"action":"run_command","value":"/function mm:settings/spawn_prop_changeless_cyl_add"}},{"text":"[-] ","color":"red","clickEvent":{"action":"run_command","value":"/function mm:settings/spawn_prop_changeless_cyl_remove"}},{"text":"[恢复默认] ","color":"green","clickEvent":{"action":"run_command","value":"/function mm:settings/spawn_prop_changeless_cyl_reset"}},{"text":"[?] ","color":"white","hoverEvent":{"action":"show_text","value":[{"text":"稀有度指每生成多少次普通道具\n后才刷新一次神话道具\n但是因为神话道具是固定周期固定地点刷新的\n所以如果普通道具的刷新数量很多的话\n建议适当调高稀有度","color":"#862b00"}]}}]



#give @p minecraft:written_book{title:"MM Settings",author:"Zai_yu_you",pages:["[{\"text\":\"[玩法相关]\",\"color\":\"dark_blue\"},{\"text\":\"\\n\"},{\"text\":\"|\",\"color\":\"dark_blue\"},{\"text\":\"\\n\"},{\"text\":\"|\",\"color\":\"dark_blue\"},{\"text\":\"[游戏模式](谜案对局)\",\"color\":\"#8d7600\"},{\"text\":\"\\n\"},{\"text\":\"|\",\"color\":\"dark_blue\"},{\"text\":\"|\",\"color\":\"#8d7600\"},{\"text\":\"[经典] \",\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function mm:settings/game_mode_classic\"}},{\"text\":\"[双倍] \",\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function mm:settings/game_mode_double_up\"}},{\"text\":\"\\n\"},{\"text\":\"|\",\"color\":\"dark_blue\"},{\"text\":\"|\",\"color\":\"#8d7600\"},{\"text\":\"[道具] \",\"color\":\"dark_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function mm:settings/game_mode_prop\"}},{\"text\":\"[道具双倍] \",\"color\":\"dark_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function mm:settings/game_mode_prop_double_up\"}},{\"text\":\"\\n\"},{\"text\":\"|\",\"color\":\"dark_blue\"},{\"text\":\"\\n\"},{\"text\":\"|\",\"color\":\"dark_blue\"},{\"text\":\"[游戏模式](娱乐对局) \",\"color\":\"dark_red\"},{\"text\":\"\\n\"},{\"text\":\"|\",\"color\":\"dark_blue\"},{\"text\":\"|\",\"color\":\"dark_red\"},{\"text\":\"[感染v1] \",\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function mm:settings/game_mode_infection_v1\"}},{\"text\":\"[感染v2] \",\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function mm:settings/game_mode_infection_v2\"}},{\"text\":\"\\n\"},{\"text\":\"|\",\"color\":\"dark_blue\"},{\"text\":\"|\",\"color\":\"dark_red\"},{\"text\":\"[对决] \",\"color\":\"dark_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function mm:settings/game_mode_showdown\"}},{\"text\":\"[生存] \",\"color\":\"dark_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function mm:settings/game_mode_survival\"}}]","[{\"text\":\"[游戏准备]  \",\"color\":\"dark_blue\"},{\"text\":\"\\n\"},{\"text\":\"|\",\"color\":\"dark_blue\"},{\"text\":\"\\n\"},{\"text\":\"|\",\"color\":\"dark_blue\"},{\"text\":\"[等待时长]\",\"color\":\"#862b00\"},{\"text\":\"\\n\"},{\"text\":\"|\",\"color\":\"dark_blue\"},{\"text\":\"|\",\"color\":\"#862b00\"},{\"text\":\"[+100]\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function mm:settings/game_start_wait_time_add_100\"}},{\"text\":\"[+10]\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function mm:settings/game_start_wait_time_add_10\"}},{\"text\":\"[+1]\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function mm:settings/game_start_wait_time_add_1\"}},{\"text\":\"\\n\"},{\"text\":\"|\",\"color\":\"dark_blue\"},{\"text\":\"|\",\"color\":\"#862b00\"},{\"text\":\"[-1] \",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function mm:settings/game_start_wait_time_remove_1\"}},{\"text\":\"[-10] \",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function mm:settings/game_start_wait_time_remove_10\"}},{\"text\":\"[-100] \",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function mm:settings/game_start_wait_time_remove_100\"}},{\"text\":\"\\n\"},{\"text\":\"|\",\"color\":\"dark_blue\"},{\"text\":\"|\",\"color\":\"#862b00\"},{\"text\":\"[恢复默认] \",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function mm:settings/game_start_wait_time_reset\"}},{\"text\":\"\\n\"},{\"text\":\"|\",\"color\":\"dark_blue\"},{\"text\":\"\\n\"},{\"text\":\"|\",\"color\":\"dark_blue\"},{\"text\":\"[游戏时长]\",\"color\":\"#862b00\"},{\"text\":\"\\n\"},{\"text\":\"|\",\"color\":\"dark_blue\"},{\"text\":\"|\",\"color\":\"#862b00\"},{\"text\":\"[+100]\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function mm:settings/game_time_add_100\"}},{\"text\":\"[+10]\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function mm:settings/game_time_add_10\"}},{\"text\":\"[+1]\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function mm:settings/game_time_add_1\"}},{\"text\":\"\\n\"},{\"text\":\"|\",\"color\":\"dark_blue\"},{\"text\":\"|\",\"color\":\"#862b00\"},{\"text\":\"[-1] \",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function mm:settings/game_time_remove_1\"}},{\"text\":\"[-10] \",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function mm:settings/game_time_remove_10\"}},{\"text\":\"[-100] \",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function mm:settings/game_time_remove_100\"}},{\"text\":\"\\n\"},{\"text\":\"|\",\"color\":\"dark_blue\"},{\"text\":\"|\",\"color\":\"#862b00\"},{\"text\":\"[恢复默认] \",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function mm:settings/game_time_reset\"}},{\"text\":\"\\n\"},{\"text\":\"|\",\"color\":\"dark_blue\"},{\"text\":\"\\n\"},{\"text\":\"|\",\"color\":\"dark_blue\"},{\"text\":\"[强制开始游戏] \",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function mm:start\"}},{\"text\":\"\\n\"},{\"text\":\"|\",\"color\":\"dark_blue\"},{\"text\":\"[强制结束游戏] \",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function mm:end\"}}]","[{\"text\":\"[全局设置]  \",\"color\":\"dark_blue\"},{\"text\":\"\\n\"},{\"text\":\"|\",\"color\":\"dark_blue\"},{\"text\":\"\\n\"},{\"text\":\"|\",\"color\":\"dark_blue\"},{\"text\":\"[道具生成] \",\"color\":\"#862b00\"},{\"text\":\"\\n\"},{\"text\":\"|\",\"color\":\"dark_blue\"},{\"text\":\"|\",\"color\":\"#862b00\"},{\"text\":\"[+]\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function mm:settings/spawn_prop_count_add\"}},{\"text\":\"[-] \",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function mm:settings/spawn_prop_count_remove\"}},{\"text\":\"[恢复默认] \",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function mm:settings/spawn_prop_count_reset\"}},{\"text\":\"\\n\"},{\"text\":\"|\",\"color\":\"dark_blue\"},{\"text\":\"\\n\"},{\"text\":\"|\",\"color\":\"dark_blue\"},{\"text\":\"[金锭生成速率] \",\"color\":\"#862b00\"},{\"text\":\"\\n\"},{\"text\":\"|\",\"color\":\"dark_blue\"},{\"text\":\"|\",\"color\":\"#862b00\"},{\"text\":\"[+]\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function mm:settings/spawn_gold_ingot_count_add\"}},{\"text\":\"[-] \",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function mm:settings/spawn_gold_ingot_count_remove\"}},{\"text\":\"[恢复默认] \",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function mm:settings/spawn_gold_ingot_count_reset\"}},{\"text\":\"\\n\"},{\"text\":\"|\",\"color\":\"dark_blue\"},{\"text\":\"\\n\"},{\"text\":\"|\",\"color\":\"dark_blue\"},{\"text\":\"[遗体显示时长] \",\"color\":\"#862b00\"},{\"text\":\"\\n\"},{\"text\":\"|\",\"color\":\"dark_blue\"},{\"text\":\"|\",\"color\":\"#862b00\"},{\"text\":\"[+]\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function mm:settings/dead_body_display_time_add\"}},{\"text\":\"[-] \",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function mm:settings/dead_body_display_time_remove\"}},{\"text\":\"[永久] \",\"color\":\"gold\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function mm:settings/dead_body_display_time_infinite\"}},{\"text\":\"[恢复默认] \",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function mm:settings/dead_body_display_time_reset\"}}]","[{\"text\":\"[娱乐模式]  \",\"color\":\"dark_blue\"},{\"text\":\"\\n\"},{\"text\":\"|\",\"color\":\"dark_blue\"},{\"text\":\"\\n\"},{\"text\":\"|\",\"color\":\"dark_blue\"},{\"text\":\"[道具生成] \",\"color\":\"#862b00\"},{\"text\":\"\\n\"},{\"text\":\"|\",\"color\":\"dark_blue\"},{\"text\":\"|\",\"color\":\"#862b00\"},{\"text\":\"[关闭] \",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function mm:settings/prop_disable\"}},{\"text\":\"[开启] \",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function mm:settings/prop_enable\"}},{\"text\":\"\\n\"},{\"text\":\"|\",\"color\":\"dark_blue\"},{\"text\":\"\\n\"},{\"text\":\"|\",\"color\":\"dark_blue\"},{\"text\":\"[神话道具稀有度] \",\"color\":\"#862b00\"},{\"text\":\"\\n\"},{\"text\":\"|\",\"color\":\"dark_blue\"},{\"text\":\"|\",\"color\":\"#862b00\"},{\"text\":\"[+]\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function mm:settings/spawn_prop_changeless_cyl_add\"}},{\"text\":\"[-] \",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function mm:settings/spawn_prop_changeless_cyl_remove\"}},{\"text\":\"[恢复默认] \",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function mm:settings/spawn_prop_changeless_cyl_reset\"}},{\"text\":\"[?] \",\"color\":\"white\",\"hoverEvent\":{\"action\":\"show_text\",\"value\":[{\"text\":\"稀有度指每生成多少次普通道具\\n后才刷新一次神话道具\\n但是因为神话道具是固定周期固定地点刷新的\\n所以如果普通道具的刷新数量很多的话\\n建议适当调高稀有度\",\"color\":\"#862b00\"}]}}]"]} 1