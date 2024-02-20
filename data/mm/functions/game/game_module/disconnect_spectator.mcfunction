#检测断线重连玩家
execute as @a unless score @s mm_online matches 1 run tag @s add mm_disconnected

execute as @a[tag=mm_disconnected] run function mm:game/game_module/reset_status
execute as @a[tag=mm_disconnected] run tp @a[limit=1,sort=random,gamemode=!spectator]
execute as @a[tag=mm_disconnected] run tag @s add mm_spectator
execute as @a[tag=mm_disconnected] run tag @s add mm_ranked
execute as @a[tag=mm_disconnected] run tag @s remove mm_dead

execute as @a[tag=mm_disconnected] run tag @s remove mm_disconnected

scoreboard players reset * mm_online
execute as @a run scoreboard players set @s mm_online 1