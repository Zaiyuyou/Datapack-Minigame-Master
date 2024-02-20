#检测触发
execute as @a[scores={mm_cosmetics=21..30}] run tag @s add mm_triggered_projectile_menu

execute as @a[tag=mm_triggered_projectile_menu] run tellraw @s {"text":"弹射物轨迹","color":"white"}

execute as @a[tag=mm_triggered_projectile_menu] run tellraw @s [{"text":"随机 "},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 200"}},{"text":"无(默认) "},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 201"}},{"text":"熔岩 "},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 202"}}]
execute as @a[tag=mm_triggered_projectile_menu] run tellraw @s [{"text":"爆炸 "},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 203"}},{"text":"南瓜灯 "},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 204"}},{"text":"骨头 "},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 205"}}]
execute as @a[tag=mm_triggered_projectile_menu] run tellraw @s [{"text":"僚机 "},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 206"}},{"text":"彩虹 "},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 207"}},{"text":"甜食罐 "},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 208"}}]
execute as @a[tag=mm_triggered_projectile_menu] run tellraw @s [{"text":"双龙 "},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 209"}},{"text":"彩色旋风 "},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 210"}}]

tellraw @a[tag=mm_triggered_projectile_menu] {"text":"<<<返回上一级菜单","color":"gray","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 1"}}


#选择
execute as @a[scores={mm_cosmetics=200..299}] run tag @s add mm_selected_projectile

execute as @a[tag=mm_selected_projectile,scores={mm_cosmetics=200}] run tellraw @s [{"text":"已选择弹射物轨迹为 ","color":"yellow"},{"text":"随机","color":"green"},{"text":"!","color":"yellow"}]
execute as @a[tag=mm_selected_projectile,scores={mm_cosmetics=201}] run tellraw @s [{"text":"已选择弹射物轨迹为 ","color":"yellow"},{"text":"无(默认)","color":"green"},{"text":"!","color":"yellow"}]
execute as @a[tag=mm_selected_projectile,scores={mm_cosmetics=202}] run tellraw @s [{"text":"已选择弹射物轨迹为 ","color":"yellow"},{"text":"熔岩","color":"green"},{"text":"!","color":"yellow"}]
execute as @a[tag=mm_selected_projectile,scores={mm_cosmetics=203}] run tellraw @s [{"text":"已选择弹射物轨迹为 ","color":"yellow"},{"text":"爆炸","color":"green"},{"text":"!","color":"yellow"}]
execute as @a[tag=mm_selected_projectile,scores={mm_cosmetics=204}] run tellraw @s [{"text":"已选择弹射物轨迹为 ","color":"yellow"},{"text":"南瓜灯","color":"green"},{"text":"!","color":"yellow"}]
execute as @a[tag=mm_selected_projectile,scores={mm_cosmetics=205}] run tellraw @s [{"text":"已选择弹射物轨迹为 ","color":"yellow"},{"text":"骨头","color":"green"},{"text":"!","color":"yellow"}]
execute as @a[tag=mm_selected_projectile,scores={mm_cosmetics=206}] run tellraw @s [{"text":"已选择弹射物轨迹为 ","color":"yellow"},{"text":"僚机","color":"green"},{"text":"!","color":"yellow"}]
execute as @a[tag=mm_selected_projectile,scores={mm_cosmetics=207}] run tellraw @s [{"text":"已选择弹射物轨迹为 ","color":"yellow"},{"text":"彩虹","color":"green"},{"text":"!","color":"yellow"}]
execute as @a[tag=mm_selected_projectile,scores={mm_cosmetics=208}] run tellraw @s [{"text":"已选择弹射物轨迹为 ","color":"yellow"},{"text":"甜食罐","color":"green"},{"text":"!","color":"yellow"}]
execute as @a[tag=mm_selected_projectile,scores={mm_cosmetics=209}] run tellraw @s [{"text":"已选择弹射物轨迹为 ","color":"yellow"},{"text":"双龙","color":"green"},{"text":"!","color":"yellow"}]
execute as @a[tag=mm_selected_projectile,scores={mm_cosmetics=210}] run tellraw @s [{"text":"已选择弹射物轨迹为 ","color":"yellow"},{"text":"彩色旋风","color":"green"},{"text":"!","color":"yellow"}]

execute as @a[tag=mm_selected_projectile] run scoreboard players operation @s mm_projectile = @s mm_cosmetics
execute as @a[tag=mm_selected_projectile] run scoreboard players operation @s mm_projectile -= 100 mm_main
execute as @a[tag=mm_selected_projectile] run scoreboard players operation @s mm_projectile -= 100 mm_main


#标签重置
execute as @a[tag=mm_triggered_projectile_menu] run scoreboard players reset @s mm_cosmetics
execute as @a[tag=mm_triggered_projectile_menu] run tag @s remove mm_triggered_projectile_menu

execute as @a[tag=mm_selected_projectile] run scoreboard players reset @s mm_cosmetics
execute as @a[tag=mm_selected_projectile] run tag @s remove mm_selected_projectile