#计时
scoreboard players remove game_tick mm_main 1
execute if score game_tick mm_main matches 0 run scoreboard players remove game_second mm_main 1
execute if score game_tick mm_main matches 0 run scoreboard players set game_tick mm_main 20

#启用魔改模块
function mm:game/game_module/zyy_module 


#显示标题和消息及定时性事件
execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_5 mm_data run tellraw @a[tag=mm_innocent] [{"text":"杀手将在","color":"yellow"},{"text":"5","color":"red"},{"text":"秒后获得他的剑!","color":"yellow"}]
execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_5 mm_data run tellraw @a[tag=mm_murderer] [{"text":"你将在","color":"yellow"},{"text":"5","color":"red"},{"text":"秒后获得剑!","color":"yellow"}]
execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_5 mm_data as @a at @s run playsound minecraft:ui.button.click player @s

execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_4 mm_data run tellraw @a[tag=mm_innocent] [{"text":"杀手将在","color":"yellow"},{"text":"4","color":"red"},{"text":"秒后获得他的剑!","color":"yellow"}]
execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_4 mm_data run tellraw @a[tag=mm_murderer] [{"text":"你将在","color":"yellow"},{"text":"4","color":"red"},{"text":"秒后获得剑!","color":"yellow"}]
execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_4 mm_data as @a at @s run playsound minecraft:ui.button.click player @s

execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_3 mm_data run tellraw @a[tag=mm_innocent] [{"text":"杀手将在","color":"yellow"},{"text":"3","color":"red"},{"text":"秒后获得他的剑!","color":"yellow"}]
execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_3 mm_data run tellraw @a[tag=mm_murderer] [{"text":"你将在","color":"yellow"},{"text":"3","color":"red"},{"text":"秒后获得剑!","color":"yellow"}]
execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_3 mm_data as @a at @s run playsound minecraft:ui.button.click player @s

execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_2 mm_data run tellraw @a[tag=mm_innocent] [{"text":"杀手将在","color":"yellow"},{"text":"2","color":"red"},{"text":"秒后获得他的剑!","color":"yellow"}]
execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_2 mm_data run tellraw @a[tag=mm_murderer] [{"text":"你将在","color":"yellow"},{"text":"2","color":"red"},{"text":"秒后获得剑!","color":"yellow"}]
execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_2 mm_data as @a at @s run playsound minecraft:ui.button.click player @s

execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_1 mm_data run tellraw @a[tag=mm_innocent] [{"text":"杀手将在","color":"yellow"},{"text":"1","color":"red"},{"text":"秒后获得他的剑!","color":"yellow"}]
execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_1 mm_data run tellraw @a[tag=mm_murderer] [{"text":"你将在","color":"yellow"},{"text":"1","color":"red"},{"text":"秒后获得剑!","color":"yellow"}]
execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_1 mm_data as @a at @s run playsound minecraft:ui.button.click player @s

execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_0 mm_data run tellraw @a[tag=mm_innocent] {"text":"杀手已经获得了剑!","color":"yellow"}
execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_0 mm_data run tellraw @a[tag=mm_murderer] {"text":"你已经获得了剑!","color":"yellow"}
execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_0 mm_data as @a at @s run playsound minecraft:ui.button.click player @s

execute if score game_tick mm_main matches 20 if score game_second mm_main matches 60 run tellraw @a [{"text":"平民将在","color":"yellow"},{"text":"60","color":"red"},{"text":"秒后胜利!","color":"yellow"}]
execute if score game_tick mm_main matches 20 if score game_second mm_main matches 60 as @a at @s run playsound minecraft:ui.button.click player @s

execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_0 mm_data run title @a[tag=mm_murderer] subtitle [{"text":"按下","color":"yellow"},{"keybind":"key.drop","color":"gold"},{"text":"蓄力你的剑!","color":"yellow"}]
execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_0 mm_data run title @a[tag=mm_murderer] title ""

execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_0 mm_data as @a[tag=mm_murderer] run loot replace entity @s hotbar.1 loot mm:knife
execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_0 mm_data run loot replace entity @a[tag=mm_detective] hotbar.1 loot mm:bow/detective
execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_0 mm_data run scoreboard players set @a[tag=mm_detective] mm_arrow 1

execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_0 mm_data as @a[tag=mm_murderer] run scoreboard players set @s mm_m_chance 1
execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_0 mm_data as @a[tag=mm_innocent,tag=!mm_detective] run scoreboard players operation @s mm_m_chance += @s mm_chance_amp
execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_0 mm_data as @a[tag=mm_innocent,tag=!mm_detective] run scoreboard players operation @s mm_d_chance += @s mm_chance_amp


#断线重连
execute if score timer mm_main matches 0 run function mm:game/game_module/disconnect_spectator


#接替杀手
execute if score game_second mm_main > get_weapon_0 mm_data if score murderer_real_left mm_data < murderer_count mm_settings run function mm:game/game_module/classic/murderer_replace


#道具掉落及效果
execute if score game_second mm_main <= get_weapon_0 mm_data run function mm:game/game_module/prop/prop_spawn


#金锭生成/换弓
function mm:game/game_module/classic/gold_ingot_spawn


#杀手飞刀及牵引遗体
execute as @a[tag=mm_murderer,tag=!mm_dead] run function mm:game/game_module/classic/throw_knife_call


#侦探弓箭
execute as @a[tag=mm_detective,tag=!mm_dead] run function mm:game/game_module/classic/detective_bow_call


#视觉效果
execute if score timer_short mm_main matches 0 run function mm:game/game_module/sight_effect


#追踪平民/追踪弓
execute if score timer mm_main matches 0 run function mm:game/game_module/classic/track_classic


#掉落弓/捡弓
function mm:game/game_module/classic/dropped_bow


#死亡
function mm:game/game_module/classic/die


#游戏模式
function mm:game/game_module/gamemode


#底部及boss栏
function mm:game/game_module/prop/actionbar_display


#胜负判定
execute if score innocent_left mm_data matches 0 run function mm:game/classic/end
execute if score murderer_left mm_data matches 0 run function mm:game/classic/end
execute if score game_second mm_main matches 0 run function mm:game/classic/end