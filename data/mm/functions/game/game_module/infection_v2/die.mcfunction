#重生
execute as @a[tag=mm_will_respawn] if score @s mm_res_tick matches 20 run title @s subtitle [{"text":"你将在","color":"yellow"},{"score":{"objective":"mm_res_second","name":"@s"},"color":"red"},{"text":"秒后重生!","color":"yellow"}]
execute as @a[tag=mm_will_respawn] if score @s mm_res_tick matches 20 run title @s title {"text":"你死了!","color":"red"}

execute as @a[tag=mm_will_respawn] run scoreboard players remove @s mm_res_tick 1
execute as @a[tag=mm_will_respawn] if score @s mm_res_tick matches 0 run scoreboard players remove @s mm_res_second 1
execute as @a[tag=mm_will_respawn] if score @s mm_res_tick matches 0 run scoreboard players set @s mm_res_tick 20

execute as @a[tag=mm_will_respawn] if score @s mm_res_tick matches 20 if score @s mm_res_second matches 0 run tag @s add mm_respawn

execute as @a[tag=mm_respawn] run tag @e[tag=mm_spawn,tag=mm_actived] remove mm_respawnable
execute as @a[tag=mm_respawn] as @e[tag=mm_spawn,tag=mm_actived] at @s unless entity @a[tag=mm_survivor,distance=..16] run tag @s add mm_respawnable
execute as @a[tag=mm_respawn] unless entity @e[tag=mm_spawn,tag=mm_actived,tag=mm_respawnable] run tag @e[tag=mm_spawn,limit=1,sort=random,tag=mm_actived] add mm_respawnable
execute as @a[tag=mm_infected,tag=mm_respawn] run title @s subtitle {"text":"感染所有玩家!","color":"yellow"}
execute as @a[tag=mm_infected,tag=mm_respawn] run title @s title {"text":"身份:感染者","color":"red"}
execute as @a[tag=mm_alpha,tag=mm_respawn] run title @s subtitle ""
execute as @a[tag=mm_alpha,tag=mm_respawn] run title @s title {"text":"已重生!","color":"green"}
execute as @a[tag=mm_respawn] at @e[tag=mm_spawn,limit=1,sort=random,tag=mm_actived,tag=mm_respawnable] run tp ~ ~2 ~ 

execute as @a[tag=mm_respawn] run tag @s remove mm_will_respawn
execute as @a[tag=mm_respawn] run tag @s remove mm_respawn


#死亡
function mm:game/game_module/die
execute as @a[tag=mm_victim] run scoreboard players set @s mm_gold_ingot 0
execute as @a[tag=mm_victim] run scoreboard players set @s mm_arrow 0
execute as @a[tag=mm_victim] run scoreboard players set @s mm_thrown_knife 0

##数据运算
execute if entity @a[tag=mm_victim] run function mm:scoreboards/calculate_data

##死亡
###感染者
execute as @a[tag=mm_victim,tag=mm_infected] run tag @s add mm_infected_died

execute as @a[tag=mm_victim,tag=mm_infected_died] if entity @a[tag=mm_alpha,tag=!mm_dead] run tag @s add mm_will_respawn
execute as @a[tag=mm_victim,tag=mm_infected_died] if entity @a[tag=mm_alpha,tag=!mm_dead] run scoreboard players set @s mm_res_tick 20
execute as @a[tag=mm_victim,tag=mm_infected_died] if entity @a[tag=mm_alpha,tag=!mm_dead] run scoreboard players set @s mm_res_second 5

execute as @a[tag=mm_victim,tag=mm_infected_died] unless entity @a[tag=mm_alpha,tag=!mm_dead] run tellraw @a[tag=mm_survivor,scores={mm_death_type=..-1}] {"text":"杀死一名感染者!","color":"gold"} 
execute as @a[tag=mm_victim,tag=mm_infected_died] unless entity @a[tag=mm_alpha,tag=!mm_dead] run tag @s add mm_dead
execute as @a[tag=mm_victim,tag=mm_infected_died] unless entity @a[tag=mm_alpha,tag=!mm_dead] run function mm:scoreboards/calculate_data
execute as @a[tag=mm_victim,tag=mm_infected_died] unless entity @a[tag=mm_alpha,tag=!mm_dead] at @s run tellraw @a[distance=0.01..] [{"selector":"@s","color":"gray"},{"text":"死了! 还剩余","color":"yellow"},{"score":{"objective":"mm_data","name":"infected_real_left"},"color":"aqua"},{"text":"名感染者!","color":"yellow"}]
execute as @a[tag=mm_victim,tag=mm_infected_died] unless entity @a[tag=mm_alpha,tag=!mm_dead] run function mm:game/game_module/death_cause_display
execute as @a[tag=mm_victim,tag=mm_infected_died] unless entity @a[tag=mm_alpha,tag=!mm_dead] run effect give @s blindness 3 1 true
execute as @a[tag=mm_victim,tag=mm_infected_died] unless entity @a[tag=mm_alpha,tag=!mm_dead] run scoreboard players add @s mm_stats_8 1
execute as @a[tag=mm_victim,tag=mm_infected_died] unless entity @a[tag=mm_alpha,tag=!mm_dead] run function mm:game/game_module/lastwords
execute as @a[tag=mm_victim,tag=mm_infected_died] unless entity @a[tag=mm_alpha,tag=!mm_dead] run function mm:game/game_module/death_cry
execute as @a[tag=mm_victim,tag=mm_infected_died] unless entity @a[tag=mm_alpha,tag=!mm_dead] run function mm:game/game_module/dead_body

