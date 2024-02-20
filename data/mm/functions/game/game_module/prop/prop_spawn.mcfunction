#计时
execute unless score prop_spawn_tick mm_main matches 1..300 run scoreboard players set prop_spawn_tick mm_main 300
execute if score prop_spawn_tick mm_main matches 1..300 run scoreboard players remove prop_spawn_tick mm_main 1


#道具旋转
execute as @e[tag=mm_prop] at @s run tp @s ~ ~ ~ ~5 ~
execute as @e[tag=mm_prop_changeless] at @s run tp @s ~ ~ ~ ~7 ~

#生成道具
execute if score prop_spawn_tick mm_main matches 0 run scoreboard players set prop_spawn mm_main 0
execute if score prop_spawn_tick mm_main matches 0 run function mm:game/game_module/prop/prop_spawn_call


#随机道具功能
execute as @e[tag=mm_prop,tag=!mm_typed] run tag @s add mm_type_effect

execute as @e[tag=mm_type_effect] run scoreboard players set prop_count mm_main 33
execute as @e[tag=mm_type_effect] store result score @s mm_players_id run data get entity @s UUID[0]
execute as @e[tag=mm_type_effect] run scoreboard players operation @s mm_players_id %= prop_count mm_main

execute as @e[tag=mm_type_effect] if score @s mm_players_id matches 0..9 run scoreboard players set @s mm_players_id 1
execute as @e[tag=mm_type_effect] if score @s mm_players_id matches 10..14 run scoreboard players set @s mm_players_id 2
execute as @e[tag=mm_type_effect] if score @s mm_players_id matches 15..19 run scoreboard players set @s mm_players_id 3
execute as @e[tag=mm_type_effect] if score @s mm_players_id matches 20..24 run scoreboard players set @s mm_players_id 4
execute as @e[tag=mm_type_effect] if score @s mm_players_id matches 25..27 run scoreboard players set @s mm_players_id 5
execute as @e[tag=mm_type_effect] if score @s mm_players_id matches 28..30 run scoreboard players set @s mm_players_id 6
execute as @e[tag=mm_type_effect] if score @s mm_players_id matches 31 run scoreboard players set @s mm_players_id 7
execute as @e[tag=mm_type_effect] if score @s mm_players_id matches 32 run scoreboard players set @s mm_players_id 8

#随机刷新的奖励
execute as @e[tag=mm_type_effect,scores={mm_players_id=1}] run data modify entity @s CustomName set value '{"text":"[普通]少量金锭","color":"green","bold":"true"}'
execute as @e[tag=mm_type_effect,scores={mm_players_id=2}] run data modify entity @s CustomName set value '{"text":"[稀有]时间机器","color":"blue","bold":"true"}'
execute as @e[tag=mm_type_effect,scores={mm_players_id=3}] run data modify entity @s CustomName set value '{"text":"[稀有]随机药水效果","color":"blue","bold":"true"}'
execute as @e[tag=mm_type_effect,scores={mm_players_id=4}] run data modify entity @s CustomName set value '{"text":"[稀有]交换位置","color":"blue","bold":"true"}'
execute as @e[tag=mm_type_effect,scores={mm_players_id=5}] run data modify entity @s CustomName set value '{"text":"[史诗]箭矢转换","color":"dark_purple","bold":"true"}'
execute as @e[tag=mm_type_effect,scores={mm_players_id=6}] run data modify entity @s CustomName set value '{"text":"[史诗]随机传送","color":"dark_purple","bold":"true"}'
execute as @e[tag=mm_type_effect,scores={mm_players_id=7}] run data modify entity @s CustomName set value '{"text":"[传说][?]","color":"gold","bold":"true"}'
execute as @e[tag=mm_type_effect,scores={mm_players_id=8}] run data modify entity @s CustomName set value '{"text":"[传说]复活玩家","color":"gold","bold":"true"}'

#定点刷新的奖励


#execute as @e[name="prop_spawn_changeless",scores={mm_prop_id=1}] at @s run scoreboard players set @e[tag=mm_prop_changeless,limit=1,type=armor_stand,dx=0,dy=3,dz=0] mm_players_id -1

