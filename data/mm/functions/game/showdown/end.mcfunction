#计分板刷新
function mm:scoreboards/main
scoreboard players set game_start mm_main 3


#本局游戏总结
tellraw @a {"text":"=============================================","color":"green"}

tellraw @a [{"text":"§e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e "},{"text":"密室杀手","bold":"true"}]

execute if score sheriff_left mm_data matches 0 run tellraw @a [{"text":"§e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e "},{"text":"胜利队伍:"},{"text":"逃犯","color":"red"}]
execute if score outlaw_left mm_data matches 0 run tellraw @a [{"text":"§e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e "},{"text":"胜利队伍:"},{"text":"警长","color":"aqua"}]
execute if score outlaw_kill_count mm_data matches 30 run tellraw @a [{"text":"§e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e "},{"text":"胜利队伍:"},{"text":"逃犯","color":"red"}]
execute if score sheriff_kill_count mm_data matches 30 run tellraw @a [{"text":"§e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e "},{"text":"胜利队伍:"},{"text":"警长","color":"aqua"}]
execute if score game_second mm_main matches 0 if score outlaw_kill_count mm_data > sheriff_kill_count mm_data run tellraw @a [{"text":"§e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e "},{"text":"胜利队伍:"},{"text":"逃犯","color":"red"}]
execute if score game_second mm_main matches 0 if score outlaw_kill_count mm_data < sheriff_kill_count mm_data run tellraw @a [{"text":"§e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e "},{"text":"胜利队伍:"},{"text":"警长","color":"aqua"}]
execute if score game_second mm_main matches 0 if score outlaw_kill_count mm_data = sheriff_kill_count mm_data run tellraw @a [{"text":"§e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e "},{"text":"平局","color":"yellow"}]

execute if score sheriff_left mm_data matches 0 run scoreboard players add @a[tag=mm_outlaw] mm_stats_1 1
execute if score outlaw_kill_count mm_data matches 30 run scoreboard players add @a[tag=mm_outlaw] mm_stats_1 1
execute if score game_second mm_main matches 0 if score outlaw_kill_count mm_data > sheriff_kill_count mm_data run scoreboard players add @a[tag=mm_outlaw] mm_stats_1 1
execute if score outlaw_left mm_data matches 0 run scoreboard players add @a[tag=mm_sheriff] mm_stats_1 1
execute if score sheriff_kill_count mm_data matches 30 run scoreboard players add @a[tag=mm_sheriff] mm_stats_1 1
execute if score game_second mm_main matches 0 if score outlaw_kill_count mm_data < sheriff_kill_count mm_data run scoreboard players add @a[tag=mm_sheriff] mm_stats_1 1

tellraw @a ""

tellraw @a [{"text":"§e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e "},{"text":"击杀排行"}]

##第一名
execute as @a[tag=!mm_ranked] run scoreboard players operation @s mm_top_1 = @s mm_kill_count
execute as @a[tag=!mm_ranked] run scoreboard players operation @s mm_top_1 > @a[tag=!mm_ranked] mm_top_1
execute as @a[tag=!mm_ranked] run scoreboard players operation @s mm_top_1 -= @s mm_kill_count
execute as @a[tag=!mm_ranked,tag=mm_outlaw,scores={mm_top_1=0}] run tellraw @a [{"text":"§e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e "},{"text":"#1 ","color":"white"},{"selector":"@s","color":"red"},{"text":"(","color":"white"},{"score":{"objective":"mm_kill_count","name":"@s"},"color":"green"},{"text":" 杀)","color":"white"}]
execute as @a[tag=!mm_ranked,tag=mm_sheriff,scores={mm_top_1=0}] run tellraw @a [{"text":"§e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e "},{"text":"#1 ","color":"white"},{"selector":"@s","color":"aqua"},{"text":"(","color":"white"},{"score":{"objective":"mm_kill_count","name":"@s"},"color":"green"},{"text":" 杀)","color":"white"}]
execute as @a[tag=!mm_ranked,scores={mm_top_1=0}] run tag @s add mm_ranked

