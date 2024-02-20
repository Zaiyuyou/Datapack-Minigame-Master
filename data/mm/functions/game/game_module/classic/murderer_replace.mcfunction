#随机平民成为新杀手
tag @a[tag=mm_innocent,tag=!mm_detective,limit=1,sort=random] add mm_murderer_replace

execute as @a[tag=mm_murderer_replace] run tellraw @a[tag=mm_murderer] {"text":"你的杀手同伙已经离开! 一位玩家取代了他/她的位置!","color":"green"}

execute as @a[tag=mm_murderer_replace] run tag @s remove mm_innocent
execute as @a[tag=mm_murderer_replace] run tag @s add mm_murderer
execute as @a[tag=mm_murderer_replace] run tag @s add mm_origin
execute as @a[tag=mm_murderer_replace] run team join mm_murderer @s

function mm:scoreboards/calculate_data

execute as @a[tag=mm_murderer_replace] run tellraw @s {"text":"一名杀手已经离开! 你取代了他/她的位置!","color":"green"}
execute if score murderer_real_left mm_data matches 1 as @a[tag=mm_murderer_replace] run title @s subtitle {"text":"杀死所有玩家!","color":"yellow"}
execute if score murderer_real_left mm_data matches 2.. as @a[tag=mm_murderer_replace] run title @s subtitle {"text":"团结起来,杀死所有玩家!","color":"yellow"}
execute as @a[tag=mm_murderer_replace] run title @s title {"text":"身份:杀手","color":"red"}

execute if score murderer_real_left mm_data matches 2.. as @a[tag=mm_murderer_replace] run tellraw @a[tag=mm_murderer] ""
execute if score murderer_real_left mm_data matches 2.. as @a[tag=mm_murderer_replace] run tellraw @a[tag=mm_murderer] [{"text":"§e §e §e §e §e "},{"text":"杀手小组: ","color":"gray"},{"selector":"@a[tag=mm_murderer]","color":"gray"}]
execute if score murderer_real_left mm_data matches 2.. as @a[tag=mm_murderer_replace] run tellraw @a[tag=mm_murderer] [{"text":"§e §e §e §e §e §e §e §e §e §e §e §e "},{"text":"请","color":"gray"},{"text":"不要","color":"red","bold":"true"},{"text":"杀死他/她!","color":"gray"}]
execute if score murderer_real_left mm_data matches 2.. as @a[tag=mm_murderer_replace] run tellraw @a[tag=mm_murderer] [{"text":"§e §e §e §e §e §e "},{"text":"使用 ","color":"gray"},{"text":"/teammsg ","color":"gold"},{"text":"进行私密交流!","color":"gray"}]
execute if score murderer_real_left mm_data matches 2.. as @a[tag=mm_murderer_replace] run tellraw @a[tag=mm_murderer] ""

execute as @a[tag=mm_murderer_replace] run tag @s remove mm_murderer_replace