execute as @s run gamerule doWeatherCycle false
execute as @s run weather clear
execute as @s run title @a subtitle [{"text":"天气已设置为","color":"yellow"},{"text":"晴朗","color":"green"},{"text":"!","color":"yellow"}]
title @a title {"text":""}