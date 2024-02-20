#地图相关
tellraw @s {"text":"[地图相关]","color":"white"}
tellraw @s [{"text":"| ","color":"white"},{"text":"[时间]:","color":"yellow"},{"text":"[白昼]","color":"green","clickEvent":{"action":"run_command","value":"/function mm:settings/time_day"}},{"text":"[中午]","color":"green","clickEvent":{"action":"run_command","value":"/function mm:settings/time_noon"}},{"text":"[夜晚]","color":"green","clickEvent":{"action":"run_command","value":"/function mm:settings/time_night"}},{"text":"[午夜]","color":"green","clickEvent":{"action":"run_command","value":"/function mm:settings/time_midnight"}}]
tellraw @s [{"text":"| ","color":"white"},{"text":"[天气]:","color":"yellow"},{"text":"[晴朗]","color":"green","clickEvent":{"action":"run_command","value":"/function mm:settings/weather_clear"}},{"text":"[雨天]","color":"green","clickEvent":{"action":"run_command","value":"/function mm:settings/weather_rain"}},{"text":"[雷暴]","color":"green","clickEvent":{"action":"run_command","value":"/function mm:settings/weather_thunder"}}]

tellraw @s ""

tellraw @s [{"text":"[本体设置]  ","color":"aqua"},{"text":"[点我在你的位置注册大厅出生点! ] ","color":"green","clickEvent":{"action":"run_command","value":"/function mm:settings/create_lobby_spawn"}},{"text":"[?] ","color":"white","hoverEvent":{"action":"show_text","value":[{"text":"若无该出生点，游戏将无法开始。\n","color":"yellow"},{"text":"每个地图只能存在一个。","color":"yellow"}]}}]

tellraw @s [{"text":"[密室杀手]  ","color":"aqua"},{"text":"[点我在你的位置注册掉落弓传送点!] ","color":"green","clickEvent":{"action":"run_command","value":"/function mm:settings/create_dropped_bow_spawn"}},{"text":"[?] ","color":"white","hoverEvent":{"action":"show_text","value":[{"text":"若无该出生点，游戏将无法开始。\n","color":"yellow"},{"text":"每个地图只能存在一个。","color":"yellow"}]}}]

tellraw @s [{"text":"[本体设置]  ","color":"aqua"},{"text":"在场地地面摆设好若干盔甲架并命名为mm_spawn后，点击 ","color":"yellow"},{"text":"[这里] ","color":"green","clickEvent":{"action":"run_command","value":"/function mm:settings/create_spawn"}},{"text":"注册玩家出生点/金锭生成点! ","color":"yellow"},{"text":"[?] ","color":"white","hoverEvent":{"action":"show_text","value":[{"text":"若无该出生点，游戏将无法开始。\n","color":"yellow"},{"text":"每个地图可以存在多个。","color":"yellow"}]}}]

tellraw @s [{"text":"[骗赞魔改]  ","color":"dark_purple"},{"text":"在场地地面摆设好若干盔甲架并命名为mm_border_center后，点击 ","color":"yellow"},{"text":"[这里] ","color":"green","clickEvent":{"action":"run_command","value":"/function mm:settings/create_border_center"}},{"text":"注册缩圈中心点! ","color":"yellow"},{"text":"[?] ","color":"white","hoverEvent":{"action":"show_text","value":[{"text":"每个地图可以存在多个。","color":"yellow"}]}}]


tellraw @s ""

tellraw @s [{"text":"[本体设置]  ","color":"aqua"},{"text":"点击 ","color":"yellow"},{"text":"[这里] ","color":"green","clickEvent":{"action":"run_command","value":"/function mm:settings/remove_lobby_spawn"}},{"text":"移除大厅出生点! ","color":"yellow"}]
tellraw @s [{"text":"[本体设置]  ","color":"aqua"},{"text":"点击 ","color":"yellow"},{"text":"[这里] ","color":"green","clickEvent":{"action":"run_command","value":"/function mm:settings/remove_dropped_bow_spawn"}},{"text":"移除掉落弓传送点! ","color":"yellow"}]
tellraw @s [{"text":"[本体设置]  ","color":"aqua"},{"text":"点击 ","color":"yellow"},{"text":"[这里] ","color":"green","clickEvent":{"action":"run_command","value":"/function mm:settings/eject_spawn"}},{"text":"弹出玩家出生点/金锭生成点! ","color":"yellow"},{"text":"[?] ","color":"white","hoverEvent":{"action":"show_text","value":[{"text":"所有玩家出生点/金锭生成点将以盔甲架形式弹出。\n","color":"yellow"},{"text":"你可以对其修改/移除并再注册。","color":"yellow"}]}}]
tellraw @s [{"text":"[骗赞魔改]  ","color":"dark_purple"},{"text":"点击 ","color":"yellow"},{"text":"[这里] ","color":"green","clickEvent":{"action":"run_command","value":"/function mm:settings/eject_border_center"}},{"text":"弹出缩圈中心点! ","color":"yellow"},{"text":"[?] ","color":"white","hoverEvent":{"action":"show_text","value":[{"text":"所有缩圈中心点将以盔甲架形式弹出。\n","color":"yellow"},{"text":"你可以对其修改/移除并再注册。","color":"yellow"}]}}]

tellraw @s ""

tellraw @s {"text":"<<<返回上一级菜单 ","color":"green","clickEvent":{"action":"run_command","value":"/function mm:settings"}}