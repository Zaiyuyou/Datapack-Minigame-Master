#检测触发
execute as @a[scores={mm_cosmetics=41..50}] run tag @s add mm_triggered_death_cry_menu

execute as @a[tag=mm_triggered_death_cry_menu] run tellraw @s {"text":"亡语","color":"white"}

execute as @a[tag=mm_triggered_death_cry_menu] run tellraw @s [{"text":"随机 "},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 400"}},{"text":"无(默认) "},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 401"}},{"text":"狼嚎 "},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 402"}}]
execute as @a[tag=mm_triggered_death_cry_menu] run tellraw @s [{"text":"龙吼 "},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 403"}}]

tellraw @a[tag=mm_triggered_death_cry_menu] {"text":"<<<返回上一级菜单","color":"gray","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 1"}}


#选择
execute as @a[scores={mm_cosmetics=400..499}] run tag @s add mm_selected_death_cry

execute as @a[tag=mm_selected_death_cry,scores={mm_cosmetics=400}] run tellraw @s [{"text":"已选择亡语为 ","color":"yellow"},{"text":"随机","color":"green"},{"text":"!","color":"yellow"}]
execute as @a[tag=mm_selected_death_cry,scores={mm_cosmetics=401}] run tellraw @s [{"text":"已选择亡语为 ","color":"yellow"},{"text":"无(默认)","color":"green"},{"text":"!","color":"yellow"}]
execute as @a[tag=mm_selected_death_cry,scores={mm_cosmetics=402}] run tellraw @s [{"text":"已选择亡语为 ","color":"yellow"},{"text":"狼嚎","color":"green"},{"text":"!","color":"yellow"}]
execute as @a[tag=mm_selected_death_cry,scores={mm_cosmetics=403}] run tellraw @s [{"text":"已选择亡语为 ","color":"yellow"},{"text":"龙吼","color":"green"},{"text":"!","color":"yellow"}]

execute as @a[tag=mm_selected_death_cry] run scoreboard players operation @s mm_death_cry = @s mm_cosmetics
execute as @a[tag=mm_selected_death_cry] run scoreboard players operation @s mm_death_cry -= 100 mm_main
execute as @a[tag=mm_selected_death_cry] run scoreboard players operation @s mm_death_cry -= 100 mm_main
execute as @a[tag=mm_selected_death_cry] run scoreboard players operation @s mm_death_cry -= 100 mm_main
execute as @a[tag=mm_selected_death_cry] run scoreboard players operation @s mm_death_cry -= 100 mm_main


#标签重置
execute as @a[tag=mm_triggered_death_cry_menu] run scoreboard players reset @s mm_cosmetics
execute as @a[tag=mm_triggered_death_cry_menu] run tag @s remove mm_triggered_death_cry_menu

execute as @a[tag=mm_selected_death_cry] run scoreboard players reset @s mm_cosmetics
execute as @a[tag=mm_selected_death_cry] run tag @s remove mm_selected_death_cry