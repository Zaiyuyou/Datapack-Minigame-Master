#身份显示
execute as @a[tag=mm_outlaw,scores={mm_sc_second=-1}] run title @s actionbar [{"text":"队伍: ","color":"white"},{"text":"逃犯","color":"red"},{"text":"§e §e §e "},{"text":"击杀数: ","color":"white"},{"score":{"objective":"mm_kill_count","name":"@s"},"color":"green"},{"text":"§e §e §e "},{"text":"死亡数: ","color":"white"},{"score":{"objective":"mm_death_count","name":"@s"},"color":"green"}]
execute as @a[tag=mm_sheriff,scores={mm_sc_second=-1}] run title @s actionbar [{"text":"队伍: ","color":"white"},{"text":"警长","color":"aqua"},{"text":"§e §e §e "},{"text":"击杀数: ","color":"white"},{"score":{"objective":"mm_kill_count","name":"@s"},"color":"green"},{"text":"§e §e §e "},{"text":"死亡数: ","color":"white"},{"score":{"objective":"mm_death_count","name":"@s"},"color":"green"}]
execute as @a[tag=mm_spectator] run title @s actionbar [{"text":"身份: ","color":"white"},{"text":"旁观者","color":"gray"}]


#冷却(%)
execute as @a[tag=!mm_dead,scores={mm_sc_second=0..}] run tag @s add mm_display_cooldown
execute as @a[tag=mm_display_cooldown,scores={mm_sc_tick=..9}] run tag @s add mm_add_zero

execute as @a[tag=mm_display_cooldown] run scoreboard players operation @s mm_total_tick = @s mm_sc_second
execute as @a[tag=mm_display_cooldown] run scoreboard players operation @s mm_total_tick *= 20 mm_main
execute as @a[tag=mm_display_cooldown] run scoreboard players operation @s mm_total_tick += @s mm_sc_tick

