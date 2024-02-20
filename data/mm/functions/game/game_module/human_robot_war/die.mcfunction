#重生
execute as @a[tag=mm_will_respawn] if score @s mm_cd_tick matches 20 run title @s subtitle [{"text":"你将在","color":"yellow"},{"score":{"objective":"mm_cd_second","name":"@s"},"color":"red"},{"text":"秒后重生!","color":"yellow"}]
execute as @a[tag=mm_will_respawn] if score @s mm_cd_tick matches 20 run title @s title {"text":"你死了!","color":"red"}

execute as @a[tag=mm_will_respawn] run scoreboard players remove @s mm_cd_tick 1
execute as @a[tag=mm_will_respawn] if score @s mm_cd_tick matches 0 run scoreboard players remove @s mm_cd_second 1
execute as @a[tag=mm_will_respawn] if score @s mm_cd_tick matches 0 run scoreboard players set @s mm_cd_tick 20

execute as @a[tag=mm_will_respawn] if score @s mm_cd_tick matches 20 if score @s mm_cd_second matches 0 run tag @s add mm_respawn

execute as @a[tag=mm_respawn] at @e[tag=mm_spawn,limit=1,sort=random,tag=mm_actived] run tp ~ ~2 ~ 

execute as @a[tag=mm_respawn,tag=mm_human] run title @s subtitle {"text":"转化所有机器人!","color":"yellow"}
execute as @a[tag=mm_respawn,tag=mm_human] run title @s title {"text":"队伍:人类","color":"green"}
execute as @a[tag=mm_respawn,tag=mm_robot] run title @s subtitle {"text":"转化所有人类!","color":"yellow"}
execute as @a[tag=mm_respawn,tag=mm_robot] run title @s title {"text":"队伍:机器人","color":"gold"}

execute as @a[tag=mm_respawn] run tag @s remove mm_will_respawn
execute as @a[tag=mm_respawn] run tag @s remove mm_respawn


#死亡
function mm:game/game_module/die
execute as @a[tag=mm_victim] run scoreboard players set @s mm_gold_ingot 0
execute as @a[tag=mm_victim] run scoreboard players set @s mm_thrown_knife 0

##数据运算
execute if entity @a[tag=mm_victim] run function mm:scoreboards/calculate_data

##死亡
execute as @a[tag=mm_victim,tag=mm_human] if entity @a[scores={mm_death_type=..-1},tag=mm_human] run tellraw @a {"text":"某人杀死了他/她的队友并因此受到惩罚!","color":"red"}
execute as @a[tag=mm_victim,tag=mm_robot] if entity @a[scores={mm_death_type=..-1},tag=mm_robot] run tellraw @a {"text":"某人杀死了他/她的队友并因此受到惩罚!","color":"red"}
execute as @a[tag=mm_victim,tag=mm_human] as @a[scores={mm_death_type=..-1},tag=mm_human] run effect give @s slowness 99999 2 true
execute as @a[tag=mm_victim,tag=mm_robot] as @a[scores={mm_death_type=..-1},tag=mm_robot] run effect give @s slowness 99999 2 true

execute as @a[tag=mm_victim] run effect clear @s
execute as @a[tag=mm_victim] run tellraw @a {"text":"某人的身份转化了!","color":"yellow"}

execute as @a[tag=mm_victim,tag=mm_human] run team join mm_robot @s
execute as @a[tag=mm_victim,tag=mm_robot] run team join mm_human @s
execute as @a[tag=mm_victim,team=mm_human] run tag @s remove mm_robot
execute as @a[tag=mm_victim,team=mm_robot] run tag @s remove mm_human
execute as @a[tag=mm_victim,team=mm_human] run tag @s add mm_human
execute as @a[tag=mm_victim,team=mm_robot] run tag @s add mm_robot

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