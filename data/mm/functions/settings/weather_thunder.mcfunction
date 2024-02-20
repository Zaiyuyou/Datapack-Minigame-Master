execute as @s run gamerule doWeatherCycle false
execute as @s run weather thunder
execute as @s run title @a subtitle [{"text":"天气已设置为","color":"yellow"},{"text":"雷暴","color":"green"},{"text":"!","color":"yellow"}]
title @a title {"text":""}