##90
execute as @a[tag=mm_display_cooldown] if score @s mm_total_tick >= shoot_cooldown_normal_tick_90 mm_data run title @s actionbar [{"text":"冷却 ","color":"gold"},{"text":"[","color":"gray"},{"text":"■","color":"green"},{"text":"■■■■■■■■■","color":"red"},{"text":"] ","color":"gray"},{"score":{"objective":"mm_sc_second","name":"@s"},"color":"gold"},{"text":".","color":"gold"},{"score":{"objective":"mm_sc_tick","name":"@s"},"color":"gold"},{"text":"s","color":"gold"}]
execute as @a[tag=mm_display_cooldown,tag=mm_add_zero] if score @s mm_total_tick >= shoot_cooldown_normal_tick_90 mm_data run title @s actionbar [{"text":"冷却 ","color":"gold"},{"text":"[","color":"gray"},{"text":"■","color":"green"},{"text":"■■■■■■■■■","color":"red"},{"text":"] ","color":"gray"},{"score":{"objective":"mm_sc_second","name":"@s"},"color":"gold"},{"text":".0","color":"gold"},{"score":{"objective":"mm_sc_tick","name":"@s"},"color":"gold"},{"text":"s","color":"gold"}]
##80
execute as @a[tag=mm_display_cooldown] if score @s mm_total_tick >= shoot_cooldown_normal_tick_80 mm_data if score @s mm_total_tick < shoot_cooldown_normal_tick_90 mm_data run title @s actionbar [{"text":"冷却 ","color":"gold"},{"text":"[","color":"gray"},{"text":"■■","color":"green"},{"text":"■■■■■■■■","color":"red"},{"text":"] ","color":"gray"},{"score":{"objective":"mm_sc_second","name":"@s"},"color":"gold"},{"text":".","color":"gold"},{"score":{"objective":"mm_sc_tick","name":"@s"},"color":"gold"},{"text":"s","color":"gold"}]
execute as @a[tag=mm_display_cooldown,tag=mm_add_zero] if score @s mm_total_tick >= shoot_cooldown_normal_tick_80 mm_data if score @s mm_total_tick < shoot_cooldown_normal_tick_90 mm_data run title @s actionbar [{"text":"冷却 ","color":"gold"},{"text":"[","color":"gray"},{"text":"■■","color":"green"},{"text":"■■■■■■■■","color":"red"},{"text":"] ","color":"gray"},{"score":{"objective":"mm_sc_second","name":"@s"},"color":"gold"},{"text":".0","color":"gold"},{"score":{"objective":"mm_sc_tick","name":"@s"},"color":"gold"},{"text":"s","color":"gold"}]
##70
execute as @a[tag=mm_display_cooldown] if score @s mm_total_tick >= shoot_cooldown_normal_tick_70 mm_data if score @s mm_total_tick < shoot_cooldown_normal_tick_80 mm_data run title @s actionbar [{"text":"冷却 ","color":"gold"},{"text":"[","color":"gray"},{"text":"■■■","color":"green"},{"text":"■■■■■■■","color":"red"},{"text":"] ","color":"gray"},{"score":{"objective":"mm_sc_second","name":"@s"},"color":"gold"},{"text":".","color":"gold"},{"score":{"objective":"mm_sc_tick","name":"@s"},"color":"gold"},{"text":"s","color":"gold"}]
execute as @a[tag=mm_display_cooldown,tag=mm_add_zero] if score @s mm_total_tick >= shoot_cooldown_normal_tick_70 mm_data if score @s mm_total_tick < shoot_cooldown_normal_tick_80 mm_data run title @s actionbar [{"text":"冷却 ","color":"gold"},{"text":"[","color":"gray"},{"text":"■■■","color":"green"},{"text":"■■■■■■■","color":"red"},{"text":"] ","color":"gray"},{"score":{"objective":"mm_sc_second","name":"@s"},"color":"gold"},{"text":".0","color":"gold"},{"score":{"objective":"mm_sc_tick","name":"@s"},"color":"gold"},{"text":"s","color":"gold"}]
##60
execute as @a[tag=mm_display_cooldown] if score @s mm_total_tick >= shoot_cooldown_normal_tick_60 mm_data if score @s mm_total_tick < shoot_cooldown_normal_tick_70 mm_data run title @s actionbar [{"text":"冷却 ","color":"gold"},{"text":"[","color":"gray"},{"text":"■■■■","color":"green"},{"text":"■■■■■■","color":"red"},{"text":"] ","color":"gray"},{"score":{"objective":"mm_sc_second","name":"@s"},"color":"gold"},{"text":".","color":"gold"},{"score":{"objective":"mm_sc_tick","name":"@s"},"color":"gold"},{"text":"s","color":"gold"}]
execute as @a[tag=mm_display_cooldown,tag=mm_add_zero] if score @s mm_total_tick >= shoot_cooldown_normal_tick_60 mm_data if score @s mm_total_tick < shoot_cooldown_normal_tick_70 mm_data run title @s actionbar [{"text":"冷却 ","color":"gold"},{"text":"[","color":"gray"},{"text":"■■■■","color":"green"},{"text":"■■■■■■","color":"red"},{"text":"] ","color":"gray"},{"score":{"objective":"mm_sc_second","name":"@s"},"color":"gold"},{"text":".0","color":"gold"},{"score":{"objective":"mm_sc_tick","name":"@s"},"color":"gold"},{"text":"s","color":"gold"}]
##50
execute as @a[tag=mm_display_cooldown] if score @s mm_total_tick >= shoot_cooldown_normal_tick_50 mm_data if score @s mm_total_tick < shoot_cooldown_normal_tick_60 mm_data run title @s actionbar [{"text":"冷却 ","color":"gold"},{"text":"[","color":"gray"},{"text":"■■■■■","color":"green"},{"text":"■■■■■","color":"red"},{"text":"] ","color":"gray"},{"score":{"objective":"mm_sc_second","name":"@s"},"color":"gold"},{"text":".","color":"gold"},{"score":{"objective":"mm_sc_tick","name":"@s"},"color":"gold"},{"text":"s","color":"gold"}]
execute as @a[tag=mm_display_cooldown,tag=mm_add_zero] if score @s mm_total_tick >= shoot_cooldown_normal_tick_50 mm_data if score @s mm_total_tick < shoot_cooldown_normal_tick_60 mm_data run title @s actionbar [{"text":"冷却 ","color":"gold"},{"text":"[","color":"gray"},{"text":"■■■■■","color":"green"},{"text":"■■■■■","color":"red"},{"text":"] ","color":"gray"},{"score":{"objective":"mm_sc_second","name":"@s"},"color":"gold"},{"text":".0","color":"gold"},{"score":{"objective":"mm_sc_tick","name":"@s"},"color":"gold"},{"text":"s","color":"gold"}]
##40
execute as @a[tag=mm_display_cooldown] if score @s mm_total_tick >= shoot_cooldown_normal_tick_40 mm_data if score @s mm_total_tick < shoot_cooldown_normal_tick_50 mm_data run title @s actionbar [{"text":"冷却 ","color":"gold"},{"text":"[","color":"gray"},{"text":"■■■■■■","color":"green"},{"text":"■■■■","color":"red"},{"text":"] ","color":"gray"},{"score":{"objective":"mm_sc_second","name":"@s"},"color":"gold"},{"text":".","color":"gold"},{"score":{"objective":"mm_sc_tick","name":"@s"},"color":"gold"},{"text":"s","color":"gold"}]
execute as @a[tag=mm_display_cooldown,tag=mm_add_zero] if score @s mm_total_tick >= shoot_cooldown_normal_tick_40 mm_data if score @s mm_total_tick < shoot_cooldown_normal_tick_50 mm_data run title @s actionbar [{"text":"冷却 ","color":"gold"},{"text":"[","color":"gray"},{"text":"■■■■■■","color":"green"},{"text":"■■■■","color":"red"},{"text":"] ","color":"gray"},{"score":{"objective":"mm_sc_second","name":"@s"},"color":"gold"},{"text":".0","color":"gold"},{"score":{"objective":"mm_sc_tick","name":"@s"},"color":"gold"},{"text":"s","color":"gold"}]
##30
execute as @a[tag=mm_display_cooldown] if score @s mm_total_tick >= shoot_cooldown_normal_tick_30 mm_data if score @s mm_total_tick < shoot_cooldown_normal_tick_40 mm_data run title @s actionbar [{"text":"冷却 ","color":"gold"},{"text":"[","color":"gray"},{"text":"■■■■■■■","color":"green"},{"text":"■■■","color":"red"},{"text":"] ","color":"gray"},{"score":{"objective":"mm_sc_second","name":"@s"},"color":"gold"},{"text":".","color":"gold"},{"score":{"objective":"mm_sc_tick","name":"@s"},"color":"gold"},{"text":"s","color":"gold"}]
execute as @a[tag=mm_display_cooldown,tag=mm_add_zero] if score @s mm_total_tick >= shoot_cooldown_normal_tick_30 mm_data if score @s mm_total_tick < shoot_cooldown_normal_tick_40 mm_data run title @s actionbar [{"text":"冷却 ","color":"gold"},{"text":"[","color":"gray"},{"text":"■■■■■■■","color":"green"},{"text":"■■■","color":"red"},{"text":"] ","color":"gray"},{"score":{"objective":"mm_sc_second","name":"@s"},"color":"gold"},{"text":".0","color":"gold"},{"score":{"objective":"mm_sc_tick","name":"@s"},"color":"gold"},{"text":"s","color":"gold"}]
##20
execute as @a[tag=mm_display_cooldown] if score @s mm_total_tick >= shoot_cooldown_normal_tick_20 mm_data if score @s mm_total_tick < shoot_cooldown_normal_tick_30 mm_data run title @s actionbar [{"text":"冷却 ","color":"gold"},{"text":"[","color":"gray"},{"text":"■■■■■■■■","color":"green"},{"text":"■■","color":"red"},{"text":"] ","color":"gray"},{"score":{"objective":"mm_sc_second","name":"@s"},"color":"gold"},{"text":".","color":"gold"},{"score":{"objective":"mm_sc_tick","name":"@s"},"color":"gold"},{"text":"s","color":"gold"}]
execute as @a[tag=mm_display_cooldown,tag=mm_add_zero] if score @s mm_total_tick >= shoot_cooldown_normal_tick_20 mm_data if score @s mm_total_tick < shoot_cooldown_normal_tick_30 mm_data run title @s actionbar [{"text":"冷却 ","color":"gold"},{"text":"[","color":"gray"},{"text":"■■■■■■■■","color":"green"},{"text":"■■","color":"red"},{"text":"] ","color":"gray"},{"score":{"objective":"mm_sc_second","name":"@s"},"color":"gold"},{"text":".0","color":"gold"},{"score":{"objective":"mm_sc_tick","name":"@s"},"color":"gold"},{"text":"s","color":"gold"}]
##10
execute as @a[tag=mm_display_cooldown] if score @s mm_total_tick >= shoot_cooldown_normal_tick_10 mm_data if score @s mm_total_tick < shoot_cooldown_normal_tick_20 mm_data run title @s actionbar [{"text":"冷却 ","color":"gold"},{"text":"[","color":"gray"},{"text":"■■■■■■■■■","color":"green"},{"text":"■","color":"red"},{"text":"] ","color":"gray"},{"score":{"objective":"mm_sc_second","name":"@s"},"color":"gold"},{"text":".","color":"gold"},{"score":{"objective":"mm_sc_tick","name":"@s"},"color":"gold"},{"text":"s","color":"gold"}]
execute as @a[tag=mm_display_cooldown,tag=mm_add_zero] if score @s mm_total_tick >= shoot_cooldown_normal_tick_10 mm_data if score @s mm_total_tick < shoot_cooldown_normal_tick_20 mm_data run title @s actionbar [{"text":"冷却 ","color":"gold"},{"text":"[","color":"gray"},{"text":"■■■■■■■■■","color":"green"},{"text":"■","color":"red"},{"text":"] ","color":"gray"},{"score":{"objective":"mm_sc_second","name":"@s"},"color":"gold"},{"text":".0","color":"gold"},{"score":{"objective":"mm_sc_tick","name":"@s"},"color":"gold"},{"text":"s","color":"gold"}]
##0
execute as @a[tag=mm_display_cooldown] if score @s mm_total_tick < shoot_cooldown_normal_tick_10 mm_data run title @s actionbar [{"text":"冷却 ","color":"gold"},{"text":"[","color":"gray"},{"text":"■■■■■■■■■■","color":"green"},{"text":"] ","color":"gray"},{"score":{"objective":"mm_sc_second","name":"@s"},"color":"gold"},{"text":".","color":"gold"},{"score":{"objective":"mm_sc_tick","name":"@s"},"color":"gold"},{"text":"s","color":"gold"}]
execute as @a[tag=mm_display_cooldown,tag=mm_add_zero] if score @s mm_total_tick < shoot_cooldown_normal_tick_10 mm_data run title @s actionbar [{"text":"冷却 ","color":"gold"},{"text":"[","color":"gray"},{"text":"■■■■■■■■■■","color":"green"},{"text":"] ","color":"gray"},{"score":{"objective":"mm_sc_second","name":"@s"},"color":"gold"},{"text":".0","color":"gold"},{"score":{"objective":"mm_sc_tick","name":"@s"},"color":"gold"},{"text":"s","color":"gold"}]

execute as @a[tag=mm_display_cooldown,tag=mm_add_zero] run tag @s remove mm_add_zero
execute as @a[tag=mm_display_cooldown] run tag @s remove mm_display_cooldown