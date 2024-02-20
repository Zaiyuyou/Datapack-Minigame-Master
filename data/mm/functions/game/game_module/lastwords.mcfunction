#生成遗言
execute as @s[scores={mm_lastwords=2..}] run tag @s add mm_spawn_lastwords

execute as @s[tag=mm_spawn_lastwords] at @s run summon minecraft:armor_stand ~ ~ ~ {Invisible:1,NoGravity:1,Tags:["mm_lastwords_spawner"]}
execute as @s[tag=mm_spawn_lastwords] at @s run loot spawn ~ ~ ~ loot mm:lastwords/title
execute as @s[tag=mm_spawn_lastwords] at @s run loot spawn ~ ~ ~ loot mm:lastwords/text

execute as @s[tag=mm_spawn_lastwords] run tag @s remove mm_spawn_lastwords