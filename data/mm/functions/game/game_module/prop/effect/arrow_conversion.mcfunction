execute as @s run tellraw @s [{"text":"你的","color":"green"},{"score":{"objective":"mm_gold_ingot","name":"@s"},"color":"green"},{"text":"块金锭已转换为等量的箭矢!","color":"green"}]
execute if score @s mm_gold_ingot matches 1.. as @s run title @s subtitle [{"text":"+","color":"green"},{"score":{"objective":"mm_gold_ingot","name":"@s"},"color":"green"},{"text":" 射箭次数!","color":"green"}]
execute if score @s mm_gold_ingot matches 1.. as @s run title @s title ""

execute if score @s mm_gold_ingot matches 1.. as @s[tag=mm_murderer] run loot replace entity @s container.0 loot mm:bow/murderer
execute if score @s mm_gold_ingot matches 1.. as @s[tag=mm_innocent,tag=!mm_detective] run loot replace entity @s container.0 loot mm:bow/innocent
execute if score @s mm_gold_ingot matches 1.. as @s run scoreboard players operation @s mm_arrow += @s mm_gold_ingot
execute if score @s mm_gold_ingot matches 1.. as @s run scoreboard players set @s mm_gold_ingot 0