execute as @e[tag=mm_prop_changeless,scores={mm_players_id=-1}] run data modify entity @s CustomName set value '{"text":"[神话]花神的瓶装祝福","color":"light_purple","bold":"true"}'
execute as @e[tag=mm_prop_changeless,scores={mm_players_id=-2}] run data modify entity @s CustomName set value '{"text":"[神话]猎神的美猎神祝","color":"light_purple","bold":"true"}'
execute as @e[tag=mm_prop_changeless,scores={mm_players_id=-3}] run data modify entity @s CustomName set value '{"text":"[神话]酒神的绝世佳酿","color":"light_purple","bold":"true"}'
execute as @e[tag=mm_prop_changeless,scores={mm_players_id=-4}] run data modify entity @s CustomName set value '{"text":"[神话]主神的不明低语","color":"light_purple","bold":"true"}'
execute as @e[tag=mm_prop_changeless,scores={mm_players_id=-5}] run data modify entity @s CustomName set value '{"text":"[神话]耀神的鸣熔美德","color":"light_purple","bold":"true"}'

#重置随机选择
execute as @e[tag=mm_type_effect] run tag @s add mm_typed
execute as @e[tag=mm_type_effect] run tag @s remove mm_type_effect


#触发道具
execute as @a[tag=!mm_dead,tag=!mm_will_respawn,tag=!mm_spectator] at @s if entity @e[tag=mm_prop,dy=0] run tag @s add mm_triggered_prop
execute as @a[tag=mm_triggered_prop] at @s run tag @e[tag=mm_prop,dy=0] add mm_triggered_prop

execute as @a[tag=!mm_dead,tag=!mm_spectator] at @s if entity @e[tag=mm_prop_changeless,dy=0] run tag @s add mm_triggered_prop
execute as @a[tag=mm_triggered_prop] at @s run tag @e[tag=mm_prop_changeless,dy=0] add mm_triggered_prop

execute as @a[tag=mm_triggered_prop] at @s run playsound entity.experience_orb.pickup player @s
execute as @a[tag=mm_triggered_prop] at @s if entity @e[tag=mm_prop,dy=0,scores={mm_players_id=1}] run function mm:game/game_module/prop/effect/gold_ingot
execute as @a[tag=mm_triggered_prop] at @s if entity @e[tag=mm_prop,dy=0,scores={mm_players_id=2}] run function mm:game/game_module/prop/effect/time_machine
execute as @a[tag=mm_triggered_prop] at @s if entity @e[tag=mm_prop,dy=0,scores={mm_players_id=3}] run function mm:game/game_module/prop/effect/random_effect
execute as @a[tag=mm_triggered_prop] at @s if entity @e[tag=mm_prop,dy=0,scores={mm_players_id=4}] run function mm:game/game_module/prop/effect/swap_position
execute as @a[tag=mm_triggered_prop] at @s if entity @e[tag=mm_prop,dy=0,scores={mm_players_id=5}] run function mm:game/game_module/prop/effect/arrow_conversion
execute as @a[tag=mm_triggered_prop] at @s if entity @e[tag=mm_prop,dy=0,scores={mm_players_id=6}] run function mm:game/game_module/prop/effect/random_teleport
execute as @a[tag=mm_triggered_prop] at @s if entity @e[tag=mm_prop,dy=0,scores={mm_players_id=7}] run function mm:game/game_module/prop/effect/random_prop
execute as @a[tag=mm_triggered_prop] at @s if entity @e[tag=mm_prop,dy=0,scores={mm_players_id=8}] run function mm:game/game_module/prop/effect/revive_player

execute as @a[tag=mm_triggered_prop] at @s if entity @e[tag=mm_prop_changeless,dy=0,scores={mm_players_id=-1}] run function mm:game/game_module/prop/effect/random_prop_flower
execute as @a[tag=mm_triggered_prop] at @s if entity @e[tag=mm_prop_changeless,dy=0,scores={mm_players_id=-2}] run function mm:game/game_module/prop/effect/random_prop_artemis
execute as @a[tag=mm_triggered_prop] at @s if entity @e[tag=mm_prop_changeless,dy=0,scores={mm_players_id=-3}] run function mm:game/game_module/prop/effect/random_prop_dionysus
execute as @a[tag=mm_triggered_prop] at @s if entity @e[tag=mm_prop_changeless,dy=0,scores={mm_players_id=-4}] run function mm:game/game_module/prop/effect/random_prop_church
execute as @a[tag=mm_triggered_prop] at @s if entity @e[tag=mm_prop_changeless,dy=0,scores={mm_players_id=-5}] run function mm:game/game_module/prop/effect/random_prop_apollo


execute as @a[tag=mm_triggered_prop] at @s run kill @e[tag=mm_prop,tag=mm_triggered_prop,type=!player]
execute as @a[tag=mm_triggered_prop] at @s run kill @e[tag=mm_prop_changeless,tag=mm_triggered_prop,type=!player]
execute as @a[tag=mm_triggered_prop] run tag @s remove mm_triggered_prop