#随机装饰品
execute as @e[tag=mm_ghost,tag=!mm_cosmetics,tag=!mm_player_ghost] store result score @s mm_knife_skin run data get entity @s UUID[0]
execute as @e[tag=mm_ghost,tag=!mm_cosmetics,tag=!mm_player_ghost] run scoreboard players operation @s mm_knife_skin %= cosmetics_knife_skin_count mm_main
execute as @e[tag=mm_ghost,tag=!mm_cosmetics,tag=!mm_player_ghost] run scoreboard players add @s mm_knife_skin 1

execute as @e[tag=mm_ghost,tag=!mm_cosmetics] store result score @s mm_projectile run data get entity @s UUID[1]
execute as @e[tag=mm_ghost,tag=!mm_cosmetics] run scoreboard players operation @s mm_projectile %= cosmetics_projectile_count mm_main
execute as @e[tag=mm_ghost,tag=!mm_cosmetics] run scoreboard players add @s mm_projectile 1

execute as @e[tag=mm_ghost,tag=!mm_cosmetics,tag=!mm_player_ghost] run loot replace entity @s weapon.mainhand loot mm:knife
execute as @e[tag=mm_ghost,tag=!mm_cosmetics] run tag @s add cosmetics


#状态效果
execute if score timer mm_main matches 0 run effect give @e[tag=mm_ghost] invisibility 1 0 true
execute if score timer mm_main matches 0 if score game_second mm_main matches 61.. run effect give @e[tag=mm_ghost] speed 1 1 true
execute if score timer mm_main matches 0 if score game_second mm_main matches ..60 run effect give @e[tag=mm_ghost] speed 1 2 true


#投掷飞刀
execute as @e[tag=mm_ghost,tag=!mm_player_ghost] unless score @s mm_cd_second matches 1.. run scoreboard players set @s mm_cd_tick 20
execute as @e[tag=mm_ghost,tag=!mm_player_ghost] unless score @s mm_cd_second matches 1.. run scoreboard players set @s mm_cd_second 5

execute as @e[tag=mm_ghost,tag=!mm_player_ghost,predicate=mm:targeted_player,scores={mm_cd_second=0..}] run scoreboard players remove @s mm_cd_tick 1
execute as @e[tag=mm_ghost,scores={mm_cd_tick=0}] run scoreboard players remove @s mm_cd_second 1
execute as @e[tag=mm_ghost,scores={mm_cd_tick=0}] run scoreboard players set @s mm_cd_tick 20

execute as @e[tag=mm_ghost,scores={mm_cd_second=0}] run tag @s add mm_throwing

execute as @e[tag=mm_throwing] at @s run tp @s ~ ~ ~ facing entity @a[tag=mm_survivor,tag=!mm_dead,sort=nearest,limit=1]
execute as @e[tag=mm_throwing] at @s run function mm:game/game_module/survival/thrown_knife_correction
execute as @e[tag=mm_throwing] at @s run data modify entity @e[tag=mm_thrown_knife,limit=1,sort=nearest] Pose.RightArm[1] set from entity @s Rotation[1]
execute as @e[tag=mm_throwing] at @s run data modify entity @e[tag=mm_thrown_knife,limit=1,sort=nearest] Rotation[1] set from entity @s Rotation[1]
execute as @e[tag=mm_throwing] at @s run loot replace entity @e[tag=mm_thrown_knife,limit=1,sort=nearest] weapon.mainhand loot mm:knife

execute as @e[tag=mm_throwing] run tag @s remove mm_throwing


#附近无玩家时隐藏
execute if score timer mm_main matches 0 as @e[tag=mm_ghost,tag=!mm_hidden_ghost] at @s unless entity @a[tag=mm_survivor,tag=!mm_dead,distance=..32] run data modify entity @s ArmorItems[2] set value {}
execute if score timer mm_main matches 0 as @e[tag=mm_ghost,tag=!mm_hidden_ghost] at @s unless entity @a[tag=mm_survivor,tag=!mm_dead,distance=..32] run tag @s add mm_hidden_ghost

execute if score timer mm_main matches 0 if score ghost_lurk_levitation mm_settings matches 1 as @e[tag=mm_ghost,tag=mm_hidden_ghost] run effect give @s levitation 1 4 true

execute if score timer mm_main matches 0 as @e[tag=mm_ghost,tag=mm_hidden_ghost,predicate=mm:targeted_player] at @s if entity @a[tag=mm_survivor,tag=!mm_dead,distance=..12] run data modify entity @s ArmorItems[2] set value {id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:0}}}
execute if score timer mm_main matches 0 as @e[tag=mm_ghost,tag=mm_hidden_ghost,predicate=mm:targeted_player] at @s if entity @a[tag=mm_survivor,tag=!mm_dead,distance=..12] run effect give @s resistance 3 4 true
execute if score timer mm_main matches 0 as @e[tag=mm_ghost,tag=mm_hidden_ghost,predicate=mm:targeted_player] at @s if entity @a[tag=mm_survivor,tag=!mm_dead,distance=..12] run effect give @s glowing 3 0 true
execute if score timer mm_main matches 0 as @e[tag=mm_ghost,tag=mm_hidden_ghost,predicate=mm:targeted_player] at @s if entity @a[tag=mm_survivor,tag=!mm_dead,distance=..12] run effect give @s speed 10 2 true
execute if score timer mm_main matches 0 as @e[tag=mm_ghost,tag=mm_hidden_ghost,predicate=mm:targeted_player] at @s if entity @a[tag=mm_survivor,tag=!mm_dead,distance=..12] run playsound minecraft:entity.bat.loop block @a ~ ~ ~ 2.25
execute if score timer mm_main matches 0 as @e[tag=mm_ghost,tag=mm_hidden_ghost,predicate=mm:targeted_player] at @s if entity @a[tag=mm_survivor,tag=!mm_dead,distance=..12] as @a[tag=mm_survivor,tag=!mm_dead,distance=..12] run particle minecraft:elder_guardian ~ ~ ~ ~ ~ ~ 1 1 normal
execute if score timer mm_main matches 0 as @e[tag=!mm_player_ghost,tag=mm_ghost,tag=mm_hidden_ghost,predicate=mm:targeted_player] at @s if entity @a[tag=mm_survivor,tag=!mm_dead,distance=..12] run tag @s add mm_throwing
execute if score timer mm_main matches 0 as @e[tag=mm_ghost,tag=mm_hidden_ghost,predicate=mm:targeted_player] at @s if entity @a[tag=mm_survivor,tag=!mm_dead,distance=..12] run tag @s remove mm_hidden_ghost


#隐藏恶灵召唤其他隐藏恶灵
execute if score ghost_spawn_second mm_main matches 0 as @e[tag=mm_ghost,tag=mm_hidden_ghost] at @s if entity @a[tag=mm_survivor,tag=!mm_dead,distance=13..24] run tp @e[tag=mm_ghost,tag=mm_hidden_ghost,limit=3,sort=furthest,distance=16..] @s