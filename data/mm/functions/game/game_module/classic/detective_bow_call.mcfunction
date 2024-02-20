#矫正弓位置
execute as @s[nbt={Inventory:[{tag:{Bow:1}}]},nbt=!{Inventory:[{tag:{Bow:1},Slot:1b}]},tag=mm_origin] run tag @s add mm_dislocate_bow
execute as @s[nbt={Inventory:[{tag:{Bow:1}}]},nbt=!{Inventory:[{tag:{Bow:1},Slot:0b}]},tag=!mm_origin] run tag @s add mm_dislocate_bow
execute as @s[tag=mm_dislocate_bow] run clear @s bow
execute as @s[tag=mm_dislocate_bow,tag=mm_origin] run loot replace entity @s hotbar.1 loot mm:bow/detective
execute as @s[tag=mm_dislocate_bow,tag=!mm_origin] run loot replace entity @s hotbar.0 loot mm:bow/detective
execute as @s[tag=mm_dislocate_bow] run tag @s remove mm_dislocate_bow

execute as @s[nbt=!{Inventory:[{tag:{Bow:1}}]}] at @s if entity @e[type=item,nbt={Item:{tag:{Bow:1}}},distance=..2] run tag @s add mm_drop_bow
execute as @s[tag=mm_drop_bow] run kill @e[type=item,nbt={Item:{tag:{Bow:1}}}]
execute as @s[tag=mm_drop_bow,tag=mm_origin] run loot replace entity @s hotbar.1 loot mm:bow/detective
execute as @s[tag=mm_drop_bow,tag=!mm_origin] run loot replace entity @s hotbar.0 loot mm:bow/detective
execute as @s[tag=mm_drop_bow] run tag @s remove mm_drop_bow


#检测消耗箭并触发
execute as @s[scores={mm_cd_second=-1,mm_arrow=0},nbt={Inventory:[{tag:{Bow:1}}]}] run tag @s add mm_shoot
execute as @s[tag=mm_shoot] run scoreboard players operation @s mm_cd_tick = cooldown_normal_tick mm_settings
execute as @s[tag=mm_shoot] run scoreboard players operation @s mm_cd_second = cooldown_normal_second mm_settings
execute as @s[tag=mm_shoot] run tag @s remove mm_shoot


#冷却计时完毕后填充箭
execute as @s[scores={mm_cd_second=0,mm_cd_tick=0}] run scoreboard players add @s mm_arrow 1
execute as @s[scores={mm_cd_second=0,mm_cd_tick=0},tag=mm_origin] run loot replace entity @s container.9 loot mm:arrow
execute as @s[scores={mm_cd_second=0,mm_cd_tick=0},tag=!mm_origin] run loot replace entity @s hotbar.1 loot mm:arrow


#冷却计时
execute as @s[scores={mm_cd_second=0..}] run scoreboard players remove @s mm_cd_tick 1
execute as @s[scores={mm_cd_second=0..,mm_cd_tick=-1}] run scoreboard players remove @s mm_cd_second 1
execute as @s[scores={mm_cd_second=0..,mm_cd_tick=-1}] run scoreboard players set @s mm_cd_tick 19