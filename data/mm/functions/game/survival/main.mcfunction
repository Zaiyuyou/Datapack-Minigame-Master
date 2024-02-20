#计时
scoreboard players remove game_tick mm_main 1
execute if score game_tick mm_main matches 0 run scoreboard players remove game_second mm_main 1
execute if score game_tick mm_main matches 0 run scoreboard players set game_tick mm_main 20

#启用魔改模块
function mm:game/game_module/zyy_module 


#显示标题和消息及定时性事件
execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_5 mm_data run tellraw @a [{"text":"恶灵将在","color":"yellow"},{"text":"5","color":"red"},{"text":"秒后开始生成!","color":"yellow"}]
execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_5 mm_data as @a at @s run playsound minecraft:ui.button.click player @s

execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_4 mm_data run tellraw @a [{"text":"恶灵将在","color":"yellow"},{"text":"4","color":"red"},{"text":"秒后开始生成!","color":"yellow"}]
execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_4 mm_data as @a at @s run playsound minecraft:ui.button.click player @s

execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_3 mm_data run tellraw @a [{"text":"恶灵将在","color":"yellow"},{"text":"3","color":"red"},{"text":"秒后开始生成!","color":"yellow"}]
execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_3 mm_data as @a at @s run playsound minecraft:ui.button.click player @s

execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_2 mm_data run tellraw @a [{"text":"恶灵将在","color":"yellow"},{"text":"2","color":"red"},{"text":"秒后开始生成!","color":"yellow"}]
execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_2 mm_data as @a at @s run playsound minecraft:ui.button.click player @s

execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_1 mm_data run tellraw @a [{"text":"恶灵将在","color":"yellow"},{"text":"1","color":"red"},{"text":"秒后开始生成!","color":"yellow"}]
execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_1 mm_data as @a at @s run playsound minecraft:ui.button.click player @s

execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_0 mm_data run scoreboard players set ghost_spawn_second mm_main 0

execute if score game_tick mm_main matches 20 if score game_second mm_main matches 60 run tellraw @a [{"text":"幸存者将在","color":"yellow"},{"text":"60","color":"red"},{"text":"秒后胜利! 所有恶灵获得速度III效果!","color":"yellow"}]
execute if score game_tick mm_main matches 20 if score game_second mm_main matches 60 as @a at @s run playsound minecraft:ui.button.click player @s

execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_0 mm_data run loot replace entity @a[tag=mm_survivor] hotbar.0 loot mm:bow/survival
execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_0 mm_data run scoreboard players set @a[tag=mm_survivor] mm_arrow 16


#恶灵技能
function mm:game/game_module/survival/ghost_skill


#恶灵生成
function mm:game/game_module/survival/ghost_spawn


#断线重连
execute if score timer mm_main matches 0 run function mm:game/game_module/disconnect_spectator


#道具掉落及效果
execute if score mm_prop_spawn mm_main matches 1 run function mm:game/game_module/prop/prop_spawn


#金锭生成/丢弓/丢铁胸甲
function mm:game/game_module/survival/gold_ingot_spawn


#视觉效果
execute if score timer_short mm_main matches 0 run function mm:game/game_module/sight_effect


#死亡
function mm:game/game_module/survival/die


#游戏模式
function mm:game/game_module/gamemode


#底部
function mm:game/game_module/survival/actionbar_display


#胜负判定
execute if score survivor_left mm_data matches 0 run function mm:game/survival/end
execute if score game_second mm_main matches 0 run function mm:game/survival/end