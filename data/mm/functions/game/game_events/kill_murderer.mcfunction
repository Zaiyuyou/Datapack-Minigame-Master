execute if entity @s[tag=mm_innocent] run scoreboard players set @s mm_death_type -2
execute if entity @s[tag=mm_murderer] if score murderer_friendly_fire mm_settings matches 1 run scoreboard players set @s mm_death_type 107
execute if entity @s[tag=mm_murderer] if score murderer_friendly_fire mm_settings matches 2 run tag @s add mm_be_stunned

advancement revoke @s everything