execute as @a[tag=mm_victim,tag=mm_infected_died] run tag @s remove mm_infected_died

###母体
execute as @a[tag=mm_victim,tag=mm_alpha,tag=mm_exposed] run tag @s add mm_alpha_died
execute as @a[tag=mm_victim,tag=mm_alpha,tag=!mm_exposed,tag=!mm_invincible] run tag @s add mm_alpha_exposed

execute as @a[tag=mm_victim,tag=mm_alpha_died,scores={mm_death_type=1..100}] run tellraw @a[tag=mm_survivor,scores={mm_death_type=..-1}] {"text":"击杀了母体!","color":"gold"} 
execute as @a[tag=mm_victim,tag=mm_alpha_died,scores={mm_death_type=1..100}] run tellraw @a [{"selector":"@a[tag=mm_survivor,scores={mm_death_type=..-1}]","color":"gray"},{"text":"击杀了母体","color":"yellow"},{"text":"! 感染者将无法重生!","color":"yellow"}]
execute as @a[tag=mm_victim,tag=mm_alpha_died,scores={mm_death_type=101..}] run tellraw @a [{"text":"母体","color":"yellow"},{"text":"死于自然环境! 感染者将无法重生!","color":"yellow"}]
execute as @a[tag=mm_victim,tag=mm_alpha_died] as @a at @s run playsound minecraft:entity.lightning_bolt.thunder player @s
execute as @a[tag=mm_victim,tag=mm_alpha_died] as @a[tag=mm_survivor] run title @s subtitle {"text":"感染者将无法重生!","color":"yellow"}
execute as @a[tag=mm_victim,tag=mm_alpha_died] as @a[tag=mm_survivor] run title @s title {"text":"母体死亡!","color":"red"}
execute as @a[tag=mm_victim,tag=mm_alpha_died] as @a[tag=mm_infected] run title @s subtitle {"text":"你将无法重生!","color":"yellow"}
execute as @a[tag=mm_victim,tag=mm_alpha_died] as @a[tag=mm_infected] run title @s title {"text":"母体死亡!","color":"red"}
execute as @a[tag=mm_victim,tag=mm_alpha_died] run function mm:game/game_module/death_cause_display
execute as @a[tag=mm_victim,tag=mm_alpha_died] run effect give @s blindness 3 1 true
execute as @a[tag=mm_victim,tag=mm_alpha_died] run function mm:game/game_module/lastwords
execute as @a[tag=mm_victim,tag=mm_alpha_died] run function mm:game/game_module/death_cry
execute as @a[tag=mm_victim,tag=mm_alpha_died] run function mm:game/game_module/dead_body
execute as @a[tag=mm_victim,tag=mm_alpha_died] run tag @s add mm_dead

execute as @a[tag=mm_victim,tag=mm_alpha_exposed,scores={mm_death_type=1..100}] run tellraw @a[tag=mm_survivor,scores={mm_death_type=..-1}] {"text":"揭露了母体!","color":"gold"} 
execute as @a[tag=mm_victim,tag=mm_alpha_exposed,scores={mm_death_type=1..100}] run tellraw @a [{"text":"母体","color":"yellow"},{"selector":"@s","color":"gray"},{"text":"因","color":"yellow"},{"selector":"@a[tag=mm_survivor,scores={mm_death_type=..-1}]","color":"gray"},{"text":"而被揭露!","color":"yellow"}]
execute as @a[tag=mm_victim,tag=mm_alpha_exposed,scores={mm_death_type=101..}] run tellraw @a [{"text":"母体","color":"yellow"},{"selector":"@s","color":"gray"},{"text":"死于自然环境而被揭露!","color":"yellow"}]
execute as @a[tag=mm_victim,tag=mm_alpha_exposed] run tag @s add mm_exposed
execute as @a[tag=mm_victim,tag=mm_alpha_exposed] run tag @s add mm_will_respawn
execute as @a[tag=mm_victim,tag=mm_alpha_exposed] run clear @s bow
execute as @a[tag=mm_victim,tag=mm_alpha_exposed] run clear @s iron_chestplate
execute as @a[tag=mm_victim,tag=mm_alpha_exposed] run team join mm_infected @s
execute as @a[tag=mm_victim,tag=mm_alpha_exposed] run scoreboard players set @s mm_res_tick 20
execute as @a[tag=mm_victim,tag=mm_alpha_exposed] run scoreboard players set @s mm_res_second 5

