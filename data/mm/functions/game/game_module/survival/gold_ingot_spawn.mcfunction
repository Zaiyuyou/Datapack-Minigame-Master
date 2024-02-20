#生成
function mm:game/game_module/gold_ingot_spawn


#6金换箭
execute as @a[tag=!mm_dead,tag=mm_survivor,scores={mm_gold_ingot=6..}] run tag @s add mm_collect_a_shot

execute as @a[tag=mm_collect_a_shot] run tellraw @s {"text":"你已收集6块金锭并获得12次射箭机会!","color":"yellow"}
execute as @a[tag=mm_collect_a_shot] run title @s subtitle {"text":"+12 射箭次数!","color":"green"}
execute as @a[tag=mm_collect_a_shot] run title @s title ""

execute as @a[tag=mm_collect_a_shot] run scoreboard players add @s mm_arrow 12
execute as @a[tag=mm_collect_a_shot] run scoreboard players remove @s mm_gold_ingot 6

execute as @a[tag=mm_collect_a_shot] run tag @s remove mm_collect_a_shot


#矫正铁胸甲位置
execute as @a[tag=mm_survivor,nbt={Inventory:[{tag:{Iron_Chestplate:1}}]},nbt=!{Inventory:[{tag:{Iron_Chestplate:1},Slot:102b}]}] run tag @s add mm_dislocate_iron_chestplate
execute as @a[tag=mm_dislocate_iron_chestplate] run clear @s iron_chestplate
execute as @a[tag=mm_dislocate_iron_chestplate] run loot replace entity @s armor.chest loot mm:survivor_iron_chestplate
execute as @a[tag=mm_dislocate_iron_chestplate] run tag @s remove mm_dislocate_iron_chestplate

execute as @a[tag=mm_survivor,nbt=!{Inventory:[{tag:{Iron_Chestplate:1}}]}] at @s if entity @e[type=item,nbt={Item:{tag:{Iron_Chestplate:1}}},distance=..2] run tag @s add mm_drop_iron_chestplate
execute as @a[tag=mm_drop_iron_chestplate] run kill @e[type=item,nbt={Item:{tag:{Iron_Chestplate:1}}}]
execute as @a[tag=mm_drop_iron_chestplate] run loot replace entity @s armor.chest loot mm:survivor_iron_chestplate
execute as @a[tag=mm_drop_iron_chestplate] run tag @s remove mm_drop_iron_chestplate


#矫正弓位置
execute as @a[tag=mm_survivor,nbt={Inventory:[{tag:{Bow:1}}]},nbt=!{Inventory:[{tag:{Bow:1},Slot:0b}]}] run tag @s add mm_dislocate_bow
execute as @a[tag=mm_dislocate_bow] run clear @s bow
execute as @a[tag=mm_dislocate_bow] run loot replace entity @s hotbar.0 loot mm:bow/survival
execute as @a[tag=mm_dislocate_bow] run tag @s remove mm_dislocate_bow

execute as @a[tag=mm_survivor,nbt=!{Inventory:[{tag:{Bow:1}}]}] at @s if entity @e[type=item,nbt={Item:{tag:{Bow:1}}},distance=..2] run tag @s add mm_drop_bow
execute as @a[tag=mm_drop_bow] run kill @e[type=item,nbt={Item:{tag:{Bow:1}}}]
execute as @a[tag=mm_drop_bow] run loot replace entity @s hotbar.0 loot mm:bow/survival
execute as @a[tag=mm_drop_bow] run tag @s remove mm_drop_bow


#修正箭矢数量
execute as @a[scores={mm_shoot_det=1}] run tag @s add mm_shoot
execute as @a[tag=mm_shoot] run scoreboard players remove @s mm_arrow 1
execute as @a[tag=mm_shoot] run scoreboard players operation @s mm_sc_tick = shoot_cooldown_normal_tick mm_settings
execute as @a[tag=mm_shoot] run scoreboard players operation @s mm_sc_second = shoot_cooldown_normal_second mm_settings
execute as @a[tag=mm_shoot] run clear @s arrow
execute as @a[tag=mm_shoot] run scoreboard players reset @s mm_shoot_det
execute as @a[tag=mm_shoot] run tag @s remove mm_shoot


#冷却计时完毕后填充箭
execute as @a[scores={mm_sc_second=0,mm_sc_tick=0,mm_arrow=1..}] run loot replace entity @s hotbar.1 loot mm:arrow


#矫正箭矢位置
execute if score timer mm_main matches 0 as @a run clear @s arrow
execute if score timer mm_main matches 0 run kill @e[type=item,nbt={Item:{id:"minecraft:arrow"}}]
execute if score timer mm_main matches 0 as @a[scores={mm_arrow=1..}] unless score @s mm_sc_second matches 0.. run loot replace entity @s hotbar.1 loot mm:arrow


#冷却计时
execute as @a[scores={mm_sc_second=0..}] run scoreboard players remove @s mm_sc_tick 1
execute as @a[scores={mm_sc_second=0..,mm_sc_tick=-1}] run scoreboard players remove @s mm_sc_second 1
execute as @a[scores={mm_sc_second=0..,mm_sc_tick=-1}] run scoreboard players set @s mm_sc_tick 19