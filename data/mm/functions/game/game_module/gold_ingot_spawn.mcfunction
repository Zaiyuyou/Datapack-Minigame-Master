#计时
execute unless score gold_ingot_spawn_tick mm_main matches 1..100 run scoreboard players set gold_ingot_spawn_tick mm_main 100
execute if score gold_ingot_spawn_tick mm_main matches 1..100 run scoreboard players remove gold_ingot_spawn_tick mm_main 1


#生成金锭
execute if score gold_ingot_spawn_tick mm_main matches 0 run scoreboard players set gold_ingot_spawn mm_main 0
execute if score gold_ingot_spawn_tick mm_main matches 0 run function mm:game/game_module/gold_ingot_spawn_call


#玩家获取金锭
execute as @a[tag=!mm_dead,gamemode=!spectator,scores={mm_gold_ingot=0..63}] at @s if entity @e[type=item,nbt={Item:{tag:{Pickup:0}}},distance=..1.5,tag=!mm_has_been_picked_up] run tag @s add mm_pick_gold_ingot
execute as @a[tag=mm_pick_gold_ingot] at @s run tag @e[type=item,nbt={Item:{tag:{Pickup:0}}},limit=1,sort=nearest,distance=..1.5,tag=!mm_has_been_picked_up] add mm_has_been_picked_up

execute as @a[tag=mm_pick_gold_ingot] at @s run playsound minecraft:entity.item.pickup player @s
execute as @a[tag=mm_pick_gold_ingot] at @s run tp @e[tag=mm_has_been_picked_up,limit=1,sort=nearest] @s
execute as @a[tag=mm_pick_gold_ingot] at @s store result score gold_ingot_count mm_main run data get entity @e[tag=mm_has_been_picked_up,limit=1,sort=nearest] Item.Count
execute as @a[tag=mm_pick_gold_ingot] run scoreboard players operation @s mm_gold_ingot += gold_ingot_count mm_main

execute as @e[tag=mm_has_been_picked_up] run kill @s
execute as @a[tag=mm_pick_gold_ingot] at @s run tellraw @s [{"text":"捡起了","color":"gold"},{"score":{"objective":"mm_main","name":"gold_ingot_count"},"color":"gold"},{"text":"块金锭!","color":"gold"}]
execute as @a[tag=mm_pick_gold_ingot] run scoreboard players operation @s mm_stats_13 += gold_ingot_count mm_main

execute as @a[tag=mm_pick_gold_ingot] run tag @s remove mm_pick_gold_ingot


#矫正金锭位置
execute if score timer mm_main matches 0 as @a[tag=!gold_ingot_update,tag=!mm_dead] run tag @s add gold_ingot_update
execute if score timer mm_main matches 0 as @a[tag=gold_ingot_update,tag=!mm_dead] run execute if score @s mm_gold_ingot = @s mm_gold_ingot_last run tag @s remove gold_ingot_update
execute if score timer mm_main matches 0 run execute as @e[type=item,nbt={Item:{tag:{Pickup:1}}}] at @s run tag @a[distance=..2,tag=!mm_dead] add gold_ingot_update
execute if score timer mm_main matches 0 run kill @e[type=item,nbt={Item:{tag:{Pickup:1}}}]
execute as @a[tag=gold_ingot_update] run function mm:game/game_module/gold_ingot_update