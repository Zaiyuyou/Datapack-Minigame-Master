#确认卸载
execute if score timer_uninstall mm_main matches 1.. run function mm:uni_confirm


#再次输入确认卸载
execute if score timer_uninstall mm_main matches 0 run tellraw @s {"text":"确定真的要卸载数据包吗?除地图、选项设置及玩家统计数据外,所有数据将被清空!","color":"yellow"}
execute if score timer_uninstall mm_main matches 0 run tellraw @s [{"text":"请在","color":"yellow"},{"text":"10","color":"red"},{"text":"秒内点击","color":"yellow"},{"text":"[这里]","color":"gold","clickEvent":{"action":"run_command","value":"/function mm:uni"}},{"text":"以卸载数据包!","color":"yellow"}]
execute if score timer_uninstall mm_main matches 0 run scoreboard players set timer_uninstall mm_main 200