execute as @s run scoreboard players add border_discount mm_settings 100
execute as @s if score border_discount mm_settings > game_time mm_settings run scoreboard players operation border_discount mm_settings = game_time mm_settings

function mm:border_reload 