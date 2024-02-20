#圣水
execute as @e[type=minecraft:area_effect_cloud,nbt={Potion:"minecraft:slow_falling"}] at @s run effect give @a[tag=mm_murderer,distance=..8] minecraft:blindness
execute as @e[type=minecraft:area_effect_cloud,nbt={Potion:"minecraft:slow_falling"}] at @s run effect give @a[tag=mm_murderer,distance=..8] minecraft:slowness 20 2
execute as @e[type=minecraft:area_effect_cloud,nbt={Potion:"minecraft:slow_falling"}] at @s run effect give @a[tag=mm_murderer,distance=..8] minecraft:mining_fatigue
execute as @e[type=minecraft:area_effect_cloud,nbt={Potion:"minecraft:slow_falling"}] at @s run kill @a[tag=mm_infected,distance=..8] 
execute as @e[type=minecraft:area_effect_cloud,nbt={Potion:"minecraft:weakness"}] at @s run effect give @a[tag=mm_survivor,distance=..8] minecraft:blindness 10 1
