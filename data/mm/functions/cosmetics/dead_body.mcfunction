#检测触发
execute as @a[scores={mm_cosmetics=51..60}] run tag @s add mm_triggered_dead_body_menu

execute as @a[tag=mm_triggered_dead_body_menu] run tellraw @s {"text":"遗体","color":"white"}

execute as @a[tag=mm_triggered_dead_body_menu] run tellraw @s ["",{"text":"随机 "},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 500"}},{"text":"骷髅(默认) "},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 501"}},{"text":"僵尸 "},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 502"}}]
execute as @a[tag=mm_triggered_dead_body_menu] run tellraw @s ["",{"text":"苦力怕 ","hoverEvent":{"action":"show_text","value":{"text":"该遗体无法正常显示头颅和手持物!","color":"yellow"}}},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 503"}},{"text":"凋灵骷髅 "},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 504"}},{"text":"流浪者 "},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 505"}}]
execute as @a[tag=mm_triggered_dead_body_menu] run tellraw @s ["",{"text":"烈焰人 ","hoverEvent":{"action":"show_text","value":{"text":"该遗体无法正常显示头颅和手持物!","color":"yellow"}}},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 506"}},{"text":"溺尸 "},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 507"}},{"text":"尸壳 "},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 508"}}]

tellraw @a[tag=mm_triggered_dead_body_menu] {"text":"<<<返回上一级菜单","color":"gray","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 1"}}


#选择
execute as @a[scores={mm_cosmetics=500..599}] run tag @s add mm_selected_dead_body

execute as @a[tag=mm_selected_dead_body,scores={mm_cosmetics=500}] run tellraw @s [{"text":"已选择遗体为 ","color":"yellow"},{"text":"随机","color":"green"},{"text":"!","color":"yellow"}]
execute as @a[tag=mm_selected_dead_body,scores={mm_cosmetics=501}] run tellraw @s [{"text":"已选择遗体为 ","color":"yellow"},{"text":"骷髅(默认)","color":"green"},{"text":"!","color":"yellow"}]
execute as @a[tag=mm_selected_dead_body,scores={mm_cosmetics=502}] run tellraw @s [{"text":"已选择遗体为 ","color":"yellow"},{"text":"僵尸","color":"green"},{"text":"!","color":"yellow"}]
execute as @a[tag=mm_selected_dead_body,scores={mm_cosmetics=503}] run tellraw @s [{"text":"已选择遗体为 ","color":"yellow"},{"text":"苦力怕","color":"green"},{"text":"!","color":"yellow"}]
execute as @a[tag=mm_selected_dead_body,scores={mm_cosmetics=504}] run tellraw @s [{"text":"已选择遗体为 ","color":"yellow"},{"text":"凋灵骷髅","color":"green"},{"text":"!","color":"yellow"}]
execute as @a[tag=mm_selected_dead_body,scores={mm_cosmetics=505}] run tellraw @s [{"text":"已选择遗体为 ","color":"yellow"},{"text":"流浪者","color":"green"},{"text":"!","color":"yellow"}]
execute as @a[tag=mm_selected_dead_body,scores={mm_cosmetics=506}] run tellraw @s [{"text":"已选择遗体为 ","color":"yellow"},{"text":"烈焰人","color":"green"},{"text":"!","color":"yellow"}]
execute as @a[tag=mm_selected_dead_body,scores={mm_cosmetics=507}] run tellraw @s [{"text":"已选择遗体为 ","color":"yellow"},{"text":"溺尸","color":"green"},{"text":"!","color":"yellow"}]
execute as @a[tag=mm_selected_dead_body,scores={mm_cosmetics=508}] run tellraw @s [{"text":"已选择遗体为 ","color":"yellow"},{"text":"尸壳","color":"green"},{"text":"!","color":"yellow"}]

execute as @a[tag=mm_selected_dead_body] run scoreboard players operation @s mm_dead_body = @s mm_cosmetics
execute as @a[tag=mm_selected_dead_body] run scoreboard players operation @s mm_dead_body -= 100 mm_main
execute as @a[tag=mm_selected_dead_body] run scoreboard players operation @s mm_dead_body -= 100 mm_main
execute as @a[tag=mm_selected_dead_body] run scoreboard players operation @s mm_dead_body -= 100 mm_main
execute as @a[tag=mm_selected_dead_body] run scoreboard players operation @s mm_dead_body -= 100 mm_main
execute as @a[tag=mm_selected_dead_body] run scoreboard players operation @s mm_dead_body -= 100 mm_main


#标签重置
execute as @a[tag=mm_triggered_dead_body_menu] run scoreboard players reset @s mm_cosmetics
execute as @a[tag=mm_triggered_dead_body_menu] run tag @s remove mm_triggered_dead_body_menu

execute as @a[tag=mm_selected_dead_body] run scoreboard players reset @s mm_cosmetics
execute as @a[tag=mm_selected_dead_body] run tag @s remove mm_selected_dead_body