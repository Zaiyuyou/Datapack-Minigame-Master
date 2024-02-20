#重生
execute as @a[tag=mm_will_respawn] if score @s mm_cd_tick matches 20 run title @s subtitle [{"text":"你将在","color":"yellow"},{"score":{"objective":"mm_cd_second","name":"@s"},"color":"red"},{"text":"秒后重生!","color":"yellow"}]
execute as @a[tag=mm_will_respawn] if score @s mm_cd_tick matches 20 run title @s title {"text":"你死了!","color":"red"}

execute as @a[tag=mm_will_respawn] run scoreboard players remove @s mm_cd_tick 1
execute as @a[tag=mm_will_respawn] if score @s mm_cd_tick matches 0 run scoreboard players remove @s mm_cd_second 1
execute as @a[tag=mm_will_respawn] if score @s mm_cd_tick matches 0 run scoreboard players set @s mm_cd_tick 20

execute as @a[tag=mm_will_respawn] if score @s mm_cd_tick matches 20 if score @s mm_cd_second matches 0 run tag @s add mm_respawn

execute as @a[tag=mm_respawn] run tag @e[tag=mm_spawn,tag=mm_actived] remove mm_respawnable
execute as @a[tag=mm_respawn,tag=mm_outlaw] as @e[tag=mm_spawn,tag=mm_actived] at @s unless entity @a[tag=mm_sheriff,distance=..16] run tag @s add mm_respawnable
execute as @a[tag=mm_respawn,tag=mm_sheriff] as @e[tag=mm_spawn,tag=mm_actived] at @s unless entity @a[tag=mm_outlaw,distance=..16] run tag @s add mm_respawnable
execute as @a[tag=mm_respawn] unless entity @e[tag=mm_spawn,tag=mm_actived,tag=mm_respawnable] run tag @e[tag=mm_spawn,limit=1,sort=random,tag=mm_actived] add mm_respawnable
execute as @a[tag=mm_respawn] run title @s subtitle ""
execute as @a[tag=mm_respawn] run title @s title {"text":"已重生!","color":"green"}
execute as @a[tag=mm_respawn] at @e[tag=mm_spawn,limit=1,sort=random,tag=mm_actived,tag=mm_respawnable] run tp ~ ~2 ~ 

execute as @a[tag=mm_respawn] run tag @s remove mm_will_respawn
execute as @a[tag=mm_respawn] run tag @s remove mm_respawn


#死亡
function mm:game/game_module/die
execute as @a[tag=mm_victim] run scoreboard players set @s mm_gold_ingot 0
execute as @a[tag=mm_victim] run scoreboard players set @s mm_thrown_knife 0

##数据运算
execute if entity @a[tag=mm_victim] run function mm:scoreboards/calculate_data

##死亡
execute as @a[tag=mm_victim] if entity @a[scores={mm_death_type=..-1}] run tellraw @s [{"selector":"@a[scores={mm_death_type=..-1}]","color":"gray"},{"text":"杀死了你!","color":"gray"}]
execute as @a[tag=mm_victim] if entity @a[scores={mm_death_type=..-1}] run tellraw @a[scores={mm_death_type=..-1}] [{"text":"你杀死了","color":"gray"},{"selector":"@s","color":"gray"},{"text":"!","color":"gray"}]

execute as @a[tag=mm_victim] run scoreboard players add @s mm_death_count 1

execute as @a[tag=mm_victim] run scoreboard players set @s mm_cd_tick 20
execute as @a[tag=mm_victim] run scoreboard players set @s mm_cd_second 5

##遗言
execute as @a[tag=mm_victim] run function mm:game/game_module/lastwords

##亡语
execute as @a[tag=mm_victim] run function mm:game/game_module/death_cry

##遗体
execute as @a[tag=mm_victim] run function mm:game/game_module/dead_body

execute as @a[tag=mm_victim] run tag @s add mm_will_respawn

##数据运算
execute if entity @a[tag=mm_victim] run function mm:scoreboards/calculate_data

execute as @a[tag=mm_victim] run tag @s remove mm_victim

execute as @a[scores={mm_death_type=1..}] run scoreboard players set @s mm_death_type 0
execute as @a[scores={mm_death_type=..-1}] run scoreboard players set @s mm_death_type 0