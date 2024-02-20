#检测触发
execute as @a[scores={mm_cosmetics=31..40}] run tag @s add mm_triggered_lastwords_menu

execute as @a[tag=mm_triggered_lastwords_menu] run tellraw @s {"text":"遗言","color":"white"}

execute as @a[tag=mm_triggered_lastwords_menu] run tellraw @s [{"text":"随机 "},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 300"}},{"text":"无(默认) "},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 301"}},{"text":"\"我死了。\" "},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 302"}}]
execute as @a[tag=mm_triggered_lastwords_menu] run tellraw @s [{"text":"\"谁杀了我？\" "},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 303"}},{"text":"\"请杀了杀手。\" "},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 304"}},{"text":"\"为什么杀我？\" "},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 305"}}]
execute as @a[tag=mm_triggered_lastwords_menu] run tellraw @s [{"text":"\"请为我争夺胜利。\" "},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 306"}},{"text":"死亡计数 "},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 307"}},{"text":"\"123。\" "},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 308"}}]
execute as @a[tag=mm_triggered_lastwords_menu] run tellraw @s [{"text":"\"为什么受伤的总是我？\" "},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 309"}},{"text":"\"我没死，我只是怒退游戏罢了。\" "},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 310"}},{"text":"\"有流氓打我。\" "},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 311"}}]
execute as @a[tag=mm_triggered_lastwords_menu] run tellraw @s [{"text":"\"我已经被死神选中了。\" "},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 312"}},{"text":"\"真相：你正在读这段文字。\" "},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 313"}},{"text":"\"我宁死得其所，也不活得庸碌。\" "},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 314"}}]
execute as @a[tag=mm_triggered_lastwords_menu] run tellraw @s [{"text":"\"每个人都想上天堂，但没有人想去地狱。\" "},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 315"}},{"text":"\"一人死亡着实是一场悲剧，但是15人死亡就代表杀手胜利了。\" "},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 316"}},{"text":"\"真无聊。\" "},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 317"}}]
execute as @a[tag=mm_triggered_lastwords_menu] run tellraw @s [{"text":"\"这么多人死了，好伤心。\" "},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 318"}},{"text":"\"我不常死去，但我每次都会死得有尊严。\" "},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 319"}},{"text":"\"没有人比我更懂密室杀手。\" "},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 320"}}]
execute as @a[tag=mm_triggered_lastwords_menu] run tellraw @s [{"text":"\"今年某人只能得到煤炭。\" "},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 321"}},{"text":"\"这花了你不少时间。\" "},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 322"}},{"text":"\"太棒了，你从杀手的眼皮底下逃脱了。\" "},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 323"}}]
execute as @a[tag=mm_triggered_lastwords_menu] run tellraw @s [{"text":"击杀计数 "},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 324"}},{"text":"胜场计数 "},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 325"}},{"text":"捡起金锭计数 "},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 326"}}]

tellraw @a[tag=mm_triggered_lastwords_menu] {"text":"<<<返回上一级菜单","color":"gray","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 1"}}


#选择
execute as @a[scores={mm_cosmetics=300..399}] run tag @s add mm_selected_lastwords

