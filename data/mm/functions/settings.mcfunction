#地图相关
tellraw @s [{"text":"[本体设置]  ","color":"aqua"},{"text":"[地图相关设置点我展开] ","color":"green","clickEvent":{"action":"run_command","value":"/execute as @s run function mm:map_settings"}}]

#玩法相关
tellraw @s [{"text":"[本体设置]  ","color":"aqua"},{"text":"[玩法相关设置点我展开] ","color":"green","clickEvent":{"action":"run_command","value":"/execute as @s run function mm:play_settings"}}]