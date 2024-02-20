#清除追踪器
execute as @a run clear @s compass
kill @e[type=item,nbt={Item:{tag:{Tracker:1}}}]


#追踪幸存者
execute as @a[tag=mm_infected,tag=!mm_dead] run effect give @s speed 1 0 true
execute as @a[tag=mm_infected,tag=!mm_dead] run effect give @s jump_boost 1 0 true
execute as @a[tag=mm_alpha,tag=mm_exposed,tag=!mm_dead] run effect give @s speed 1 0 true
execute as @a[tag=mm_alpha,tag=mm_exposed,tag=!mm_dead] run effect give @s jump_boost 1 0 true

execute if score track_message mm_main matches 0 if score survivor_left mm_data matches ..1 run tellraw @a {"text":"幸存者位置已显示!","color":"green"}
execute if score track_message mm_main matches 0 if score survivor_left mm_data matches ..1 run team modify mm_survivor nametagVisibility always
execute if score track_message mm_main matches 0 if score survivor_left mm_data matches ..1 run scoreboard players set track_message mm_main 1

execute if score track_message mm_main matches 0 if score game_second mm_main matches ..30 run tellraw @a {"text":"幸存者位置已显示!","color":"green"}
execute if score track_message mm_main matches 0 if score game_second mm_main matches ..30 run team modify mm_survivor nametagVisibility always
execute if score track_message mm_main matches 0 if score game_second mm_main matches ..30 run scoreboard players set track_message mm_main 1

execute if score survivor_left mm_data matches ..1 as @a[tag=mm_infected,tag=!mm_dead] at @s run summon minecraft:item ~ 1 ~ {Tags:["mm_survivor_tracker"],Item:{id:"minecraft:compass",Count:1b,Damage:0s,tag:{LodestonePos:{X:0,Y:0,Z:0},LodestoneTracked:0b,LodestoneDimension:"overworld"}},PickupDelay:32767}
execute if score survivor_left mm_data matches ..1 as @a[tag=mm_alpha,tag=!mm_dead] at @s run summon minecraft:item ~ 1 ~ {Tags:["mm_survivor_tracker"],Item:{id:"minecraft:compass",Count:1b,Damage:0s,tag:{LodestonePos:{X:0,Y:0,Z:0},LodestoneTracked:0b,LodestoneDimension:"overworld"}},PickupDelay:32767}
execute if score survivor_left mm_data matches 2.. if score game_second mm_main matches ..30 as @a[tag=mm_infected,tag=!mm_dead] at @s run summon minecraft:item ~ 1 ~ {Tags:["mm_survivor_tracker"],Item:{id:"minecraft:compass",Count:1b,Damage:0s,tag:{LodestonePos:{X:0,Y:0,Z:0},LodestoneTracked:0b,LodestoneDimension:"overworld"}},PickupDelay:32767}
execute if score survivor_left mm_data matches 2.. if score game_second mm_main matches ..30 as @a[tag=mm_alpha,tag=!mm_dead] at @s run summon minecraft:item ~ 1 ~ {Tags:["mm_survivor_tracker"],Item:{id:"minecraft:compass",Count:1b,Damage:0s,tag:{LodestonePos:{X:0,Y:0,Z:0},LodestoneTracked:0b,LodestoneDimension:"overworld"}},PickupDelay:32767}

execute as @e[tag=mm_survivor_tracker] at @s store result entity @s Item.tag.LodestonePos.X int 1 run data get entity @p[tag=mm_survivor] Pos[0]
execute as @e[tag=mm_survivor_tracker] at @s store result entity @s Item.tag.LodestonePos.Y int 1 run data get entity @p[tag=mm_survivor] Pos[1]
execute as @e[tag=mm_survivor_tracker] at @s store result entity @s Item.tag.LodestonePos.Z int 1 run data get entity @p[tag=mm_survivor] Pos[2]

execute if score survivor_left mm_data matches ..1 as @e[tag=mm_survivor_tracker] at @s run loot replace entity @p[tag=mm_infected,tag=!mm_dead,dy=255] hotbar.4 loot mm:tracker/survivor_tracker
execute if score survivor_left mm_data matches ..1 as @e[tag=mm_survivor_tracker] at @s run loot replace entity @p[tag=mm_alpha,tag=!mm_dead,dy=255] hotbar.4 loot mm:tracker/survivor_tracker
execute if score survivor_left mm_data matches 2.. if score game_second mm_main matches ..30 as @e[tag=mm_survivor_tracker] at @s run loot replace entity @p[tag=mm_infected,tag=!mm_dead,dy=255] hotbar.4 loot mm:tracker/survivor_tracker
execute if score survivor_left mm_data matches 2.. if score game_second mm_main matches ..30 as @e[tag=mm_survivor_tracker] at @s run loot replace entity @p[tag=mm_alpha,tag=!mm_dead,dy=255] hotbar.4 loot mm:tracker/survivor_tracker

