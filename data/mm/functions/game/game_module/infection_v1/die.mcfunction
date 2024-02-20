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
execute as @a[tag=mm_respawn] run title @s subtitle {"text":"感染所有玩家!","color":"yellow"}
execute as @a[tag=mm_respawn] run title @s title {"text":"身份:感染者","color":"red"}
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
execute as @a[tag=mm_victim,tag=mm_survivor,scores={mm_death_type=1..100}] if entity @a[tag=mm_infected,scores={mm_death_type=..-1}] run tellraw @a [{"selector":"@a[tag=mm_infected,scores={mm_death_type=..-1}]","color":"gray"},{"text":"感染了","color":"gray"},{"selector":"@s","color":"gray"},{"text":"!","color":"gray"}]
execute as @a[tag=mm_victim,tag=mm_survivor,scores={mm_death_type=101..}] run tellraw @a [{"selector":"@s","color":"gray"},{"text":"死于自然环境而被感染!","color":"gray"}]

execute as @a[tag=mm_victim,tag=mm_survivor] run scoreboard players operation @s mm_survive_time = game_time mm_settings
execute as @a[tag=mm_victim,tag=mm_survivor] run scoreboard players operation @s mm_survive_time -= game_second mm_main

execute as @a[tag=mm_victim,tag=mm_survivor] run clear @s bow
execute as @a[tag=mm_victim,tag=mm_survivor] run clear @s iron_chestplate
execute as @a[tag=mm_victim,tag=mm_survivor] run loot replace entity @s hotbar.0 loot mm:knife

execute as @a[tag=mm_victim] run scoreboard players set @s mm_res_tick 20
execute as @a[tag=mm_victim] run scoreboard players set @s mm_res_second 5

execute as @a[tag=mm_victim] run tag @s add mm_will_respawn
execute as @a[tag=mm_victim] run tag @s remove mm_survivor
execute as @a[tag=mm_victim] run tag @s add mm_infected
execute as @a[tag=mm_victim] run team join mm_infected @s

##数据运算
execute if entity @a[tag=mm_victim] run function mm:scoreboards/calculate_data

execute as @a[tag=mm_victim] run tag @s remove mm_victim

execute as @a[scores={mm_death_type=1..}] run scoreboard players set @s mm_death_type 0
execute as @a[scores={mm_death_type=..-1}] run scoreboard players set @s mm_death_type 0