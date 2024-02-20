#生成
function mm:game/game_module/gold_ingot_spawn


#杀手/平民换弓
execute as @a[tag=!mm_dead,tag=mm_murderer,scores={mm_gold_ingot=10..}] run tag @s add mm_collect_a_shot
execute as @a[tag=!mm_dead,tag=mm_innocent,tag=!mm_detective,scores={mm_gold_ingot=10..}] run tag @s add mm_collect_a_shot

execute as @a[tag=mm_collect_a_shot] run tellraw @s {"text":"你已收集10块金锭并获得一次射箭机会!","color":"yellow"}
execute as @a[tag=mm_collect_a_shot] run title @s subtitle {"text":"+1 射箭次数!","color":"green"}
execute as @a[tag=mm_collect_a_shot] run title @s title ""

execute as @a[tag=mm_collect_a_shot,tag=mm_murderer] run loot replace entity @s container.0 loot mm:bow/murderer
execute as @a[tag=mm_collect_a_shot,tag=mm_innocent] run loot replace entity @s container.0 loot mm:bow/innocent
execute as @a[tag=mm_collect_a_shot] run scoreboard players add @s mm_arrow 1
execute as @a[tag=mm_collect_a_shot] run scoreboard players remove @s mm_gold_ingot 10

execute as @a[tag=mm_collect_a_shot] run tag @s remove mm_collect_a_shot


#矫正弓位置
execute as @a[tag=mm_murderer,nbt={Inventory:[{tag:{Bow:1}}]},nbt=!{Inventory:[{tag:{Bow:1},Slot:0b}]}] run tag @s add mm_dislocate_bow
execute as @a[tag=mm_innocent,tag=!mm_detective,nbt={Inventory:[{tag:{Bow:1}}]},nbt=!{Inventory:[{tag:{Bow:1},Slot:0b}]}] run tag @s add mm_dislocate_bow
execute as @a[tag=mm_dislocate_bow] run clear @s bow
execute as @a[tag=mm_dislocate_bow,tag=mm_murderer] run loot replace entity @s hotbar.0 loot mm:bow/murderer
execute as @a[tag=mm_dislocate_bow,tag=mm_innocent] run loot replace entity @s hotbar.0 loot mm:bow/innocent
execute as @a[tag=mm_dislocate_bow] run tag @s remove mm_dislocate_bow

execute as @a[tag=mm_murderer,nbt=!{Inventory:[{tag:{Bow:1}}]}] at @s if entity @e[type=item,nbt={Item:{tag:{Bow:1}}},distance=..2] run tag @s add mm_drop_bow
execute as @a[tag=mm_innocent,tag=!mm_detective,nbt=!{Inventory:[{tag:{Bow:1}}]}] at @s if entity @e[type=item,nbt={Item:{tag:{Bow:1}}},distance=..2] run tag @s add mm_drop_bow
execute as @a[tag=mm_drop_bow] run kill @e[type=item,nbt={Item:{tag:{Bow:1}}}]
execute as @a[tag=mm_drop_bow,tag=mm_murderer] run loot replace entity @s hotbar.0 loot mm:bow/murderer
execute as @a[tag=mm_drop_bow,tag=mm_innocent] run loot replace entity @s hotbar.0 loot mm:bow/innocent
execute as @a[tag=mm_drop_bow] run tag @s remove mm_drop_bow


#修正箭矢数量
execute as @a[tag=!mm_dead,scores={mm_shoot_det=1}] run scoreboard players remove @s mm_arrow 1
execute as @a[tag=!mm_dead,scores={mm_shoot_det=1}] run tag @s add mm_refresh_arrow
execute as @a[tag=!mm_dead,scores={mm_shoot_det=1}] run scoreboard players reset @s mm_shoot_det


#矫正箭矢位置
execute if score timer mm_main matches 0 as @a[tag=!mm_refresh_arrow,tag=!mm_dead] run tag @s add mm_refresh_arrow
execute if score timer mm_main matches 0 as @a[tag=mm_refresh_arrow,tag=!mm_dead] run execute if score @s mm_arrow = @s mm_arrow_last run tag @s remove mm_refresh_arrow
execute as @e[type=item,nbt={Item:{id:"minecraft:arrow"}}] at @s run tag @a[distance=..2,tag=!mm_refresh_arrow,tag=!mm_dead] add mm_refresh_arrow
execute if score timer mm_main matches 0 as @a[tag=mm_refresh_arrow,tag=!mm_dead] run function mm:game/game_module/classic/refresh_arrow