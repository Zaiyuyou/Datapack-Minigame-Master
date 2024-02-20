execute as @s run scoreboard players set murderer_friendly_fire mm_settings 0
team modify mm_murderer friendlyFire false
execute as @s run title @a subtitle [{"text":"杀手小组友伤已设置为","color":"yellow"},{"text":"关闭","color":"red"},{"text":"!","color":"yellow"}]
title @a title {"text":""}