##第二名
execute as @a[tag=!mm_ranked] run scoreboard players operation @s mm_top_1 = @s mm_kill_count
execute as @a[tag=!mm_ranked] run scoreboard players operation @s mm_top_1 > @a[tag=!mm_ranked] mm_top_1
execute as @a[tag=!mm_ranked] run scoreboard players operation @s mm_top_1 -= @s mm_kill_count
execute as @a[tag=!mm_ranked,tag=mm_outlaw,scores={mm_top_1=0}] run tellraw @a [{"text":"§e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e "},{"text":"#2 ","color":"white"},{"selector":"@s","color":"red"},{"text":"(","color":"white"},{"score":{"objective":"mm_kill_count","name":"@s"},"color":"green"},{"text":" 杀)","color":"white"}]
execute as @a[tag=!mm_ranked,tag=mm_sheriff,scores={mm_top_1=0}] run tellraw @a [{"text":"§e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e "},{"text":"#2 ","color":"white"},{"selector":"@s","color":"aqua"},{"text":"(","color":"white"},{"score":{"objective":"mm_kill_count","name":"@s"},"color":"green"},{"text":" 杀)","color":"white"}]
execute as @a[tag=!mm_ranked,scores={mm_top_1=0}] run tag @s add mm_ranked

##第三名
execute as @a[tag=!mm_ranked] run scoreboard players operation @s mm_top_1 = @s mm_kill_count
execute as @a[tag=!mm_ranked] run scoreboard players operation @s mm_top_1 > @a[tag=!mm_ranked] mm_top_1
execute as @a[tag=!mm_ranked] run scoreboard players operation @s mm_top_1 -= @s mm_kill_count
execute as @a[tag=!mm_ranked,tag=mm_outlaw,scores={mm_top_1=0}] run tellraw @a [{"text":"§e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e "},{"text":"#3 ","color":"white"},{"selector":"@s","color":"red"},{"text":"(","color":"white"},{"score":{"objective":"mm_kill_count","name":"@s"},"color":"green"},{"text":" 杀)","color":"white"}]
execute as @a[tag=!mm_ranked,tag=mm_sheriff,scores={mm_top_1=0}] run tellraw @a [{"text":"§e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e "},{"text":"#3 ","color":"white"},{"selector":"@s","color":"aqua"},{"text":"(","color":"white"},{"score":{"objective":"mm_kill_count","name":"@s"},"color":"green"},{"text":" 杀)","color":"white"}]
execute as @a[tag=!mm_ranked,scores={mm_top_1=0}] run tag @s add mm_ranked

tag @a remove mm_ranked
tellraw @a ""

tellraw @a [{"text":"§e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e "},{"text":"最高K/D"}]

##计算K/D
execute as @a if score @s mm_death_count matches 0 run scoreboard players set @s mm_death_count 1

execute as @a run scoreboard players operation @s mm_top_2 = @s mm_kill_count
execute as @a run scoreboard players operation @s mm_top_2 *= 100 mm_main
execute as @a run scoreboard players operation @s mm_top_2 /= @s mm_death_count

execute as @a run scoreboard players operation @s mm_top_3 = @s mm_top_2
execute as @a run scoreboard players operation @s mm_top_3 /= 100 mm_main

execute as @a run scoreboard players operation @s mm_top_4 = @s mm_top_2
execute as @a run scoreboard players operation @s mm_top_4 %= 100 mm_main

execute as @a run scoreboard players operation @s mm_top_1 = @s mm_top_2
execute as @a run scoreboard players operation @s mm_top_1 > @a mm_top_1
execute as @a run scoreboard players operation @s mm_top_1 -= @s mm_top_2
execute as @a[tag=mm_outlaw,scores={mm_top_1=0}] run tellraw @a [{"text":"§e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e "},{"text":"#1 ","color":"white"},{"selector":"@s","color":"red"},{"text":"(","color":"white"},{"score":{"objective":"mm_top_3","name":"@s"},"color":"green"},{"text":".","color":"green"},{"score":{"objective":"mm_top_4","name":"@s"},"color":"green"},{"text":")","color":"white"}]
execute as @a[tag=mm_sheriff,scores={mm_top_1=0}] run tellraw @a [{"text":"§e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e §e "},{"text":"#1 ","color":"white"},{"selector":"@s","color":"aqua"},{"text":"(","color":"white"},{"score":{"objective":"mm_top_3","name":"@s"},"color":"green"},{"text":".","color":"green"},{"score":{"objective":"mm_top_4","name":"@s"},"color":"green"},{"text":")","color":"white"}]

tellraw @a ""

tellraw @a {"text":"=============================================","color":"green"}


#将返厅倒计时设定为10秒(200游戏刻)
scoreboard players set return_lobby mm_main 200


#清空背包
clear @a