execute as @a[tag=mm_victim,tag=mm_alpha_died] run tag @s remove mm_alpha_died
execute as @a[tag=mm_victim,tag=mm_alpha_exposed] run tag @s remove mm_alpha_exposed

###幸存者
execute as @a[tag=mm_victim,tag=mm_survivor] run tag @s add mm_survivor_died

execute as @a[tag=mm_victim,tag=mm_survivor_died,scores={mm_death_type=1..100}] if entity @a[tag=mm_infected,scores={mm_death_type=..-1}] run tellraw @a [{"selector":"@a[tag=mm_infected,scores={mm_death_type=..-1}]","color":"gray"},{"text":"感染了","color":"gray"},{"selector":"@s","color":"gray"},{"text":"!","color":"gray"}]
execute as @a[tag=mm_victim,tag=mm_survivor_died,scores={mm_death_type=1..100}] if entity @a[tag=mm_alpha,tag=mm_exposed,scores={mm_death_type=..-1}] run tellraw @a [{"selector":"@a[tag=mm_alpha,tag=mm_exposed,scores={mm_death_type=..-1}]","color":"gray"},{"text":"感染了","color":"gray"},{"selector":"@s","color":"gray"},{"text":"!","color":"gray"}]
execute as @a[tag=mm_victim,tag=mm_survivor_died,scores={mm_death_type=1..100}] if entity @a[tag=mm_alpha,tag=!mm_exposed,scores={mm_death_type=..-1}] run tellraw @a [{"text":"母体","color":"yellow"},{"text":"感染了","color":"gray"},{"selector":"@s","color":"gray"},{"text":"!","color":"gray"}]
execute as @a[tag=mm_victim,tag=mm_survivor_died,scores={mm_death_type=100..}] run tellraw @a [{"selector":"@s","color":"gray"},{"text":"死于自然环境而被感染!","color":"gray"}]
execute as @a[tag=mm_victim,tag=mm_survivor_died] if score infected_tick mm_main matches -1 if entity @a[tag=mm_alpha,tag=!mm_dead] run tellraw @a {"text":"母体位置再次隐藏!","color":"green"}
execute as @a[tag=mm_victim,tag=mm_survivor_died] if score infected_tick mm_main matches -1 unless entity @a[tag=mm_alpha,tag=!mm_dead] if score infected_real_left mm_data matches ..1 run tellraw @a {"text":"最后一名感染者位置再次隐藏!","color":"green"}
execute as @a[tag=mm_victim,tag=mm_survivor_died] run scoreboard players set infected_tick mm_main 600
execute as @a[tag=mm_victim,tag=mm_survivor_died] run scoreboard players operation @s mm_survive_time = game_time mm_settings
execute as @a[tag=mm_victim,tag=mm_survivor_died] run scoreboard players operation @s mm_survive_time -= game_second mm_main
execute as @a[tag=mm_victim,tag=mm_survivor_died] run tag @s remove mm_survivor
execute as @a[tag=mm_victim,tag=mm_survivor_died] run tag @s add mm_infected
execute as @a[tag=mm_victim,tag=mm_survivor_died] run team join mm_infected @s
execute as @a[tag=mm_victim,tag=mm_survivor_died] run tag @s add mm_will_respawn
execute as @a[tag=mm_victim,tag=mm_survivor_died] run clear @s bow
execute as @a[tag=mm_victim,tag=mm_survivor_died] run clear @s iron_chestplate
execute as @a[tag=mm_victim,tag=mm_survivor_died] run loot replace entity @s hotbar.0 loot mm:knife
execute as @a[tag=mm_victim,tag=mm_survivor_died] run scoreboard players set @s mm_res_tick 20
execute as @a[tag=mm_victim,tag=mm_survivor_died] run scoreboard players set @s mm_res_second 5

execute as @a[tag=mm_victim,tag=mm_survivor_died] run tag @s remove mm_survivor_died

##数据运算
execute if entity @a[tag=mm_victim] run function mm:scoreboards/calculate_data

execute as @a[tag=mm_victim] run tag @s remove mm_victim

execute as @a[scores={mm_death_type=1..}] run scoreboard players set @s mm_death_type 0
execute as @a[scores={mm_death_type=..-1}] run scoreboard players set @s mm_death_type 0