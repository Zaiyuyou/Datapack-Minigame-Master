#计时
execute if score ghost_spawn_second mm_main matches 0.. run scoreboard players remove ghost_spawn_tick mm_main 1
execute if score ghost_spawn_tick mm_main matches 0 run scoreboard players remove ghost_spawn_second mm_main 1
execute if score ghost_spawn_tick mm_main matches 0 run scoreboard players set ghost_spawn_tick mm_main 20


#生成恶灵
execute if score ghost_spawn_second mm_main matches 0 run scoreboard players set distribute_ghost_spawn mm_main 0
execute if score ghost_spawn_second mm_main matches 0 run scoreboard players add spawn_ghost_weight mm_main 1
execute if score ghost_spawn_second mm_main matches 0 run scoreboard players operation spawn_ghost_count mm_main = players_spawn_left mm_data
execute if score ghost_spawn_second mm_main matches 0 run scoreboard players operation spawn_ghost_count mm_main *= spawn_ghost_weight mm_main
execute if score ghost_spawn_second mm_main matches 0 run scoreboard players operation spawn_ghost_count mm_main /= 100 mm_main

execute if score ghost_spawn_second mm_main matches 0 if score spawn_ghost_count mm_main matches 0 run scoreboard players set spawn_ghost_count mm_main 1

execute if score ghost_spawn_second mm_main matches 0 run function mm:scoreboards/calculate_data
execute if score ghost_spawn_second mm_main matches 0 run scoreboard players operation expected_ghost_count mm_main = ghost_left mm_data
execute if score ghost_spawn_second mm_main matches 0 run scoreboard players operation expected_ghost_count mm_main += spawn_ghost_count mm_main
execute if score ghost_spawn_second mm_main matches 0 if score expected_ghost_count mm_main matches 31.. run scoreboard players set ghost_spawn_second mm_main 30

##提示信息
execute if score ghost_spawn_second mm_main matches 0 run tellraw @a [{"score":{"objective":"mm_main","name":"spawn_ghost_count"},"color":"red"},{"text":"只恶灵已生成!","color":"yellow"}]
execute if score ghost_spawn_second mm_main matches 0 as @a at @s run playsound minecraft:ui.button.click player @s

execute if score ghost_spawn_second mm_main matches 0 run tag @e[tag=mm_spawn,tag=mm_actived] remove mm_respawnable
execute if score ghost_spawn_second mm_main matches 0 as @e[tag=mm_spawn,tag=mm_actived] at @s unless entity @a[tag=mm_survivor,distance=..16] run tag @s add mm_respawnable
execute if score ghost_spawn_second mm_main matches 0 unless entity @e[tag=mm_spawn,tag=mm_actived,tag=mm_respawnable] run tag @e[tag=mm_spawn,limit=1,sort=random,tag=mm_actived] add mm_respawnable
execute if score ghost_spawn_second mm_main matches 0 run function mm:game/game_module/survival/ghost_spawn_recursion

execute if score ghost_spawn_second mm_main matches 0 run scoreboard players set ghost_spawn_second mm_main 30