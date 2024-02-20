#重置缩圈
function mm:border_reload

#状态
tag @a remove mm_murderer
tag @a remove mm_detective
tag @a remove mm_innocent
tag @a remove mm_hero
tag @a remove mm_dead
tag @a remove mm_origin
tag @a remove mm_infected
tag @a remove mm_survivor
tag @a remove mm_outlaw
tag @a remove mm_sheriff
tag @a remove mm_human
tag @a remove mm_robot
tag @a remove mm_alpha
tag @a remove mm_exposed
tag @a remove mm_invincible
tag @a remove mm_uninvincible
tag @a remove mm_will_respawn
tag @a remove mm_spectator
tag @a remove mm_ranked


#队伍
##杀手
team remove mm_murderer
team add mm_murderer
team modify mm_murderer nametagVisibility hideForOtherTeams
execute if score murderer_friendly_fire mm_settings matches 0 run team modify mm_murderer friendlyFire false
execute if score murderer_friendly_fire mm_settings matches 1..2 run team modify mm_murderer friendlyFire true
team modify mm_murderer collisionRule never
##平民
team remove mm_innocent
team add mm_innocent
team modify mm_innocent nametagVisibility never
team modify mm_innocent friendlyFire true
team modify mm_innocent collisionRule never
##幸存者
team remove mm_survivor
team add mm_survivor
team modify mm_survivor color green
team modify mm_survivor nametagVisibility never
team modify mm_survivor friendlyFire true
team modify mm_survivor collisionRule never
##感染者
team remove mm_infected
team add mm_infected
team modify mm_infected color red
team modify mm_infected nametagVisibility never
team modify mm_infected friendlyFire false
team modify mm_infected collisionRule never
##警长
team remove mm_sheriff
team add mm_sheriff
team modify mm_sheriff color aqua
team modify mm_sheriff nametagVisibility hideForOtherTeams
team modify mm_sheriff friendlyFire false
team modify mm_sheriff collisionRule never
##逃犯
team remove mm_outlaw
team add mm_outlaw
team modify mm_outlaw color red
team modify mm_outlaw nametagVisibility hideForOtherTeams
team modify mm_outlaw friendlyFire false
team modify mm_outlaw collisionRule never
##人类
team remove mm_human
team add mm_human
team modify mm_human nametagVisibility never
team modify mm_human friendlyFire true
team modify mm_human collisionRule never
##机器人
team remove mm_robot
team add mm_robot
team modify mm_robot nametagVisibility never
team modify mm_robot friendlyFire true
team modify mm_robot collisionRule never


#计分板
scoreboard objectives remove mm_stun_tick
scoreboard objectives add mm_stun_tick dummy
scoreboard players set @a mm_stun_tick -1

scoreboard objectives remove mm_death_type
scoreboard objectives add mm_death_type dummy
scoreboard players set @a mm_death_type 0

scoreboard objectives remove mm_kill_count
scoreboard objectives add mm_kill_count dummy
scoreboard players set @a mm_kill_count 0

scoreboard objectives remove mm_kill_count_s
scoreboard objectives add mm_kill_count_s dummy
scoreboard players set @a mm_kill_count_s 0

scoreboard objectives remove mm_death_count
scoreboard objectives add mm_death_count dummy
scoreboard players set @a mm_death_count 0

scoreboard objectives remove mm_survive_time
scoreboard objectives add mm_survive_time dummy
scoreboard players set @a mm_survive_time 0

scoreboard objectives remove mm_top_1
scoreboard objectives add mm_top_1 dummy
scoreboard players set @a mm_top_1 0

scoreboard objectives remove mm_top_2
scoreboard objectives add mm_top_2 dummy
scoreboard players set @a mm_top_2 0

scoreboard objectives remove mm_top_3
scoreboard objectives add mm_top_3 dummy
scoreboard players set @a mm_top_3 0

scoreboard objectives remove mm_top_4
scoreboard objectives add mm_top_4 dummy
scoreboard players set @a mm_top_4 0

