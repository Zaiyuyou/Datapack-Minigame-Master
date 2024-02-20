#缩圈
execute if score game_tick mm_main matches 20 if score game_second mm_main = border_flag mm_main run tellraw @a [{"text":"边界将在","color":"yellow"},{"text":"60","color":"red"},{"text":"秒后开始收缩!","color":"yellow"}]
execute if score game_tick mm_main matches 20 if score game_second mm_main = border_discount mm_main run title @a title {"text":"边界开始收缩！","color":"red"}
execute if score game_tick mm_main matches 20 if score game_second mm_main = border_discount mm_main run execute at @e[limit=1,sort=random,name="mm_border_center"] run worldborder center ~ ~
execute if score game_second mm_main <= border_discount mm_main run worldborder add -0.16