execute as @a[tag=mm_selected_lastwords,scores={mm_cosmetics=300}] run tellraw @s [{"text":"已选择遗言为 ","color":"yellow"},{"text":"随机","color":"green"},{"text":"!","color":"yellow"}]
execute as @a[tag=mm_selected_lastwords,scores={mm_cosmetics=301}] run tellraw @s [{"text":"已选择遗言为 ","color":"yellow"},{"text":"无(默认)","color":"green"},{"text":"!","color":"yellow"}]
execute as @a[tag=mm_selected_lastwords,scores={mm_cosmetics=302}] run tellraw @s [{"text":"已选择遗言为 ","color":"yellow"},{"text":"\"我死了。\"","color":"green"},{"text":"!","color":"yellow"}]
execute as @a[tag=mm_selected_lastwords,scores={mm_cosmetics=303}] run tellraw @s [{"text":"已选择遗言为 ","color":"yellow"},{"text":"\"谁杀了我？\"","color":"green"},{"text":"!","color":"yellow"}]
execute as @a[tag=mm_selected_lastwords,scores={mm_cosmetics=304}] run tellraw @s [{"text":"已选择遗言为 ","color":"yellow"},{"text":"\"请杀了杀手。\"","color":"green"},{"text":"!","color":"yellow"}]
execute as @a[tag=mm_selected_lastwords,scores={mm_cosmetics=305}] run tellraw @s [{"text":"已选择遗言为 ","color":"yellow"},{"text":"\"为什么杀我？\"","color":"green"},{"text":"!","color":"yellow"}]
execute as @a[tag=mm_selected_lastwords,scores={mm_cosmetics=306}] run tellraw @s [{"text":"已选择遗言为 ","color":"yellow"},{"text":"\"请为我争夺胜利。\"","color":"green"},{"text":"!","color":"yellow"}]
execute as @a[tag=mm_selected_lastwords,scores={mm_cosmetics=307}] run tellraw @s [{"text":"已选择遗言为 ","color":"yellow"},{"text":"死亡计数","color":"green"},{"text":"!","color":"yellow"}]
execute as @a[tag=mm_selected_lastwords,scores={mm_cosmetics=308}] run tellraw @s [{"text":"已选择遗言为 ","color":"yellow"},{"text":"\"123。\"","color":"green"},{"text":"!","color":"yellow"}]
execute as @a[tag=mm_selected_lastwords,scores={mm_cosmetics=309}] run tellraw @s [{"text":"已选择遗言为 ","color":"yellow"},{"text":"\"为什么受伤的总是我？\"","color":"green"},{"text":"!","color":"yellow"}]
execute as @a[tag=mm_selected_lastwords,scores={mm_cosmetics=310}] run tellraw @s [{"text":"已选择遗言为 ","color":"yellow"},{"text":"\"我没死，我只是怒退游戏罢了。\"","color":"green"},{"text":"!","color":"yellow"}]
execute as @a[tag=mm_selected_lastwords,scores={mm_cosmetics=311}] run tellraw @s [{"text":"已选择遗言为 ","color":"yellow"},{"text":"\"有流氓打我。\"","color":"green"},{"text":"!","color":"yellow"}]
execute as @a[tag=mm_selected_lastwords,scores={mm_cosmetics=312}] run tellraw @s [{"text":"已选择遗言为 ","color":"yellow"},{"text":"\"我已经被死神选中了。\"","color":"green"},{"text":"!","color":"yellow"}]
execute as @a[tag=mm_selected_lastwords,scores={mm_cosmetics=313}] run tellraw @s [{"text":"已选择遗言为 ","color":"yellow"},{"text":"\"真相：你正在读这段文字。\"","color":"green"},{"text":"!","color":"yellow"}]
execute as @a[tag=mm_selected_lastwords,scores={mm_cosmetics=314}] run tellraw @s [{"text":"已选择遗言为 ","color":"yellow"},{"text":"\"我宁死得其所，也不活得庸碌。\"","color":"green"},{"text":"!","color":"yellow"}]
execute as @a[tag=mm_selected_lastwords,scores={mm_cosmetics=315}] run tellraw @s [{"text":"已选择遗言为 ","color":"yellow"},{"text":"\"每个人都想上天堂，但没有人想去地狱。\"","color":"green"},{"text":"!","color":"yellow"}]
execute as @a[tag=mm_selected_lastwords,scores={mm_cosmetics=316}] run tellraw @s [{"text":"已选择遗言为 ","color":"yellow"},{"text":"\"一人死亡着实是一场悲剧，但是15人死亡就代表杀手胜利了。\"","color":"green"},{"text":"!","color":"yellow"}]
execute as @a[tag=mm_selected_lastwords,scores={mm_cosmetics=317}] run tellraw @s [{"text":"已选择遗言为 ","color":"yellow"},{"text":"\"真无聊。\"","color":"green"},{"text":"!","color":"yellow"}]
execute as @a[tag=mm_selected_lastwords,scores={mm_cosmetics=318}] run tellraw @s [{"text":"已选择遗言为 ","color":"yellow"},{"text":"\"这么多人死了，好伤心。\"","color":"green"},{"text":"!","color":"yellow"}]
execute as @a[tag=mm_selected_lastwords,scores={mm_cosmetics=319}] run tellraw @s [{"text":"已选择遗言为 ","color":"yellow"},{"text":"\"我不常死去，但我每次都会死得有尊严。\"","color":"green"},{"text":"!","color":"yellow"}]
execute as @a[tag=mm_selected_lastwords,scores={mm_cosmetics=320}] run tellraw @s [{"text":"已选择遗言为 ","color":"yellow"},{"text":"\"没有人比我更懂密室杀手。\"","color":"green"},{"text":"!","color":"yellow"}]
execute as @a[tag=mm_selected_lastwords,scores={mm_cosmetics=321}] run tellraw @s [{"text":"已选择遗言为 ","color":"yellow"},{"text":"\"今年某人只能得到煤炭。\"","color":"green"},{"text":"!","color":"yellow"}]
execute as @a[tag=mm_selected_lastwords,scores={mm_cosmetics=322}] run tellraw @s [{"text":"已选择遗言为 ","color":"yellow"},{"text":"\"这花了你不少时间。\"","color":"green"},{"text":"!","color":"yellow"}]
execute as @a[tag=mm_selected_lastwords,scores={mm_cosmetics=323}] run tellraw @s [{"text":"已选择遗言为 ","color":"yellow"},{"text":"\"太棒了，你从杀手的眼皮底下逃脱了。\"","color":"green"},{"text":"!","color":"yellow"}]
execute as @a[tag=mm_selected_lastwords,scores={mm_cosmetics=324}] run tellraw @s [{"text":"已选择遗言为 ","color":"yellow"},{"text":"击杀计数","color":"green"},{"text":"!","color":"yellow"}]
execute as @a[tag=mm_selected_lastwords,scores={mm_cosmetics=325}] run tellraw @s [{"text":"已选择遗言为 ","color":"yellow"},{"text":"胜场计数","color":"green"},{"text":"!","color":"yellow"}]
execute as @a[tag=mm_selected_lastwords,scores={mm_cosmetics=326}] run tellraw @s [{"text":"已选择遗言为 ","color":"yellow"},{"text":"捡起金锭计数","color":"green"},{"text":"!","color":"yellow"}]

execute as @a[tag=mm_selected_lastwords] run scoreboard players operation @s mm_lastwords = @s mm_cosmetics
execute as @a[tag=mm_selected_lastwords] run scoreboard players operation @s mm_lastwords -= 100 mm_main
execute as @a[tag=mm_selected_lastwords] run scoreboard players operation @s mm_lastwords -= 100 mm_main
execute as @a[tag=mm_selected_lastwords] run scoreboard players operation @s mm_lastwords -= 100 mm_main


#标签重置
execute as @a[tag=mm_triggered_lastwords_menu] run scoreboard players reset @s mm_cosmetics
execute as @a[tag=mm_triggered_lastwords_menu] run tag @s remove mm_triggered_lastwords_menu

execute as @a[tag=mm_selected_lastwords] run scoreboard players reset @s mm_cosmetics
execute as @a[tag=mm_selected_lastwords] run tag @s remove mm_selected_lastwords