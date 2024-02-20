#清除追踪器
execute as @a run clear @s compass
kill @e[type=item,nbt={Item:{tag:{Tracker:1}}}]


#追踪弓
execute if score innocent_left mm_data matches ..2 if entity @e[tag=mm_dropped_bow] as @a[tag=mm_innocent,tag=!mm_dead] at @s run summon minecraft:item ~ 1 ~ {Tags:["mm_dropped_bow_tracker"],Item:{id:"minecraft:compass",Count:1b,Damage:0s,tag:{LodestonePos:{X:0,Y:0,Z:0},LodestoneTracked:0b,LodestoneDimension:"overworld"}},PickupDelay:32767}
execute if score innocent_left mm_data matches 3.. if score game_second mm_main matches ..30 if entity @e[tag=mm_dropped_bow] as @a[tag=mm_innocent,tag=!mm_dead] at @s run summon minecraft:item ~ 1 ~ {Tags:["mm_dropped_bow_tracker"],Item:{id:"minecraft:compass",Count:1b,Damage:0s,tag:{LodestonePos:{X:0,Y:0,Z:0},LodestoneTracked:0b,LodestoneDimension:"overworld"}},PickupDelay:32767}
execute if score innocent_left mm_data matches 3.. if score game_second mm_main matches 31.. if entity @e[tag=mm_dropped_bow] as @a[tag=!mm_dead] at @s run summon minecraft:item ~ 1 ~ {Tags:["mm_dropped_bow_tracker"],Item:{id:"minecraft:compass",Count:1b,Damage:0s,tag:{LodestonePos:{X:0,Y:0,Z:0},LodestoneTracked:0b,LodestoneDimension:"overworld"}},PickupDelay:32767}

execute as @e[tag=mm_dropped_bow_tracker] at @s store result entity @s Item.tag.LodestonePos.X int 1 run data get entity @e[tag=mm_dropped_bow,limit=1,sort=nearest] Pos[0]
execute as @e[tag=mm_dropped_bow_tracker] at @s store result entity @s Item.tag.LodestonePos.Y int 1 run data get entity @e[tag=mm_dropped_bow,limit=1,sort=nearest] Pos[1]
execute as @e[tag=mm_dropped_bow_tracker] at @s store result entity @s Item.tag.LodestonePos.Z int 1 run data get entity @e[tag=mm_dropped_bow,limit=1,sort=nearest] Pos[2]

execute if score innocent_left mm_data matches ..2 as @e[tag=mm_dropped_bow_tracker] at @s run loot replace entity @p[tag=mm_innocent,tag=!mm_dead,dy=255] hotbar.4 loot mm:tracker/dropped_bow_tracker
execute if score innocent_left mm_data matches 3.. if score game_second mm_main matches ..30 as @e[tag=mm_dropped_bow_tracker] at @s run loot replace entity @p[tag=mm_innocent,tag=!mm_dead,dy=255] hotbar.4 loot mm:tracker/dropped_bow_tracker
execute if score innocent_left mm_data matches 3.. if score game_second mm_main matches 31.. as @e[tag=mm_dropped_bow_tracker] at @s run loot replace entity @p[tag=!mm_dead,dy=255] hotbar.4 loot mm:tracker/dropped_bow_tracker

execute as @e[tag=mm_dropped_bow_tracker,type=item] run kill @s


#追踪平民
execute if score innocent_left mm_data matches 1 run effect give @a[tag=mm_murderer,tag=!mm_dead] speed 1 0 true

execute if score track_message mm_main matches 0 if score innocent_left mm_data matches ..2 run tellraw @a[tag=mm_innocent] [{"text":"小心! ","color":"red"},{"text":"杀手现在可以轻而易举地找到存活玩家!","color":"yellow"}]
execute if score track_message mm_main matches 0 if score innocent_left mm_data matches ..2 run tellraw @a[tag=mm_murderer] [{"text":"你获得了一个指南针! ","color":"green"},{"text":"你可以用它找到剩余存活玩家!","color":"yellow"}]
execute if score track_message mm_main matches 0 if score innocent_left mm_data matches ..2 run scoreboard players set track_message mm_main 1

execute if score track_message mm_main matches 0 if score game_second mm_main matches ..30 if score track_message mm_main matches 0 run tellraw @a[tag=mm_innocent] [{"text":"小心! ","color":"red"},{"text":"杀手现在可以轻而易举地找到存活玩家!","color":"yellow"}]
execute if score track_message mm_main matches 0 if score game_second mm_main matches ..30 if score track_message mm_main matches 0 run tellraw @a[tag=mm_murderer] [{"text":"你获得了一个指南针! ","color":"green"},{"text":"你可以用它找到剩余存活玩家!","color":"yellow"}]
execute if score track_message mm_main matches 0 if score game_second mm_main matches ..30 if score track_message mm_main matches 0 run scoreboard players set track_message mm_main 1

execute if score innocent_left mm_data matches ..2 as @a[tag=mm_murderer] at @s run summon minecraft:item ~ 1 ~ {Tags:["mm_innocent_tracker"],Item:{id:"minecraft:compass",Count:1b,Damage:0s,tag:{LodestonePos:{X:0,Y:0,Z:0},LodestoneTracked:0b,LodestoneDimension:"overworld"}},PickupDelay:32767}
execute if score innocent_left mm_data matches 3.. if score game_second mm_main matches ..30 as @a[tag=mm_murderer] at @s run summon minecraft:item ~ 1 ~ {Tags:["mm_innocent_tracker"],Item:{id:"minecraft:compass",Count:1b,Damage:0s,tag:{LodestonePos:{X:0,Y:0,Z:0},LodestoneTracked:0b,LodestoneDimension:"overworld"}},PickupDelay:32767}

execute as @e[tag=mm_innocent_tracker] at @s store result entity @s Item.tag.LodestonePos.X int 1 run data get entity @p[tag=mm_innocent,tag=!mm_dead] Pos[0]
execute as @e[tag=mm_innocent_tracker] at @s store result entity @s Item.tag.LodestonePos.Y int 1 run data get entity @p[tag=mm_innocent,tag=!mm_dead] Pos[1]
execute as @e[tag=mm_innocent_tracker] at @s store result entity @s Item.tag.LodestonePos.Z int 1 run data get entity @p[tag=mm_innocent,tag=!mm_dead] Pos[2]

execute if score innocent_left mm_data matches ..2 as @e[tag=mm_innocent_tracker] at @s run loot replace entity @p[tag=mm_murderer,dy=255] hotbar.4 loot mm:tracker/innocent_tracker
execute if score innocent_left mm_data matches 3.. if score game_second mm_main matches ..30 as @e[tag=mm_innocent_tracker] at @s run loot replace entity @p[tag=mm_murderer,dy=255] hotbar.4 loot mm:tracker/innocent_tracker

execute as @e[tag=mm_innocent_tracker,type=item] run kill @s