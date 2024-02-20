#重置状态和队伍
function mm:waiting/reset_status
effect give @a minecraft:instant_health 1 20 true
effect give @a minecraft:saturation 1 20 true

#开始游戏
tellraw @a {"text":"游戏已被管理员强制开始!","color":"green"}
scoreboard players set game_start mm_main 2


#初始化游戏时间
scoreboard players set game_tick mm_main 20
scoreboard players operation game_second mm_main = game_time mm_settings


#传送玩家
execute as @a at @e[tag=mm_spawn,limit=1,sort=random,tag=mm_actived] run tp ~ ~2 ~


#随机装饰品
execute as @a[scores={mm_knife_skin=0}] run tag @s add mm_random_knife_skin
execute as @a[scores={mm_projectile=0}] run tag @s add mm_random_projectile
execute as @a[scores={mm_lastwords=0}] run tag @s add mm_random_lastwords
execute as @a[scores={mm_death_cry=0}] run tag @s add mm_random_death_cry
execute as @a[scores={mm_dead_body=0}] run tag @s add mm_random_dead_body

execute as @a[tag=mm_random_knife_skin] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["mm_knife_skin_random_marker"]}
execute as @a[tag=mm_random_knife_skin] at @s store result score @s mm_knife_skin run data get entity @e[tag=mm_knife_skin_random_marker,limit=1,sort=nearest] UUID[0]
execute as @a[tag=mm_random_knife_skin] run scoreboard players operation @s mm_knife_skin %= cosmetics_knife_skin_count mm_main
execute as @a[tag=mm_random_knife_skin] run scoreboard players add @s mm_knife_skin 1
execute as @a[tag=mm_random_knife_skin] at @s run kill @e[tag=mm_knife_skin_random_marker,limit=1,sort=nearest]

execute as @a[tag=mm_random_projectile] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["mm_projectile_random_marker"]}
execute as @a[tag=mm_random_projectile] at @s store result score @s mm_projectile run data get entity @e[tag=mm_projectile_random_marker,limit=1,sort=nearest] UUID[0]
execute as @a[tag=mm_random_projectile] run scoreboard players operation @s mm_projectile %= cosmetics_projectile_count mm_main
execute as @a[tag=mm_random_projectile] run scoreboard players add @s mm_projectile 1
execute as @a[tag=mm_random_projectile] at @s run kill @e[tag=mm_projectile_random_marker,limit=1,sort=nearest]

execute as @a[tag=mm_random_lastwords] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["mm_lastwords_random_marker"]}
execute as @a[tag=mm_random_lastwords] at @s store result score @s mm_lastwords run data get entity @e[tag=mm_lastwords_random_marker,limit=1,sort=nearest] UUID[0]
execute as @a[tag=mm_random_lastwords] run scoreboard players operation @s mm_lastwords %= cosmetics_lastwords_count mm_main
execute as @a[tag=mm_random_lastwords] run scoreboard players add @s mm_lastwords 1
execute as @a[tag=mm_random_lastwords] at @s run kill @e[tag=mm_lastwords_random_marker,limit=1,sort=nearest]

execute as @a[tag=mm_random_death_cry] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["mm_death_cry_random_marker"]}
execute as @a[tag=mm_random_death_cry] at @s store result score @s mm_death_cry run data get entity @e[tag=mm_death_cry_random_marker,limit=1,sort=nearest] UUID[0]
execute as @a[tag=mm_random_death_cry] run scoreboard players operation @s mm_death_cry %= cosmetics_death_cry_count mm_main
execute as @a[tag=mm_random_death_cry] run scoreboard players add @s mm_death_cry 1
execute as @a[tag=mm_random_death_cry] at @s run kill @e[tag=mm_death_cry_random_marker,limit=1,sort=nearest]

execute as @a[tag=mm_random_dead_body] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["mm_dead_body_random_marker"]}
execute as @a[tag=mm_random_dead_body] at @s store result score @s mm_dead_body run data get entity @e[tag=mm_dead_body_random_marker,limit=1,sort=nearest] UUID[0]
execute as @a[tag=mm_random_dead_body] run scoreboard players operation @s mm_dead_body %= cosmetics_dead_body_count mm_main
execute as @a[tag=mm_random_dead_body] run scoreboard players add @s mm_dead_body 1
execute as @a[tag=mm_random_dead_body] at @s run kill @e[tag=mm_dead_body_random_marker,limit=1,sort=nearest]


#经典模式
execute if score game_mode mm_main matches 0 run function mm:game/classic/start
#双倍模式
execute if score game_mode mm_main matches 1 run function mm:game/double_up/start
#感染v1模式
execute if score game_mode mm_main matches 2 run function mm:game/infection_v1/start
#警匪对决
execute if score game_mode mm_main matches 3 run function mm:game/showdown/start
#人机大战模式
execute if score game_mode mm_main matches 4 run function mm:game/human_robot_war/start
#道具模式
execute if score game_mode mm_main matches 5 run function mm:game/classic/start
#生存模式
execute if score game_mode mm_main matches 6 run function mm:game/survival/start
#感染v2模式
execute if score game_mode mm_main matches 7 run function mm:game/infection_v2/start
#道具双倍模式
execute if score game_mode mm_main matches 8 run function mm:game/double_up/start