#计时
scoreboard players remove game_tick mm_main 1
execute if score game_tick mm_main matches 0 run scoreboard players remove game_second mm_main 1
execute if score game_tick mm_main matches 0 run scoreboard players set game_tick mm_main 20

#启用魔改模块
function mm:game/game_module/zyy_module 


#显示标题和消息及定时性事件
execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_5 mm_data run tellraw @a [{"text":"母体将在","color":"yellow"},{"text":"5","color":"red"},{"text":"秒后被选出!","color":"yellow"}]
execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_5 mm_data as @a at @s run playsound minecraft:ui.button.click player @s

execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_4 mm_data run tellraw @a [{"text":"母体将在","color":"yellow"},{"text":"4","color":"red"},{"text":"秒后被选出!","color":"yellow"}]
execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_4 mm_data as @a at @s run playsound minecraft:ui.button.click player @s

execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_3 mm_data run tellraw @a [{"text":"母体将在","color":"yellow"},{"text":"3","color":"red"},{"text":"秒后被选出!","color":"yellow"}]
execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_3 mm_data as @a at @s run playsound minecraft:ui.button.click player @s

execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_2 mm_data run tellraw @a [{"text":"母体将在","color":"yellow"},{"text":"2","color":"red"},{"text":"秒后被选出!","color":"yellow"}]
execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_2 mm_data as @a at @s run playsound minecraft:ui.button.click player @s

execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_1 mm_data run tellraw @a [{"text":"母体将在","color":"yellow"},{"text":"1","color":"red"},{"text":"秒后被选出!","color":"yellow"}]
execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_1 mm_data as @a at @s run playsound minecraft:ui.button.click player @s

execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_0 mm_data run tellraw @a [{"text":"母体已被选出! ","color":"yellow"},{"text":"母体将暂时处于无敌状态!","color":"yellow"}]
execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_0 mm_data as @a at @s run playsound minecraft:ui.button.click player @s

execute if score game_tick mm_main matches 20 if score game_second mm_main matches 60 run tellraw @a [{"text":"幸存者将在","color":"yellow"},{"text":"60","color":"red"},{"text":"秒后胜利!","color":"yellow"}]
execute if score game_tick mm_main matches 20 if score game_second mm_main matches 60 as @a at @s run playsound minecraft:ui.button.click player @s

##分配身份
execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_0 mm_data if score special_role_random mm_settings matches 0 run function mm:game/game_module/infection_v2/distribute_special_role_weight
execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_0 mm_data if score special_role_random mm_settings matches 0 run tag @a[tag=mm_ranked] remove mm_ranked
execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_0 mm_data if score special_role_random mm_settings matches 1 run tag @a[limit=1,sort=random,tag=!mm_alpha] add mm_alpha
execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_0 mm_data as @a[tag=mm_alpha] run tag @s remove mm_survivor
execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_0 mm_data as @a[tag=mm_alpha] run tag @s add mm_invincible

execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_0 mm_data run title @a[tag=mm_alpha] subtitle {"text":"秘密地感染所有玩家!","color":"yellow"}
execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_0 mm_data run title @a[tag=mm_alpha] title {"text":"身份:母体","color":"red"}
execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_0 mm_data run title @a[tag=mm_survivor] subtitle {"text":"尽可能地存活下来!","color":"yellow"}
execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_0 mm_data run title @a[tag=mm_survivor] title {"text":"身份:幸存者","color":"green"}

execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_0 mm_data as @a[tag=mm_alpha] run loot replace entity @s hotbar.0 loot mm:bow/fake
execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_0 mm_data as @a[tag=mm_alpha] run loot replace entity @s hotbar.1 loot mm:knife
execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_0 mm_data as @a[tag=mm_alpha] run loot replace entity @s armor.chest loot mm:alpha_iron_chestplate

execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_0 mm_data run tellraw @a[tag=mm_survivor] [{"text":"小心! ","color":"red"},{"text":"母体看起来像个普通的幸存者,直到他被现形!","color":"yellow"}]
execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_0 mm_data run tellraw @a[tag=mm_alpha] [{"text":"你被选中成为","color":"gold"},{"text":"母体","color":"red"},{"text":"! ","color":"gold"},{"text":"如果你死亡,其他感染者将无法重生!","color":"yellow"}]
execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_0 mm_data run tellraw @a[tag=mm_alpha] [{"text":"在15秒时间内,如果你没有暴露刀,你将处于无敌状态!","color":"yellow"}]

execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_0 mm_data run loot replace entity @a[tag=mm_survivor] hotbar.0 loot mm:bow/survivor
execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_0 mm_data run scoreboard players set @a[tag=mm_survivor] mm_arrow 32
execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_0 mm_data run scoreboard players set infected_tick mm_main 600

execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_0 mm_data as @a[tag=mm_survivor] run scoreboard players operation @s mm_a_chance += @s mm_chance_amp
execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_0 mm_data as @a[tag=mm_alpha] run scoreboard players set @s mm_a_chance 1

execute if score infected_tick mm_main matches 1.. run scoreboard players remove infected_tick mm_main 1


#断线重连
execute if score timer mm_main matches 0 run function mm:game/game_module/disconnect_spectator


#道具掉落及效果
execute if score mm_prop_spawn mm_main matches 1 run function mm:game/game_module/prop/prop_spawn


#感染者丢刀
execute as @a[tag=mm_alpha,tag=!mm_dead,tag=!mm_will_respawn] run function mm:game/game_module/infection_v2/throw_knife_call_alpha
execute as @a[tag=mm_infected,tag=!mm_dead,tag=!mm_will_respawn] run function mm:game/game_module/infection_v2/throw_knife_call


#金锭生成/幸存者丢弓/幸存者丢铁胸甲
function mm:game/game_module/infection_v2/gold_ingot_spawn


#视觉效果
execute if score timer_short mm_main matches 0 run function mm:game/game_module/sight_effect


#追踪幸存者
execute if score timer mm_main matches 0 run function mm:game/game_module/infection_v2/track_infection


#死亡
function mm:game/game_module/infection_v2/die


#游戏模式
function mm:game/game_module/gamemode


#底部
function mm:game/game_module/infection_v2/actionbar_display


#胜负判定
execute if score survivor_left mm_data matches 0 run function mm:game/infection_v2/end
execute if score game_second mm_main < get_weapon_0 mm_data if score infected_real_left mm_data matches 0 run function mm:game/infection_v2/end
execute if score game_second mm_main matches 0 run function mm:game/infection_v2/end