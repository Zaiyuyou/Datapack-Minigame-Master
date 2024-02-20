execute as @s run scoreboard players set murderer_friendly_fire mm_settings 2
team modify mm_murderer friendlyFire true
execute as @s run title @a subtitle [{"text":"杀手小组友伤已设置为","color":"yellow"},{"text":"击晕惩罚","color":"gold"},{"text":"!","color":"yellow"}]
title @a title {"text":""}