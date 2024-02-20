#消息提示
execute if score game_start_time_tick mm_main matches 20 if score game_start_time_second mm_main matches 30 run tellraw @a [{"text":"游戏将在","color":"yellow"},{"text":"30","color":"green"},{"text":"秒后开始!","color":"yellow"}]
execute if score game_start_time_tick mm_main matches 20 if score game_start_time_second mm_main matches 30 as @a at @s run playsound minecraft:ui.button.click player @s
execute if score game_start_time_tick mm_main matches 20 if score game_start_time_second mm_main matches 20 run tellraw @a [{"text":"游戏将在","color":"yellow"},{"text":"20","color":"yellow"},{"text":"秒后开始!","color":"yellow"}]
execute if score game_start_time_tick mm_main matches 20 if score game_start_time_second mm_main matches 20 as @a at @s run playsound minecraft:ui.button.click player @s
execute if score game_start_time_tick mm_main matches 20 if score game_start_time_second mm_main matches 10 run tellraw @a [{"text":"游戏将在","color":"yellow"},{"text":"10","color":"gold"},{"text":"秒后开始!","color":"yellow"}]
execute if score game_start_time_tick mm_main matches 20 if score game_start_time_second mm_main matches 10 as @a at @s run playsound minecraft:ui.button.click player @s
execute if score game_start_time_tick mm_main matches 20 if score game_start_time_second mm_main matches 5 run tellraw @a [{"text":"游戏将在","color":"yellow"},{"text":"5","color":"red"},{"text":"秒后开始!","color":"yellow"}]
execute if score game_start_time_tick mm_main matches 20 if score game_start_time_second mm_main matches 5 as @a at @s run playsound minecraft:ui.button.click player @s
execute if score game_start_time_tick mm_main matches 20 if score game_start_time_second mm_main matches 4 run tellraw @a [{"text":"游戏将在","color":"yellow"},{"text":"4","color":"red"},{"text":"秒后开始!","color":"yellow"}]
execute if score game_start_time_tick mm_main matches 20 if score game_start_time_second mm_main matches 4 as @a at @s run playsound minecraft:ui.button.click player @s
execute if score game_start_time_tick mm_main matches 20 if score game_start_time_second mm_main matches 3 run tellraw @a [{"text":"游戏将在","color":"yellow"},{"text":"3","color":"red"},{"text":"秒后开始!","color":"yellow"}]
execute if score game_start_time_tick mm_main matches 20 if score game_start_time_second mm_main matches 3 as @a at @s run playsound minecraft:ui.button.click player @s
execute if score game_start_time_tick mm_main matches 20 if score game_start_time_second mm_main matches 2 run tellraw @a [{"text":"游戏将在","color":"yellow"},{"text":"2","color":"red"},{"text":"秒后开始!","color":"yellow"}]
execute if score game_start_time_tick mm_main matches 20 if score game_start_time_second mm_main matches 2 as @a at @s run playsound minecraft:ui.button.click player @s
execute if score game_start_time_tick mm_main matches 20 if score game_start_time_second mm_main matches 1 run tellraw @a [{"text":"游戏将在","color":"yellow"},{"text":"1","color":"red"},{"text":"秒后开始!","color":"yellow"}]
execute if score game_start_time_tick mm_main matches 20 if score game_start_time_second mm_main matches 1 as @a at @s run playsound minecraft:ui.button.click player @s


#计时
scoreboard players remove game_start_time_tick mm_main 1
execute if score game_start_time_tick mm_main matches 0 run scoreboard players remove game_start_time_second mm_main 1
execute if score game_start_time_tick mm_main matches 0 run scoreboard players set game_start_time_tick mm_main 20


#开始游戏
execute if score game_start_time_second mm_main matches 0 run function mm:waiting/game_start