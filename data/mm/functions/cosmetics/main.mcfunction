#装饰品初始值
execute as @a run scoreboard players enable @s mm_cosmetics
execute as @a unless score @s mm_knife_skin matches 0.. run scoreboard players set @s mm_knife_skin 1
execute as @a unless score @s mm_projectile matches 0.. run scoreboard players set @s mm_projectile 1
execute as @a unless score @s mm_lastwords matches 0.. run scoreboard players set @s mm_lastwords 1
execute as @a unless score @s mm_death_cry matches 0.. run scoreboard players set @s mm_death_cry 1
execute as @a unless score @s mm_dead_body matches 0.. run scoreboard players set @s mm_dead_body 1


#游戏开始后拦截触发
execute if score game_start mm_main matches 2 as @a[scores={mm_cosmetics=1..}] run tellraw @s {"text":"请等待游戏结束再使用!","color":"red"}
execute if score game_start mm_main matches 2 as @a[scores={mm_cosmetics=1..}] run scoreboard players reset @s mm_cosmetics


#检测触发
execute as @a[scores={mm_cosmetics=1}] run tag @s add mm_triggered_cosmetics_menu

execute as @a[tag=mm_triggered_cosmetics_menu] run tellraw @s {"text":"装饰品菜单","color":"white"}
execute as @a[tag=mm_triggered_cosmetics_menu] run tellraw @s {"text":"匕首皮肤","color":"gray","hoverEvent":{"action":"show_text","value":{"text":"选择作为杀手的近战武器皮肤","color":"gray"}},"clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 11"}}
execute as @a[tag=mm_triggered_cosmetics_menu] run tellraw @s {"text":"弹射物轨迹","color":"gray","hoverEvent":{"action":"show_text","value":{"text":"选择你所发射的飞刀/箭的轨迹","color":"gray"}},"clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 21"}}
execute as @a[tag=mm_triggered_cosmetics_menu] run tellraw @s {"text":"遗言","color":"gray","hoverEvent":{"action":"show_text","value":{"text":"选择你死亡后遗体上出现的遗言","color":"gray"}},"clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 31"}}
execute as @a[tag=mm_triggered_cosmetics_menu] run tellraw @s {"text":"亡语","color":"gray","hoverEvent":{"action":"show_text","value":{"text":"选择你死亡后播放给你和杀手的亡语","color":"gray"}},"clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 41"}}
execute as @a[tag=mm_triggered_cosmetics_menu] run tellraw @s {"text":"遗体","color":"gray","hoverEvent":{"action":"show_text","value":{"text":"选择你死亡后的遗体","color":"gray"}},"clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 51"}}

execute as @a[tag=mm_triggered_cosmetics_menu] run scoreboard players reset @s mm_cosmetics
execute as @a[tag=mm_triggered_cosmetics_menu] run tag @s remove mm_triggered_cosmetics_menu


#匕首皮肤
function mm:cosmetics/knife_skin

#弹射物轨迹
function mm:cosmetics/projectile

#遗言
function mm:cosmetics/lastwords

#亡语
function mm:cosmetics/death_cry

#遗体
function mm:cosmetics/dead_body