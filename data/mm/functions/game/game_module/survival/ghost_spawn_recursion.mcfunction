#在随机位置生成恶灵
scoreboard players add distribute_ghost_spawn mm_main 1
execute at @e[tag=mm_spawn,limit=1,sort=random,tag=mm_actived,tag=mm_respawnable] run summon minecraft:zombie ~ ~2 ~ {Silent:1b,Attributes:[{Name:"generic.follow_range",Base:128.0}],PersistenceRequired:1b,Health:0.1f,Tags:["mm_ghost"],ArmorItems:[{},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:0}}},{id:"minecraft:wither_skeleton_skull",Count:1b}]}


#递归
execute if score distribute_ghost_spawn mm_main < spawn_ghost_count mm_main run function mm:game/game_module/survival/ghost_spawn_recursion