#死因
execute as @s[tag=mm_victim,scores={mm_death_type=1}] run tellraw @s [{"text":"你死了! ","color":"red"},{"text":"杀手捅了你一刀!","color":"yellow"}]
execute as @s[tag=mm_victim,scores={mm_death_type=1}] run title @s subtitle {"text":"杀手捅了你一刀!","color":"yellow"}

execute as @s[tag=mm_victim,scores={mm_death_type=2}] run tellraw @s [{"text":"你死了! ","color":"red"},{"text":"杀手射中了你!","color":"yellow"}]
execute as @s[tag=mm_victim,scores={mm_death_type=2}] run title @s subtitle {"text":"杀手射中了你!","color":"yellow"}

##击杀距离
execute as @s[tag=mm_victim,scores={mm_death_type=3}] at @s run function mm:game/game_module/classic/calculate_distance

execute as @s[tag=mm_victim,scores={mm_death_type=3}] run tellraw @s [{"text":"你死了! ","color":"red"},{"text":"一名玩家杀了你!","color":"yellow"}]
execute as @s[tag=mm_victim,scores={mm_death_type=3}] run title @s subtitle {"text":"一名玩家杀了你!","color":"yellow"}

execute as @s[tag=mm_victim,scores={mm_death_type=4}] run tellraw @s [{"text":"你死了! ","color":"red"},{"text":"你杀死了一位平民!","color":"yellow"}]
execute as @s[tag=mm_victim,scores={mm_death_type=4}] run title @s subtitle {"text":"你杀死了一位平民!","color":"yellow"}

execute as @s[tag=mm_victim,scores={mm_death_type=5}] run tellraw @s [{"text":"你死了! ","color":"red"},{"text":"杀手的飞刀击中了你!","color":"yellow"}]
execute as @s[tag=mm_victim,scores={mm_death_type=5}] run title @s subtitle {"text":"杀手的飞刀击中了你!","color":"yellow"}

execute as @s[tag=mm_victim,scores={mm_death_type=6}] run tellraw @s [{"text":"你死了! ","color":"red"},{"text":"恶灵捅了你一刀!","color":"yellow"}]
execute as @s[tag=mm_victim,scores={mm_death_type=6}] run title @s subtitle {"text":"恶灵捅了你一刀!","color":"yellow"}

execute as @s[tag=mm_victim,scores={mm_death_type=7}] run tellraw @s [{"text":"你死了! ","color":"red"},{"text":"恶灵的飞刀击中了你!","color":"yellow"}]
execute as @s[tag=mm_victim,scores={mm_death_type=7}] run title @s subtitle {"text":"恶灵的飞刀击中了你!","color":"yellow"}

execute as @s[tag=mm_victim,scores={mm_death_type=8}] run tellraw @s [{"text":"你死了! ","color":"red"},{"text":"恶灵射中了你!","color":"yellow"}]
execute as @s[tag=mm_victim,scores={mm_death_type=8}] run title @s subtitle {"text":"恶灵射中了你!","color":"yellow"}

#9:感染者击杀了你

execute as @s[tag=mm_victim,scores={mm_death_type=10}] run tellraw @s [{"text":"你死了! ","color":"red"},{"text":"一名幸存者杀了你!","color":"yellow"}]
execute as @s[tag=mm_victim,scores={mm_death_type=10}] run title @s subtitle {"text":"一名幸存者杀了你!","color":"yellow"}

execute as @s[tag=mm_victim,scores={mm_death_type=101}] run tellraw @s [{"text":"你死了! ","color":"red"},{"text":"你步入了危险之地!","color":"yellow"}]
execute as @s[tag=mm_victim,scores={mm_death_type=101}] run title @s subtitle {"text":"你步入了危险之地!","color":"yellow"}

execute as @s[tag=mm_victim,scores={mm_death_type=102}] run tellraw @s [{"text":"你死了! ","color":"red"},{"text":"你溺死了!","color":"yellow"}]
execute as @s[tag=mm_victim,scores={mm_death_type=102}] run title @s subtitle {"text":"你溺死了!","color":"yellow"}

execute as @s[tag=mm_victim,scores={mm_death_type=103}] run tellraw @s [{"text":"你死了! ","color":"red"},{"text":"你掉入了熔岩!","color":"yellow"}]
execute as @s[tag=mm_victim,scores={mm_death_type=103}] run title @s subtitle {"text":"你掉入了熔岩!","color":"yellow"}

execute as @s[tag=mm_victim,scores={mm_death_type=104}] run tellraw @s [{"text":"你死了! ","color":"red"},{"text":"你重伤倒地!","color":"yellow"}]
execute as @s[tag=mm_victim,scores={mm_death_type=104}] run title @s subtitle {"text":"你重伤倒地!","color":"yellow"}

execute as @s[tag=mm_victim,scores={mm_death_type=105}] run tellraw @s [{"text":"你死了! ","color":"red"},{"text":"你成功地射杀了你自己!","color":"yellow"}]
execute as @s[tag=mm_victim,scores={mm_death_type=105}] run title @s subtitle {"text":"你成功地射杀了你自己!","color":"yellow"}

execute as @s[tag=mm_victim,scores={mm_death_type=106}] run tellraw @s [{"text":"你死了! ","color":"red"},{"text":"你被魔法杀死了!","color":"yellow"}]
execute as @s[tag=mm_victim,scores={mm_death_type=106}] run title @s subtitle {"text":"你被魔法杀死了!","color":"yellow"}

execute as @s[tag=mm_victim,scores={mm_death_type=107}] run tellraw @s [{"text":"你死了! ","color":"red"},{"text":"你杀死了你的杀手同伙!","color":"yellow"}]
execute as @s[tag=mm_victim,scores={mm_death_type=107}] run title @s subtitle {"text":"你杀死了你的杀手同伙!","color":"yellow"}

execute as @s[tag=mm_victim,scores={mm_death_type=108}] run tellraw @s [{"text":"你死了! ","color":"red"},{"text":"你被圣水杀死了!","color":"yellow"}]
execute as @s[tag=mm_victim,scores={mm_death_type=108}] run title @s subtitle {"text":"你被圣水杀死了!","color":"yellow"}


execute as @s[tag=mm_victim,scores={mm_death_type=1..}] run title @s title {"text":"你死了! ","color":"red"}