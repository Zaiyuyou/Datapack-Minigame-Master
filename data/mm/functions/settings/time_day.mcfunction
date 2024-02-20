execute as @s run gamerule doDaylightCycle false
execute as @s run time set day
execute as @s run title @a subtitle [{"text":"时间已设置为","color":"yellow"},{"text":"白昼","color":"green"},{"text":"!","color":"yellow"}]
title @a title {"text":""}