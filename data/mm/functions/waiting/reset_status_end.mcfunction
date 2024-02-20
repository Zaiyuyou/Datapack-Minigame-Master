#随机装饰品
scoreboard players set @a[tag=mm_random_knife_skin] mm_knife_skin 0
tag @a[tag=mm_random_knife_skin] remove mm_random_knife_skin

scoreboard players set @a[tag=mm_random_projectile] mm_projectile 0
tag @a[tag=mm_random_projectile] remove mm_random_projectile

scoreboard players set @a[tag=mm_random_lastwords] mm_lastwords 0
tag @a[tag=mm_random_lastwords] remove mm_random_lastwords

scoreboard players set @a[tag=mm_random_death_cry] mm_death_cry 0
tag @a[tag=mm_random_death_cry] remove mm_random_death_cry

scoreboard players set @a[tag=mm_random_dead_body] mm_dead_body 0
tag @a[tag=mm_random_dead_body] remove mm_random_dead_body


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


#队伍
team leave @a


#进度
advancement revoke @a everything


#属性
execute as @a run attribute @s generic.knockback_resistance base set 0.0
#重置缩圈
function mm:border_reload

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
function mm:cosmetics/tool_book

#随机地图
scoreboard players operation random_count_max mm_data = map_count mm_main
function mm:game/game_module/random_count
scoreboard players operation selected_map mm_main = random_count mm_data
scoreboard players add selected_map mm_main 1
function mm:map_correction