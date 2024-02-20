#生成一个金锭
scoreboard players add gold_ingot_spawn mm_main 1

execute as @e[tag=mm_spawn,limit=1,sort=random,tag=mm_actived] run tag @s add mm_gold_ingot_spawn
execute as @e[tag=mm_gold_ingot_spawn] at @s positioned ~ ~2 ~ if entity @e[type=item,nbt={Item:{tag:{Pickup:0}}},distance=..2] store result score gold_ingot_count mm_main run data get entity @e[type=item,nbt={Item:{tag:{Pickup:0}}},limit=1,sort=nearest] Item.Count
execute as @e[tag=mm_gold_ingot_spawn] at @s positioned ~ ~2 ~ if entity @e[type=item,nbt={Item:{tag:{Pickup:0}}},distance=..2] if score gold_ingot_count mm_main matches 1..2 run scoreboard players add gold_ingot_count mm_main 1
execute as @e[tag=mm_gold_ingot_spawn] at @s positioned ~ ~2 ~ if entity @e[type=item,nbt={Item:{tag:{Pickup:0}}},distance=..2] store result entity @e[type=item,nbt={Item:{tag:{Pickup:0}}},limit=1,sort=nearest] Item.Count byte 1 run scoreboard players get gold_ingot_count mm_main
execute as @e[tag=mm_gold_ingot_spawn] at @s positioned ~ ~2 ~ unless entity @e[type=item,nbt={Item:{tag:{Pickup:0}}},distance=..2] run loot spawn ~ ~ ~ loot mm:gold_ingot/drop
execute as @e[tag=mm_gold_ingot_spawn] run tag @s remove mm_gold_ingot_spawn

execute as @e[type=item,nbt={Item:{tag:{Pickup:0}}}] run data modify entity @s PickupDelay set value 32767s
execute as @e[type=item,nbt={Item:{tag:{Pickup:0}}}] run data modify entity @s Age set value -32768s


#递归
execute if score gold_ingot_spawn mm_main < spawn_gold_ingot_count mm_settings run function mm:game/game_module/gold_ingot_spawn_call