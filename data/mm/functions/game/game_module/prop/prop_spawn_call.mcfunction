#防止重复道具生成
execute as @e[tag=mm_spawn,limit=1,sort=random,tag=!mm_prop_spawn_ready,tag=mm_actived] at @s run tag @s add mm_prop_spawn_ready
execute as @e[tag=mm_prop] at @s run execute as @e[tag=mm_spawn,tag=mm_prop_spawn_ready,dy=-2,limit=1] run tag @s remove mm_prop_spawn_ready
execute as @e[tag=mm_prop] at @s run execute as @e[tag=mm_spawn,tag=mm_prop_spawn_ready,dy=-2,limit=1] run scoreboard players remove prop_spawn mm_main 1




#生成一个道具
scoreboard players add prop_spawn mm_main 1
execute as @e[tag=mm_prop_spawn_ready] at @s run summon minecraft:armor_stand ~ ~0.9 ~ {CustomNameVisible:1b,Tags:["mm_prop"],PersistenceRequired:1b,CanPickUpLoot:0b,Silent:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:gold_block",Count:1b}],Invisible:1,Small:1,NoBasePlate:1,DisabledSlots:2039583,Rotation:[0f],Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]}}

execute as @e[name="prop_spawn_changeless",scores={mm_main=0..}] run scoreboard players remove @s mm_main 1

execute as @e[tag=mm_prop_changeless,type=armor_stand] at @s run scoreboard players operation @e[name="prop_spawn_changeless",scores={mm_main=..0},limit=1,dx=0,dy=-3,dz=0] mm_main = prop_changeless_spawn_cyl mm_settings


execute as @e[name="prop_spawn_changeless",scores={mm_main=..0}] at @s run summon minecraft:armor_stand ~ ~0.9 ~ {CustomNameVisible:1b,Tags:["mm_prop_changeless"],PersistenceRequired:1b,CanPickUpLoot:0b,Silent:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_block",Count:1b}],Invisible:1,Small:1,NoBasePlate:1,DisabledSlots:2039583,Rotation:[0f],Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]}}
execute as @e[name="prop_spawn_changeless",scores={mm_main=..0}] at @s run scoreboard players add @e[tag=mm_prop_changeless,limit=2,type=armor_stand,dx=0,dy=3,dz=0] mm_players_id 0
execute as @e[name="prop_spawn_changeless",scores={mm_main=..0}] at @s run scoreboard players operation @e[tag=mm_prop_changeless,scores={mm_players_id=0},limit=1,type=armor_stand,dx=0,dy=3,dz=0] mm_players_id -= @s mm_prop_id

#递归
execute if score prop_spawn mm_main < spawn_prop_count mm_settings run function mm:game/game_module/prop/prop_spawn_call