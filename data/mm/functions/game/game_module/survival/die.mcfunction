#死亡
function mm:game/game_module/die
execute as @a[tag=mm_victim] run scoreboard players set @s mm_gold_ingot 0
execute as @a[tag=mm_victim] run scoreboard players set @s mm_arrow 0
execute as @a[tag=mm_victim] run scoreboard players set @s mm_thrown_knife 0

execute as @a[tag=mm_victim] run scoreboard players add @s mm_stats_8 1

##数据运算
execute if entity @a[tag=mm_victim] run function mm:scoreboards/calculate_data

##三分之一概率生成玩家恶灵
execute as @a[tag=mm_victim] run scoreboard players set random_count_max mm_data 3
execute as @a[tag=mm_victim] run function mm:game/game_module/random_count
execute as @a[tag=mm_victim] at @s if score random_count mm_data matches 0 run tag @s add mm_spawn_player_ghost

execute as @a[tag=mm_spawn_player_ghost] at @s run summon minecraft:skeleton ~ ~2 ~ {HandItems:[{id:"minecraft:bow",Count:1b}],Attributes:[{Name:"generic.follow_range",Base:64.0}],PersistenceRequired:1b,Health:0.1f,Tags:["mm_ghost","mm_player_ghost"],ArmorItems:[{},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:65536}}},{}]}
execute as @a[tag=mm_spawn_player_ghost] at @s run loot replace entity @e[tag=mm_ghost,tag=mm_player_ghost,limit=1,sort=nearest] armor.head loot mm:dead_body/get_head

execute as @a[tag=mm_spawn_player_ghost] run tag @s remove mm_spawn_player_ghost

##计算生存时间
execute as @a[tag=mm_victim] run scoreboard players operation @s mm_survive_time = game_time mm_settings
execute as @a[tag=mm_victim] run scoreboard players operation @s mm_survive_time -= game_second mm_main

##遗言
execute as @a[tag=mm_victim] run function mm:game/game_module/lastwords

##亡语
execute as @a[tag=mm_victim] run function mm:game/game_module/death_cry

##遗体
execute as @a[tag=mm_victim] run function mm:game/game_module/dead_body

execute as @a[tag=mm_victim] run effect give @s blindness 3 1 true
execute as @a[tag=mm_victim] run tag @s add mm_dead
execute as @a[tag=mm_victim,scores={mm_death_type=1..100}] as @a at @s run playsound minecraft:entity.player.death player @s
execute as @a[tag=mm_victim,scores={mm_death_type=101..}] as @a at @s run playsound minecraft:entity.skeleton.death player @s

##数据运算
execute if entity @a[tag=mm_victim] run function mm:scoreboards/calculate_data

execute as @a[tag=mm_victim] run tag @s remove mm_victim

execute as @a[scores={mm_death_type=1..}] run scoreboard players set @s mm_death_type 0
execute as @a[scores={mm_death_type=..-1}] run scoreboard players set @s mm_death_type 0