scoreboard objectives remove mm_cd_second
scoreboard objectives add mm_cd_second dummy
scoreboard players set @a mm_cd_second -1

scoreboard objectives remove mm_cd_tick
scoreboard objectives add mm_cd_tick dummy
scoreboard players set @a mm_cd_tick 0

scoreboard objectives remove mm_sc_second
scoreboard objectives add mm_sc_second dummy
scoreboard players set @a mm_sc_second -1

scoreboard objectives remove mm_sc_tick
scoreboard objectives add mm_sc_tick dummy
scoreboard players set @a mm_sc_tick 0

scoreboard objectives remove mm_throw_second
scoreboard objectives add mm_throw_second dummy
scoreboard players set @a mm_throw_second -1

scoreboard objectives remove mm_throw_tick
scoreboard objectives add mm_throw_tick dummy
scoreboard players set @a mm_throw_tick 0

scoreboard objectives remove mm_total_tick
scoreboard objectives add mm_total_tick dummy

scoreboard objectives remove mm_res_second
scoreboard objectives add mm_res_second dummy
scoreboard players set @a mm_res_second -1

scoreboard objectives remove mm_res_tick
scoreboard objectives add mm_res_tick dummy
scoreboard players set @a mm_res_tick 0

scoreboard objectives remove mm_gold_ingot
scoreboard objectives add mm_gold_ingot dummy
scoreboard players set @a mm_gold_ingot 0

scoreboard objectives remove mm_gold_ingot_last
scoreboard objectives add mm_gold_ingot_last dummy
scoreboard players set @a mm_gold_ingot_last 0

scoreboard objectives remove mm_arrow
scoreboard objectives add mm_arrow dummy
scoreboard players set @a mm_arrow 0

scoreboard objectives remove mm_arrow_last
scoreboard objectives add mm_arrow_last dummy
scoreboard players set @a mm_arrow_last 0

scoreboard objectives remove mm_life
scoreboard objectives add mm_life dummy
scoreboard players set @a mm_life 0

scoreboard objectives remove mm_thrown_knife
scoreboard objectives add mm_thrown_knife dummy
scoreboard players set @a mm_thrown_knife 0

scoreboard objectives remove mm_projectile_l
scoreboard objectives add mm_projectile_l dummy

scoreboard objectives remove mm_players_id
scoreboard objectives add mm_players_id dummy
scoreboard players set @a mm_players_id 0
scoreboard players set number_players mm_main 0

scoreboard objectives remove mm_shoot_det
scoreboard objectives add mm_shoot_det minecraft.used:minecraft.bow

scoreboard players set track_message mm_main 0

scoreboard players set distribute_special_role mm_main 0

scoreboard players set infected_tick mm_main 99999

scoreboard players set spawn_ghost_weight mm_main 2
scoreboard players set ghost_spawn_tick mm_main 20
scoreboard players set ghost_spawn_second mm_main -1

scoreboard players set @a mm_online 1


#玩家编号
function mm:waiting/number_players


#进度
advancement revoke @a everything


#属性
execute as @a run attribute @s generic.knockback_resistance base set 1.0


#其他
kill @e[tag=mm_dropped_bow]
kill @e[type=item]
kill @e[tag=mm_thrown_knife]
kill @e[type=arrow]
kill @e[tag=mm_lastwords]
kill @e[tag=mm_prop]

kill @e[tag=mm_prop_changeless]

tp @e[tag=mm_ghost] ~ -128 ~
kill @e[tag=mm_ghost]
tp @e[tag=mm_projectile_l] ~ -128 ~
kill @e[tag=mm_projectile_l]
execute as @e[tag=mm_dead_body] at @s run fill ~-10 0 ~-10 ~10 0 ~10 air replace #minecraft:beds
kill @e[tag=mm_dead_body]
effect clear @a
clear @a
experience set @a 0 levels
experience set @a 0 points