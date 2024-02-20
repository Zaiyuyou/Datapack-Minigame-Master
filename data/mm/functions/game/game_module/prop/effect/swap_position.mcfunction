execute as @s at @s run tag @a[tag=!mm_dead,tag=!mm_spectator,limit=1,sort=random,distance=0.01..] add mm_swap_position
execute as @s as @a[tag=mm_swap_position] at @s run summon minecraft:armor_stand ~ ~ ~ {Invisible:1,NoGravity:1,Tags:["mm_swap_position_marker"]}

execute as @s at @s run kill @e[tag=mm_prop,dy=0,limit=1]

execute as @s run tp @a[tag=mm_swap_position] @s
execute as @s run tp @e[tag=mm_swap_position_marker,limit=1]
execute as @s run kill @e[tag=mm_swap_position_marker]

execute as @s run tellraw @s {"text":"你与一名玩家交换了位置!","color":"green"}
execute as @s run tellraw @a[tag=mm_swap_position] {"text":"你与一名玩家交换了位置!","color":"green"}

execute as @s as @a[tag=mm_swap_position] run tag @s remove mm_swap_position