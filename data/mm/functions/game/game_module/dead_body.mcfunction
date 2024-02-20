#生成遗体
execute as @s at @s if entity @s[y=1,dy=255] run tag @s add mm_spawn_dead_body

execute as @s[tag=mm_spawn_dead_body] at @s if entity @s[y_rotation=-135..-46] run setblock ~ 0 ~ red_bed[facing=west]
execute as @s[tag=mm_spawn_dead_body] at @s if entity @s[y_rotation=-135..-46] run summon minecraft:armor_stand ~-0.5 ~1 ~ {Invisible:1b,NoGravity:1b,Tags:["mm_dead_body_teleporter"]}
execute as @s[tag=mm_spawn_dead_body] at @s if entity @s[y_rotation=-45..44] run setblock ~ 0 ~ red_bed[facing=north]
execute as @s[tag=mm_spawn_dead_body] at @s if entity @s[y_rotation=-45..44] run summon minecraft:armor_stand ~ ~1 ~-0.5 {Invisible:1b,NoGravity:1b,Tags:["mm_dead_body_teleporter"]}
execute as @s[tag=mm_spawn_dead_body] at @s if entity @s[y_rotation=45..134] run setblock ~ 0 ~ red_bed[facing=east]
execute as @s[tag=mm_spawn_dead_body] at @s if entity @s[y_rotation=45..134] run summon minecraft:armor_stand ~0.5 ~1 ~ {Invisible:1b,NoGravity:1b,Tags:["mm_dead_body_teleporter"]}
execute as @s[tag=mm_spawn_dead_body] at @s if entity @s[y_rotation=135..180] run setblock ~ 0 ~ red_bed[facing=south]
execute as @s[tag=mm_spawn_dead_body] at @s if entity @s[y_rotation=135..180] run summon minecraft:armor_stand ~ ~1 ~0.5 {Invisible:1b,NoGravity:1b,Tags:["mm_dead_body_teleporter"]}
execute as @s[tag=mm_spawn_dead_body] at @s if entity @s[y_rotation=-180..-136] run setblock ~ 0 ~ red_bed[facing=south]
execute as @s[tag=mm_spawn_dead_body] at @s if entity @s[y_rotation=-180..-136] run summon minecraft:armor_stand ~ ~1 ~0.5 {Invisible:1b,NoGravity:1b,Tags:["mm_dead_body_teleporter"]}

execute as @s[tag=mm_spawn_dead_body,scores={mm_dead_body=1}] at @s run summon minecraft:skeleton ~ 0 ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1,SleepingX:0,SleepingY:0,SleepingZ:0,Tags:["mm_dead_body"]}
execute as @s[tag=mm_spawn_dead_body,scores={mm_dead_body=2}] at @s run summon minecraft:zombie ~ 0 ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1,SleepingX:0,SleepingY:0,SleepingZ:0,Tags:["mm_dead_body"]}
execute as @s[tag=mm_spawn_dead_body,scores={mm_dead_body=3}] at @s run summon minecraft:creeper ~ 0 ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1,SleepingX:0,SleepingY:0,SleepingZ:0,Tags:["mm_dead_body"]}
execute as @s[tag=mm_spawn_dead_body,scores={mm_dead_body=4}] at @s run summon minecraft:wither_skeleton ~ 0 ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1,SleepingX:0,SleepingY:0,SleepingZ:0,Tags:["mm_dead_body"]}
execute as @s[tag=mm_spawn_dead_body,scores={mm_dead_body=5}] at @s run summon minecraft:stray ~ 0 ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1,SleepingX:0,SleepingY:0,SleepingZ:0,Tags:["mm_dead_body"]}
execute as @s[tag=mm_spawn_dead_body,scores={mm_dead_body=6}] at @s run summon minecraft:blaze ~ 0 ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1,SleepingX:0,SleepingY:0,SleepingZ:0,Tags:["mm_dead_body"]}
execute as @s[tag=mm_spawn_dead_body,scores={mm_dead_body=7}] at @s run summon minecraft:drowned ~ 0 ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1,SleepingX:0,SleepingY:0,SleepingZ:0,Tags:["mm_dead_body"]}
execute as @s[tag=mm_spawn_dead_body,scores={mm_dead_body=8}] at @s run summon minecraft:husk ~ 0 ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1,SleepingX:0,SleepingY:0,SleepingZ:0,Tags:["mm_dead_body"]}

execute as @s[tag=mm_spawn_dead_body] at @s positioned ~ 0 ~ run data modify entity @e[tag=mm_dead_body,tag=!mm_teleported_dead_body,limit=1,sort=nearest] SleepingX set from entity @s Pos[0]
execute as @s[tag=mm_spawn_dead_body] at @s positioned ~ 0 ~ run data modify entity @e[tag=mm_dead_body,tag=!mm_teleported_dead_body,limit=1,sort=nearest] SleepingZ set from entity @s Pos[2]
execute as @s[tag=mm_spawn_dead_body] at @s positioned ~ 0 ~ run data modify entity @e[tag=mm_dead_body,tag=!mm_teleported_dead_body,limit=1,sort=nearest] SleepingY set value 0

execute as @s[tag=mm_spawn_dead_body] at @s positioned ~ 0 ~ run data modify entity @e[tag=mm_dead_body,tag=!mm_teleported_dead_body,limit=1,sort=nearest] HandItems[0] set from entity @s SelectedItem
execute as @s[tag=mm_spawn_dead_body] at @s positioned ~ 0 ~ run loot replace entity @e[tag=mm_dead_body,tag=!mm_teleported_dead_body,limit=1,sort=nearest] armor.head loot mm:dead_body/get_head

execute as @s[tag=mm_spawn_dead_body] at @s positioned ~ 0 ~ run scoreboard players set @e[tag=mm_dead_body,tag=!mm_teleported_dead_body,limit=1,sort=nearest] mm_cd_tick 20
execute as @s[tag=mm_spawn_dead_body] if score customize_dead_body_display_time mm_settings matches 0 at @s positioned ~ 0 ~ run scoreboard players set @e[tag=mm_dead_body,tag=!mm_teleported_dead_body,limit=1,sort=nearest] mm_cd_second 5
execute as @s[tag=mm_spawn_dead_body] if score customize_dead_body_display_time mm_settings matches 1 at @s positioned ~ 0 ~ run scoreboard players operation @e[tag=mm_dead_body,tag=!mm_teleported_dead_body,limit=1,sort=nearest] mm_cd_second = dead_body_display_time mm_settings

execute as @s[tag=mm_spawn_dead_body] run tag @s remove mm_spawn_dead_body