execute as @e[tag=mm_survivor_tracker,type=item] run kill @s


#追踪母体/感染者
execute if score infected_tick mm_main matches 0 if entity @a[tag=mm_alpha,tag=!mm_dead] run tellraw @a[tag=mm_survivor] {"text":"母体位置已暴露,直到一名幸存者被感染!","color":"green"}
execute if score infected_tick mm_main matches 0 if entity @a[tag=mm_alpha,tag=!mm_dead] run tellraw @a[tag=mm_infected] {"text":"母体位置已暴露,请尽快感染一名幸存者使母体位置再次隐藏!","color":"green"}
execute if score infected_tick mm_main matches 0 if entity @a[tag=mm_alpha,tag=!mm_dead] run tellraw @a[tag=mm_alpha] {"text":"你的位置已暴露,请尽快感染一名幸存者使你的位置再次隐藏!","color":"green"}
execute if score infected_tick mm_main matches 0 unless entity @a[tag=mm_alpha,tag=!mm_dead] if score infected_real_left mm_data matches ..1 run tellraw @a[tag=mm_survivor] {"text":"最后一名感染者位置已暴露,直到一名幸存者被感染!","color":"green"}
execute if score infected_tick mm_main matches 0 unless entity @a[tag=mm_alpha,tag=!mm_dead] if score infected_real_left mm_data matches ..1 run tellraw @a[tag=mm_infected,tag=!mm_dead] {"text":"你的位置已暴露,请尽快感染一名幸存者使你的位置再次隐藏!","color":"green"}
execute if score infected_tick mm_main matches 0 run scoreboard players set infected_tick mm_main -1

execute if score infected_tick mm_main matches -1 if entity @a[tag=mm_alpha,tag=!mm_dead] as @a[tag=mm_survivor] at @s run summon minecraft:item ~ 1 ~ {Tags:["mm_alpha_tracker"],Item:{id:"minecraft:compass",Count:1b,Damage:0s,tag:{LodestonePos:{X:0,Y:0,Z:0},LodestoneTracked:0b,LodestoneDimension:"overworld"}},PickupDelay:32767}
execute if score infected_tick mm_main matches -1 unless entity @a[tag=mm_alpha,tag=!mm_dead] if score infected_real_left mm_data matches ..1 as @a[tag=mm_survivor] at @s run summon minecraft:item ~ 1 ~ {Tags:["mm_infected_tracker"],Item:{id:"minecraft:compass",Count:1b,Damage:0s,tag:{LodestonePos:{X:0,Y:0,Z:0},LodestoneTracked:0b,LodestoneDimension:"overworld"}},PickupDelay:32767}

execute as @e[tag=mm_alpha_tracker] at @s store result entity @s Item.tag.LodestonePos.X int 1 run data get entity @p[tag=mm_alpha] Pos[0]
execute as @e[tag=mm_alpha_tracker] at @s store result entity @s Item.tag.LodestonePos.Y int 1 run data get entity @p[tag=mm_alpha] Pos[1]
execute as @e[tag=mm_alpha_tracker] at @s store result entity @s Item.tag.LodestonePos.Z int 1 run data get entity @p[tag=mm_alpha] Pos[2]
execute as @e[tag=mm_infected_tracker] at @s store result entity @s Item.tag.LodestonePos.X int 1 run data get entity @p[tag=mm_infected,tag=!mm_dead] Pos[0]
execute as @e[tag=mm_infected_tracker] at @s store result entity @s Item.tag.LodestonePos.Y int 1 run data get entity @p[tag=mm_infected,tag=!mm_dead] Pos[1]
execute as @e[tag=mm_infected_tracker] at @s store result entity @s Item.tag.LodestonePos.Z int 1 run data get entity @p[tag=mm_infected,tag=!mm_dead] Pos[2]

execute if score infected_tick mm_main matches -1 if entity @a[tag=mm_alpha,tag=!mm_dead] as @e[tag=mm_alpha_tracker] at @s run loot replace entity @p[tag=mm_survivor,dy=255] hotbar.4 loot mm:tracker/alpha_tracker
execute if score infected_tick mm_main matches -1 unless entity @a[tag=mm_alpha,tag=!mm_dead] if score infected_real_left mm_data matches ..1 as @e[tag=mm_infected_tracker] at @s run loot replace entity @p[tag=mm_survivor,dy=255] hotbar.4 loot mm:tracker/infected_tracker

execute as @e[tag=mm_alpha_tracker,type=item] run kill @s
execute as @e[tag=mm_infected_tracker,type=item] run kill @s