execute as @a[tag=mm_refresh_arrow] run clear @s arrow
execute if entity @a[tag=mm_refresh_arrow] run kill @e[type=item,nbt={Item:{id:"minecraft:arrow"}}]
execute as @a[tag=mm_refresh_arrow,scores={mm_arrow=1..},tag=!mm_dead,tag=mm_murderer] run loot replace entity @s hotbar.2 loot mm:arrow
execute as @a[tag=mm_refresh_arrow,scores={mm_arrow=1..},tag=!mm_dead,tag=mm_detective,tag=mm_origin] run loot replace entity @s container.9 loot mm:arrow
execute as @a[tag=mm_refresh_arrow,scores={mm_arrow=1..},tag=!mm_dead,tag=mm_detective,tag=!mm_origin] run loot replace entity @s hotbar.1 loot mm:arrow
execute as @a[tag=mm_refresh_arrow,scores={mm_arrow=1..},tag=!mm_dead,tag=mm_innocent,tag=!mm_detective] run loot replace entity @s hotbar.1 loot mm:arrow
scoreboard players operation @s mm_arrow_last = @s mm_arrow
execute as @a[tag=mm_refresh_arrow] run tag @s remove mm_refresh_arrow