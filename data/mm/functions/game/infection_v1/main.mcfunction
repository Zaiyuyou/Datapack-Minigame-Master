#计时
scoreboard players remove game_tick mm_main 1
execute if score game_tick mm_main matches 0 run scoreboard players remove game_second mm_main 1
execute if score game_tick mm_main matches 0 run scoreboard players set game_tick mm_main 20

#启用魔改模块
function mm:game/game_module/zyy_module 


#显示标题和消息及定时性事件
execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_5 mm_data run tellraw @a [{"text":"感染者将在","color":"yellow"},{"text":"5","color":"red"},{"text":"秒后被选出!","color":"yellow"}]
execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_5 mm_data as @a at @s run playsound minecraft:ui.button.click player @s

execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_4 mm_data run tellraw @a [{"text":"感染者将在","color":"yellow"},{"text":"4","color":"red"},{"text":"秒后被选出!","color":"yellow"}]
execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_4 mm_data as @a at @s run playsound minecraft:ui.button.click player @s

execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_3 mm_data run tellraw @a [{"text":"感染者将在","color":"yellow"},{"text":"3","color":"red"},{"text":"秒后被选出!","color":"yellow"}]
execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_3 mm_data as @a at @s run playsound minecraft:ui.button.click player @s

execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_2 mm_data run tellraw @a [{"text":"感染者将在","color":"yellow"},{"text":"2","color":"red"},{"text":"秒后被选出!","color":"yellow"}]
execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_2 mm_data as @a at @s run playsound minecraft:ui.button.click player @s

execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_1 mm_data run tellraw @a [{"text":"感染者将在","color":"yellow"},{"text":"1","color":"red"},{"text":"秒后被选出!","color":"yellow"}]
execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_1 mm_data as @a at @s run playsound minecraft:ui.button.click player @s

execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_0 mm_data run tellraw @a {"text":"感染者已被选出!","color":"yellow"}
execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_0 mm_data as @a at @s run playsound minecraft:ui.button.click player @s

execute if score game_tick mm_main matches 20 if score game_second mm_main matches 60 run tellraw @a [{"text":"幸存者将在","color":"yellow"},{"text":"60","color":"red"},{"text":"秒后胜利!","color":"yellow"}]
execute if score game_tick mm_main matches 20 if score game_second mm_main matches 60 as @a at @s run playsound minecraft:ui.button.click player @s

##分配身份
execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_0 mm_data run tag @a[limit=1,sort=random,tag=!mm_infected] add mm_infected
execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_0 mm_data as @a[tag=mm_infected] run tag @s add mm_origin
execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_0 mm_data as @a[tag=mm_infected] run tag @s remove mm_survivor

execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_0 mm_data run title @a[tag=mm_infected] subtitle {"text":"感染所有玩家!","color":"yellow"}
execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_0 mm_data run title @a[tag=mm_infected] title {"text":"身份:感染者","color":"red"}
execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_0 mm_data run title @a[tag=mm_survivor] subtitle {"text":"尽可能地存活下来!","color":"yellow"}
execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_0 mm_data run title @a[tag=mm_survivor] title {"text":"身份:幸存者","color":"green"}

execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_0 mm_data as @a[tag=mm_infected] run loot replace entity @s hotbar.0 loot mm:knife
execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_0 mm_data run team join mm_infected @a[tag=mm_infected]
execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_0 mm_data run clear @a[tag=mm_infected] iron_chestplate
execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_0 mm_data run effect give @a[tag=mm_infected] blindness 3 1 true

execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_0 mm_data run loot replace entity @a[tag=mm_survivor] hotbar.0 loot mm:bow/survivor
execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_0 mm_data run scoreboard players set @a[tag=mm_survivor] mm_arrow 64


#断线重连
execute if score timer mm_main matches 0 run function mm:game/game_module/disconnect_spectator


#道具掉落及效果
execute if score mm_prop_spawn mm_main matches 1 run function mm:game/game_module/prop/prop_spawn


#感染者丢刀
function mm:game/game_module/infection_v1/throw_knife


#金锭生成/幸存者丢弓/幸存者丢铁胸甲
function mm:game/game_module/infection_v1/gold_ingot_spawn


#视觉效果
execute if score timer_short mm_main matches 0 run function mm:game/game_module/sight_effect


#追踪幸存者
execute if score timer mm_main matches 0 run function mm:game/game_module/infection_v1/track_infection


#死亡
function mm:game/game_module/infection_v1/die


#游戏模式
function mm:game/game_module/gamemode


#底部
function mm:game/game_module/infection_v1/actionbar_display


#胜负判定
execute if score survivor_left mm_data matches 0 run function mm:game/infection_v1/end
execute if score game_second mm_main < get_weapon_0 mm_data if score infected_left mm_data matches 0 run function mm:game/infection_v1/end
execute if score game_second mm_main matches 0 run function mm:game/infection_v1/end