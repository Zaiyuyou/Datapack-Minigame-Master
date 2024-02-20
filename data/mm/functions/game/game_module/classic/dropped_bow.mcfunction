#掉落弓旋转
execute as @e[tag=mm_dropped_bow] at @s run tp @s ~ ~ ~ ~5 ~


#平民捡弓
execute as @e[tag=mm_dropped_bow] at @s if entity @a[dy=0,tag=mm_innocent,tag=!mm_detective,tag=!mm_dead] run tag @a[dy=0,limit=1,sort=random,tag=mm_innocent,tag=!mm_detective,tag=!mm_dead] add mm_pick_up_bow
execute as @e[tag=mm_dropped_bow] at @s if entity @a[dy=0,tag=mm_innocent,tag=!mm_detective,tag=!mm_dead] run kill @s

execute as @a[tag=mm_pick_up_bow] at @s run tellraw @a[distance=0.01..] {"text":"一位玩家捡起了弓!","color":"yellow"}
execute as @a[tag=mm_pick_up_bow] run tellraw @s [{"text":"你捡起了弓! ","color":"yellow"},{"text":"目标: ","color":"gold"},{"text":"找到并杀死杀手!","color":"green"}]

execute as @a[tag=mm_pick_up_bow] run clear @s bow
execute as @a[tag=mm_pick_up_bow] run loot replace entity @s hotbar.0 loot mm:bow/detective
execute as @a[tag=mm_pick_up_bow] run scoreboard players set @s mm_arrow 1
execute as @a[tag=mm_pick_up_bow] run tag @s add mm_detective

execute as @a[tag=mm_pick_up_bow] run tag @s remove mm_pick_up_bow


#侦探离开
execute if score detective_and_dropped_bow_total_left mm_data < murderer_count mm_settings run tellraw @a {"text":"一名侦探已经离开! 找到弓并抓住机会杀死杀手!","color":"gold"}
execute if score detective_and_dropped_bow_total_left mm_data < murderer_count mm_settings at @e[tag=mm_dropped_bow_spawn,limit=1,tag=mm_actived] run summon minecraft:armor_stand ~ ~2 ~ {Invisible:1,ShowArms:1,NoGravity:1,HandItems:[{id:"minecraft:bow",Count:1}],Pose:{RightArm:[-45f,-90f,0f]},DisabledSlots:7967,Tags:["mm_dropped_bow"]}
execute if score detective_and_dropped_bow_total_left mm_data < murderer_count mm_settings run function mm:scoreboards/calculate_data