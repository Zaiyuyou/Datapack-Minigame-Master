#创建边界数据
execute as @e[tag=mm_border_center] at @s run worldborder center ~ ~
worldborder set 500
worldborder damage buffer 3
worldborder damage amount 0.01
scoreboard players operation border_flag mm_main = border_discount mm_settings
scoreboard players operation border_discount mm_main = border_discount mm_settings
scoreboard players remove border_discount mm_main 60
execute if score border_discount mm_main = -1 mm_main run scoreboard players set border_flag mm_main -1
tellraw @a {"text":"边界已重置!","color":"yellow"}
execute unless score border_discount mm_main <= -1 mm_main run title @a subtitle [{"text":"[骗赞魔改]","color":"dark_purple"},{"text":"缩圈在剩余:","color":"yellow"},{"score":{"objective":"mm_main","name":"border_discount"},"color":"gold"},{"text":"秒","color":"gold"},{"text":"时开始","color":"green"}]
execute if score border_discount mm_main <= -1 mm_main run title @a subtitle [{"text":"缩圈功能:","color":"yellow"},{"text":"关闭","color":"red"}]
execute if score border_discount mm_main <= -1 mm_main run title @a title {"text":""}

