#等待大厅
execute if score game_start mm_main matches 0..1 run function mm:waiting/main
#经典模式
execute if score game_start mm_main matches 2 if score game_mode mm_main matches 0 run function mm:game/classic/main
#双倍模式
execute if score game_start mm_main matches 2 if score game_mode mm_main matches 1 run function mm:game/double_up/main
#感染v1模式
execute if score game_start mm_main matches 2 if score game_mode mm_main matches 2 run function mm:game/infection_v1/main
#警匪对决
execute if score game_start mm_main matches 2 if score game_mode mm_main matches 3 run function mm:game/showdown/main
#人机大战模式
execute if score game_start mm_main matches 2 if score game_mode mm_main matches 4 run function mm:game/human_robot_war/main
#道具模式
execute if score game_start mm_main matches 2 if score game_mode mm_main matches 5 run function mm:game/prop/main
#生存模式
execute if score game_start mm_main matches 2 if score game_mode mm_main matches 6 run function mm:game/survival/main
#感染v2模式
execute if score game_start mm_main matches 2 if score game_mode mm_main matches 7 run function mm:game/infection_v2/main
#道具双倍模式
execute if score game_start mm_main matches 2 if score game_mode mm_main matches 8 run function mm:game/double_up/main


#默认值
##成为杀手几率
execute as @a unless score @s mm_m_chance matches 1.. run scoreboard players set @s mm_m_chance 1
##成为侦探几率
execute as @a unless score @s mm_d_chance matches 1.. run scoreboard players set @s mm_d_chance 1
##成为母体几率
execute as @a unless score @s mm_a_chance matches 1.. run scoreboard players set @s mm_a_chance 1
##身份几率增幅
execute as @a unless score @s mm_chance_amp matches 1.. run scoreboard players set @s mm_chance_amp 1


#计时
execute unless score timer mm_main matches 1..10 run scoreboard players set timer mm_main 10
scoreboard players remove timer mm_main 1
execute if score timer mm_main matches 0 if score game_start mm_main matches 0..1 run function mm:map_correction

execute unless score timer_short mm_main matches 1..3 run scoreboard players add sight_effect_phase mm_main 1
execute unless score sight_effect_phase mm_main matches 1..8 run scoreboard players set sight_effect_phase mm_main 1
execute unless score timer_short mm_main matches 1..3 run scoreboard players set timer_short mm_main 4
scoreboard players remove timer_short mm_main 1

execute if score timer_uninstall mm_main matches 1.. run scoreboard players remove timer_uninstall mm_main 1


#计分板刷新
execute if score timer mm_main matches 0 unless score game_start mm_main matches 3 run function mm:scoreboards/main


#装饰品菜单
execute if score timer mm_main matches 0 run function mm:cosmetics/main


#数据查询菜单
execute if score timer mm_main matches 0 run function mm:stats/main


#游戏规则
##冒险模式
execute if score game_start mm_main matches 0..1 run gamemode adventure @a[gamemode=spectator]
execute if score game_start mm_main matches 0..1 run gamemode adventure @a[gamemode=survival]


#遗体传送
execute as @e[tag=mm_dead_body_teleporter,tag=!mm_ready] at @s unless block ~ ~-0.1 ~ #mm:thrown_knife_permeable run tag @s add mm_ready

execute as @e[limit=1,sort=nearest,tag=mm_dead_body_teleporter,tag=mm_ready] run tag @s add mm_dead_body_spawn
execute as @e[tag=mm_dead_body_teleporter,tag=mm_dead_body_spawn] at @s unless block ~ ~-0.1 ~ #mm:thrown_knife_permeable positioned ~ 0 ~ run tp @e[tag=mm_dead_body,tag=!mm_teleported_dead_body,limit=1,sort=nearest] @s
execute as @e[tag=mm_dead_body_teleporter,tag=mm_dead_body_spawn] at @s unless block ~ ~-0.1 ~ #mm:thrown_knife_permeable run tag @e[tag=mm_dead_body,tag=!mm_teleported_dead_body,limit=1,sort=nearest] add mm_teleported_dead_body
execute as @e[tag=mm_dead_body_teleporter,tag=mm_dead_body_spawn] at @s unless block ~ ~-0.1 ~ #mm:thrown_knife_permeable run kill @s

execute as @e[tag=mm_dead_body_teleporter,tag=!mm_ready] at @s if block ~ ~-0.1 ~ #mm:thrown_knife_permeable run function mm:game/game_module/dead_body_teleporter


#遗体修正
execute as @e[tag=mm_dead_body,nbt=!{SleepingY:0}] run tp ~ -128 ~
execute as @e[tag=mm_dead_body,nbt=!{SleepingY:0}] run kill @s


#生成遗言
execute as @e[limit=1,sort=nearest,tag=mm_lastwords_spawner] run tag @s add mm_lastwords_spawn

