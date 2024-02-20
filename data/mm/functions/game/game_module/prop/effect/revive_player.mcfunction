execute as @s run tag @a[tag=mm_dead,limit=1,sort=random] add mm_revive

execute as @s as @a[tag=mm_revive] at @s run tellraw @a[distance=0.01..] [{"text":"一名玩家激活了","color":"green"},{"text":"复活玩家","color":"gold","bold":"true"},{"text":",一名已死亡的玩家复活了!","color":"green"}]
execute as @s as @a[tag=mm_revive] run tellraw @s {"text":"你被神力复活了!","color":"green"}
execute as @s as @a[tag=mm_revive] run effect clear @s
execute as @s as @a[tag=mm_revive] run tag @s remove mm_dead
execute as @s as @a[tag=mm_revive] at @e[tag=mm_spawn,limit=1,sort=random,tag=mm_actived] run tp ~ ~2 ~

execute as @s as @a[tag=mm_revive] run tag @s remove mm_revive