#死亡
function mm:game/game_module/die
execute as @a[tag=mm_victim] run scoreboard players set @s mm_gold_ingot 0
execute as @a[tag=mm_victim] run scoreboard players set @s mm_arrow 0
execute as @a[tag=mm_victim] run scoreboard players set @s mm_thrown_knife 0

execute as @a[tag=mm_victim] run scoreboard players add @s mm_stats_8 1

##数据运算
execute if entity @a[tag=mm_victim] run function mm:scoreboards/calculate_data

##杀手
execute as @a[tag=mm_victim,tag=mm_murderer,scores={mm_death_type=1..100}] at @s run tellraw @a[tag=mm_innocent,distance=0.01..] [{"text":"一名","color":"yellow"},{"text":"杀手","color":"red","bold":"true"},{"text":",","color":"yellow"},{"selector":"@s","color":"gray"},{"text":",被杀害了.","color":"yellow"}]
execute as @a[tag=mm_victim,tag=mm_murderer,scores={mm_death_type=1..100}] at @s run tellraw @a[tag=mm_murderer,distance=0.01..] [{"text":"你的杀手同伙,","color":"yellow"},{"selector":"@s","color":"gray"},{"text":",被杀害了.","color":"yellow"}]

execute as @a[tag=mm_victim,tag=mm_murderer,scores={mm_death_type=101..}] at @s run tellraw @a[tag=mm_innocent,distance=0.01..] [{"text":"一名","color":"yellow"},{"text":"杀手","color":"red","bold":"true"},{"text":",","color":"yellow"},{"selector":"@s","color":"gray"},{"text":",已死亡.","color":"yellow"}]
execute as @a[tag=mm_victim,tag=mm_murderer,scores={mm_death_type=101..}] at @s run tellraw @a[tag=mm_murderer,distance=0.01..] [{"text":"你的杀手同伙,","color":"yellow"},{"selector":"@s","color":"gray"},{"text":",已死亡.","color":"yellow"}]

##侦探
execute as @a[tag=mm_victim,tag=mm_detective,tag=mm_origin] at @s run tellraw @a[distance=0.01..] {"text":"一名侦探已被杀害! 找到弓并抓住机会杀死杀手!","color":"gold"}
execute as @a[tag=mm_victim,tag=mm_detective,tag=mm_origin] at @s run title @a[distance=0.01..] subtitle {"text":"一名侦探已被杀害!","color":"gold"}

execute as @a[tag=mm_victim,tag=mm_detective,tag=!mm_origin] at @s run tellraw @a[distance=0.01..] {"text":"一把弓已掉落! 找到弓并抓住机会杀死杀手!","color":"gold"}
execute as @a[tag=mm_victim,tag=mm_detective,tag=!mm_origin] at @s run title @a[distance=0.01..] subtitle {"text":"一把弓已掉落!","color":"gold"}
execute as @a[tag=mm_victim,tag=mm_detective] at @s run title @a[distance=0.01..] title ""

execute as @a[tag=mm_victim,tag=mm_detective] at @s unless block ~ ~-1 ~ #mm:deadly_block unless block ~ ~-1 ~ #mm:lava_block if entity @s[y=1,dy=255] run summon minecraft:armor_stand ~ ~0.3 ~ {Invisible:1,ShowArms:1,NoGravity:1,HandItems:[{id:"minecraft:bow",Count:1}],Pose:{RightArm:[-45f,-90f,0f]},DisabledSlots:7967,Tags:["mm_dropped_bow"]}
execute as @a[tag=mm_victim,tag=mm_detective] at @s if block ~ ~-1 ~ #mm:deadly_block at @e[tag=mm_dropped_bow_spawn,limit=1,tag=mm_actived] positioned ~ ~2 ~ run summon minecraft:armor_stand ~ ~0.3 ~ {Invisible:1,ShowArms:1,NoGravity:1,HandItems:[{id:"minecraft:bow",Count:1}],Pose:{RightArm:[-45f,-90f,0f]},DisabledSlots:7967,Tags:["mm_dropped_bow"]}
execute as @a[tag=mm_victim,tag=mm_detective] at @s if block ~ ~-1 ~ #mm:lava_block at @e[tag=mm_dropped_bow_spawn,limit=1,tag=mm_actived] positioned ~ ~2 ~ run summon minecraft:armor_stand ~ ~0.3 ~ {Invisible:1,ShowArms:1,NoGravity:1,HandItems:[{id:"minecraft:bow",Count:1}],Pose:{RightArm:[-45f,-90f,0f]},DisabledSlots:7967,Tags:["mm_dropped_bow"]}
execute as @a[tag=mm_victim,tag=mm_detective] at @s unless entity @s[y=1,dy=255] at @e[tag=mm_dropped_bow_spawn,limit=1,tag=mm_actived] positioned ~ ~2 ~ run summon minecraft:armor_stand ~ ~0.3 ~ {Invisible:1,ShowArms:1,NoGravity:1,HandItems:[{id:"minecraft:bow",Count:1}],Pose:{RightArm:[-45f,-90f,0f]},DisabledSlots:7967,Tags:["mm_dropped_bow"]}


##遗言
execute as @a[tag=mm_victim] run function mm:game/game_module/lastwords

##亡语
execute as @a[tag=mm_victim] run function mm:game/game_module/death_cry

##遗体
execute as @a[tag=mm_victim] run function mm:game/game_module/dead_body

execute as @a[tag=mm_victim] run effect give @s minecraft:blindness 3 1 true
execute as @a[tag=mm_victim] run effect give @s minecraft:instant_health 1 20 true
execute as @a[tag=mm_victim] run effect give @s minecraft:saturation 1 20 true
execute as @a[tag=mm_victim] run tag @s add mm_dead

##死亡音效
execute as @a[tag=mm_victim,scores={mm_death_type=1..100}] as @a at @s run playsound minecraft:entity.player.death player @s
execute as @a[tag=mm_victim,scores={mm_death_type=101..}] as @a at @s run playsound minecraft:entity.skeleton.death player @s
execute as @a[tag=mm_murderer,tag=mm_victim,scores={mm_death_type=1..}] if score murderer_death_sound mm_settings matches 1 as @a at @s run playsound minecraft:entity.zombie.attack_iron_door player @s
execute as @a[tag=mm_innocent,tag=mm_victim,scores={mm_death_type=4}] if score innocent_friendfire_death_sound mm_settings matches 1 as @a at @s run playsound minecraft:entity.villager.death player @s

##数据运算
execute if entity @a[tag=mm_victim] run function mm:scoreboards/calculate_data

execute as @a[tag=mm_victim] run tag @s remove mm_victim

execute as @a[scores={mm_death_type=1..}] run scoreboard players set @s mm_death_type 0
execute as @a[scores={mm_death_type=..-1}] run scoreboard players set @s mm_death_type 0