execute as @e[tag=mm_lastwords_spawner,tag=mm_lastwords_spawn] at @s run summon minecraft:armor_stand ~ ~-0.7 ~ {Invisible:1,NoGravity:1,CustomNameVisible:1,Tags:["mm_lastwords","mm_title"]}
execute as @e[tag=mm_lastwords_spawner,tag=mm_lastwords_spawn] at @s run summon minecraft:armor_stand ~ ~-1 ~ {Invisible:1,NoGravity:1,CustomNameVisible:1,Tags:["mm_lastwords","mm_text"]}

execute as @e[tag=mm_lastwords_spawner,tag=mm_lastwords_spawn] at @s run data modify entity @e[tag=!mm_lastword_modified,tag=mm_title,tag=mm_lastwords,limit=1,sort=nearest] CustomName set from entity @e[type=item,nbt={Item:{tag:{Lastwords:1,LastwordsTitle:1}}},limit=1,sort=nearest] Item.tag.display.Name
execute as @e[tag=mm_lastwords_spawner,tag=mm_lastwords_spawn] at @s run data modify entity @e[tag=!mm_lastword_modified,tag=mm_text,tag=mm_lastwords,limit=1,sort=nearest] CustomName set from entity @e[type=item,nbt={Item:{tag:{Lastwords:1,LastwordsText:1}}},limit=1,sort=nearest] Item.tag.display.Name

execute as @e[tag=mm_lastwords_spawner,tag=mm_lastwords_spawn] at @s run scoreboard players set @e[tag=!mm_lastword_modified,tag=mm_title,tag=mm_lastwords,limit=1,sort=nearest] mm_cd_tick 20
execute as @e[tag=mm_lastwords_spawner,tag=mm_lastwords_spawn] if score customize_lastwords_display_time mm_settings matches 0 at @s run scoreboard players set @e[tag=!mm_lastword_modified,tag=mm_title,tag=mm_lastwords,limit=1,sort=nearest] mm_cd_second 5
execute as @e[tag=mm_lastwords_spawner,tag=mm_lastwords_spawn] if score customize_lastwords_display_time mm_settings matches 1 at @s run scoreboard players operation @e[tag=!mm_lastword_modified,tag=mm_title,tag=mm_lastwords,limit=1,sort=nearest] mm_cd_second = lastwords_display_time mm_settings

execute as @e[tag=mm_lastwords_spawner,tag=mm_lastwords_spawn] at @s run scoreboard players set @e[tag=!mm_lastword_modified,tag=mm_text,tag=mm_lastwords,limit=1,sort=nearest] mm_cd_tick 20
execute as @e[tag=mm_lastwords_spawner,tag=mm_lastwords_spawn] if score customize_lastwords_display_time mm_settings matches 0 at @s run scoreboard players set @e[tag=!mm_lastword_modified,tag=mm_text,tag=mm_lastwords,limit=1,sort=nearest] mm_cd_second 5
execute as @e[tag=mm_lastwords_spawner,tag=mm_lastwords_spawn] if score customize_lastwords_display_time mm_settings matches 1 at @s run scoreboard players operation @e[tag=!mm_lastword_modified,tag=mm_text,tag=mm_lastwords,limit=1,sort=nearest] mm_cd_second = lastwords_display_time mm_settings

execute as @e[tag=mm_lastwords_spawner,tag=mm_lastwords_spawn] at @s run tag @e[tag=!mm_lastword_modified,tag=mm_title,tag=mm_lastwords,limit=1,sort=nearest] add mm_lastword_modified
execute as @e[tag=mm_lastwords_spawner,tag=mm_lastwords_spawn] at @s run tag @e[tag=!mm_lastword_modified,tag=mm_text,tag=mm_lastwords,limit=1,sort=nearest] add mm_lastword_modified

execute as @e[tag=mm_lastwords_spawner,tag=mm_lastwords_spawn] at @s run kill @e[type=item,nbt={Item:{tag:{Lastwords:1,LastwordsTitle:1}}},limit=1,sort=nearest]
execute as @e[tag=mm_lastwords_spawner,tag=mm_lastwords_spawn] at @s run kill @e[type=item,nbt={Item:{tag:{Lastwords:1,LastwordsText:1}}},limit=1,sort=nearest]

execute as @e[tag=mm_lastwords_spawner,tag=mm_lastwords_spawn] run kill @s


#游戏结束返回大厅
execute if score return_lobby mm_main matches 0.. run scoreboard players remove return_lobby mm_main 1
execute if score return_lobby mm_main matches 0 run function mm:waiting/reset_status_end
execute if score return_lobby mm_main matches 0 at @e[tag=mm_lobby_spawn,limit=1,tag=mm_actived] run tp @a ~ ~2 ~
execute if score return_lobby mm_main matches 0 run scoreboard players set game_start mm_main 0


