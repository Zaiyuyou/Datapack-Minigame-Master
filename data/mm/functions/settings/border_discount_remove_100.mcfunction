execute as @s run scoreboard players remove border_discount mm_settings 100
execute as @s if score border_discount mm_settings matches ..-1 run scoreboard players operation border_discount mm_settings = game_time mm_settings

function mm:border_reload 