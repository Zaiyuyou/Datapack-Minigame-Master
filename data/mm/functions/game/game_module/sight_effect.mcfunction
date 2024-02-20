#杀手同伙绿色光效
execute as @a[tag=!mm_dead,tag=mm_murderer] at @s run particle dust 0.0 1.0 0.0 1.0 ~ ~1 ~ 0.2 0.5 0.2 0 30 normal @a[tag=mm_murderer,distance=0.01..]


#感染者绿色光效
execute as @a[tag=!mm_dead,tag=!mm_will_respawn,tag=mm_infected] at @s run particle dust 0.0 1.0 0.0 1.0 ~ ~1 ~ 0.2 0.5 0.2 0 30 normal @a[distance=0.01..]
execute as @a[tag=!mm_dead,tag=!mm_will_respawn,tag=mm_alpha,tag=mm_exposed] at @s run particle dust 0.0 1.0 0.0 1.0 ~ ~1 ~ 0.2 0.5 0.2 0 30 normal @a[distance=0.01..]


#恶灵红色光效
execute as @e[tag=mm_ghost,tag=!mm_hidden_ghost,predicate=mm:targeted_player] at @s run particle dust 1.0 0.1 0.0 1.0 ~ ~1 ~ 0.2 0.5 0.2 0 30 normal @a[distance=0.01..]


#弹射物轨迹
execute as @e[predicate=mm:thrown_knife_and_arrow] unless score @s mm_projectile matches 1.. at @s run scoreboard players operation @s mm_projectile = @e[scores={mm_projectile=1..},tag=!mm_dead,limit=1,sort=nearest] mm_projectile

##熔岩
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=2}] at @s run particle lava ~ ~1.3 ~ 0.2 0.2 0.2 0 20 normal @a
##爆炸
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=3}] at @s run particle explosion ~ ~1.3 ~ 0.2 0.2 0.2 0 1 normal @a
##Jack o`Lantern
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=4}] at @s run summon item ~ ~1.3 ~ {Item:{id:"minecraft:jack_o_lantern",Count:1},PickupDelay:32767,Age:5920}
##骨头
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=5}] at @s run summon item ~ ~1.3 ~ {Item:{id:"minecraft:bone",Count:1},PickupDelay:32767,Age:5920}
##僚机
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=6}] at @s run summon bat ~ ~1.3 ~ {Tags:["mm_projectile_l"]}
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=6}] at @s run playsound minecraft:entity.bat.ambient block @a ~ ~ ~ 1.25
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=6}] at @s run playsound minecraft:entity.bat.ambient block @a ~ ~ ~ 1.25
##彩虹
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=7}] if score sight_effect_phase mm_main matches 1 at @s run summon item ~ ~1.3 ~ {Item:{id:"minecraft:red_wool",Count:1},PickupDelay:32767,Age:5920}
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=7}] if score sight_effect_phase mm_main matches 2 at @s run summon item ~ ~1.3 ~ {Item:{id:"minecraft:orange_wool",Count:1},PickupDelay:32767,Age:5920}
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=7}] if score sight_effect_phase mm_main matches 3 at @s run summon item ~ ~1.3 ~ {Item:{id:"minecraft:yellow_wool",Count:1},PickupDelay:32767,Age:5920}
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=7}] if score sight_effect_phase mm_main matches 4 at @s run summon item ~ ~1.3 ~ {Item:{id:"minecraft:lime_wool",Count:1},PickupDelay:32767,Age:5920}
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=7}] if score sight_effect_phase mm_main matches 5 at @s run summon item ~ ~1.3 ~ {Item:{id:"minecraft:green_wool",Count:1},PickupDelay:32767,Age:5920}
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=7}] if score sight_effect_phase mm_main matches 6 at @s run summon item ~ ~1.3 ~ {Item:{id:"minecraft:cyan_wool",Count:1},PickupDelay:32767,Age:5920}
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=7}] if score sight_effect_phase mm_main matches 7 at @s run summon item ~ ~1.3 ~ {Item:{id:"minecraft:blue_wool",Count:1},PickupDelay:32767,Age:5920}
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=7}] if score sight_effect_phase mm_main matches 8 at @s run summon item ~ ~1.3 ~ {Item:{id:"minecraft:purple_wool",Count:1},PickupDelay:32767,Age:5920}
##甜食罐
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=8}] if score sight_effect_phase mm_main matches 1 at @s run summon item ~ ~1.3 ~ {Item:{id:"minecraft:milk_bucket",Count:1},PickupDelay:32767,Age:5920}
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=8}] if score sight_effect_phase mm_main matches 2 at @s run summon item ~ ~1.3 ~ {Item:{id:"minecraft:pumpkin_pie",Count:1},PickupDelay:32767,Age:5920}
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=8}] if score sight_effect_phase mm_main matches 3 at @s run summon item ~ ~1.3 ~ {Item:{id:"minecraft:cookie",Count:1},PickupDelay:32767,Age:5920}
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=8}] if score sight_effect_phase mm_main matches 4 at @s run summon item ~ ~1.3 ~ {Item:{id:"minecraft:sugar",Count:1},PickupDelay:32767,Age:5920}
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=8}] if score sight_effect_phase mm_main matches 5 at @s run summon item ~ ~1.3 ~ {Item:{id:"minecraft:apple",Count:1},PickupDelay:32767,Age:5920}
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=8}] if score sight_effect_phase mm_main matches 6 at @s run summon item ~ ~1.3 ~ {Item:{id:"minecraft:cake",Count:1},PickupDelay:32767,Age:5920}
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=8}] if score sight_effect_phase mm_main matches 7 at @s run summon item ~ ~1.3 ~ {Item:{id:"minecraft:melon_slice",Count:1},PickupDelay:32767,Age:5920}
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=8}] if score sight_effect_phase mm_main matches 8 at @s run summon item ~ ~1.3 ~ {Item:{id:"minecraft:honey_bottle",Count:1},PickupDelay:32767,Age:5920}
##双龙
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=9}] if score sight_effect_phase mm_main matches 1 at @s positioned ~ ~1.3 ~ run particle dust 1.0 0.0 0.0 1.0 ^0.45 ^ ^ 0.05 0.05 0.05 0 5 normal @a
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=9}] if score sight_effect_phase mm_main matches 1 at @s positioned ~ ~1.3 ~ run particle dust 0.0 0.0 1.0 1.0 ^-0.45 ^ ^ 0.05 0.05 0.05 0 5 normal @a
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=9}] if score sight_effect_phase mm_main matches 2 at @s positioned ~ ~1.3 ~ run particle dust 1.0 0.0 0.0 1.0 ^0.3 ^0.3 ^ 0.05 0.05 0.05 0 5 normal @a
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=9}] if score sight_effect_phase mm_main matches 2 at @s positioned ~ ~1.3 ~ run particle dust 0.0 0.0 1.0 1.0 ^-0.3 ^-0.3 ^ 0.05 0.05 0.05 0 5 normal @a
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=9}] if score sight_effect_phase mm_main matches 3 at @s positioned ~ ~1.3 ~ run particle dust 1.0 0.0 0.0 1.0 ^ ^0.45 ^ 0.05 0.05 0.05 0 5 normal @a
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=9}] if score sight_effect_phase mm_main matches 3 at @s positioned ~ ~1.3 ~ run particle dust 0.0 0.0 1.0 1.0 ^ ^-0.45 ^ 0.05 0.05 0.05 0 5 normal @a
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=9}] if score sight_effect_phase mm_main matches 4 at @s positioned ~ ~1.3 ~ run particle dust 1.0 0.0 0.0 1.0 ^-0.3 ^0.3 ^ 0.05 0.05 0.05 0 5 normal @a
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=9}] if score sight_effect_phase mm_main matches 4 at @s positioned ~ ~1.3 ~ run particle dust 0.0 0.0 1.0 1.0 ^0.3 ^-0.3 ^ 0.05 0.05 0.05 0 5 normal @a
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=9}] if score sight_effect_phase mm_main matches 5 at @s positioned ~ ~1.3 ~ run particle dust 1.0 0.0 0.0 1.0 ^-0.45 ^ ^ 0.05 0.05 0.05 0 5 normal @a
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=9}] if score sight_effect_phase mm_main matches 5 at @s positioned ~ ~1.3 ~ run particle dust 0.0 0.0 1.0 1.0 ^0.45 ^ ^ 0.05 0.05 0.05 0 5 normal @a
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=9}] if score sight_effect_phase mm_main matches 6 at @s positioned ~ ~1.3 ~ run particle dust 1.0 0.0 0.0 1.0 ^-0.3 ^-0.3 ^ 0.05 0.05 0.05 0 5 normal @a
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=9}] if score sight_effect_phase mm_main matches 6 at @s positioned ~ ~1.3 ~ run particle dust 0.0 0.0 1.0 1.0 ^0.3 ^0.3 ^ 0.05 0.05 0.05 0 5 normal @a
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=9}] if score sight_effect_phase mm_main matches 7 at @s positioned ~ ~1.3 ~ run particle dust 1.0 0.0 0.0 1.0 ^ ^-0.45 ^ 0.05 0.05 0.05 0 5 normal @a
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=9}] if score sight_effect_phase mm_main matches 7 at @s positioned ~ ~1.3 ~ run particle dust 0.0 0.0 1.0 1.0 ^ ^0.45 ^ 0.05 0.05 0.05 0 5 normal @a
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=9}] if score sight_effect_phase mm_main matches 8 at @s positioned ~ ~1.3 ~ run particle dust 1.0 0.0 0.0 1.0 ^0.3 ^-0.3 ^ 0.05 0.05 0.05 0 5 normal @a
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=9}] if score sight_effect_phase mm_main matches 8 at @s positioned ~ ~1.3 ~ run particle dust 0.0 0.0 1.0 1.0 ^-0.3 ^0.3 ^ 0.05 0.05 0.05 0 5 normal @a
##彩色旋风
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 1 at @s positioned ~ ~1.3 ~ run particle dust 1.0 0.0 0.0 1.0 ^0.45 ^ ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 1 at @s positioned ~ ~1.3 ~ run particle dust 1.0 0.5 0.0 1.0 ^0.3 ^0.3 ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 1 at @s positioned ~ ~1.3 ~ run particle dust 1.0 1.0 0.0 1.0 ^ ^0.45 ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 1 at @s positioned ~ ~1.3 ~ run particle dust 0.5 1.0 0.0 1.0 ^-0.3 ^0.3 ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 1 at @s positioned ~ ~1.3 ~ run particle dust 0.0 1.0 0.0 1.0 ^-0.45 ^ ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 1 at @s positioned ~ ~1.3 ~ run particle dust 0.0 1.0 1.0 1.0 ^-0.3 ^-0.3 ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 1 at @s positioned ~ ~1.3 ~ run particle dust 0.0 0.0 1.0 1.0 ^ ^-0.45 ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 1 at @s positioned ~ ~1.3 ~ run particle dust 1.0 0.0 1.0 1.0 ^0.3 ^-0.3 ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 2 at @s positioned ~ ~1.3 ~ run particle dust 1.0 0.5 0.0 1.0 ^0.45 ^ ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 2 at @s positioned ~ ~1.3 ~ run particle dust 1.0 1.0 0.0 1.0 ^0.3 ^0.3 ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 2 at @s positioned ~ ~1.3 ~ run particle dust 0.5 1.0 0.0 1.0 ^ ^0.45 ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 2 at @s positioned ~ ~1.3 ~ run particle dust 0.0 1.0 0.0 1.0 ^-0.3 ^0.3 ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 2 at @s positioned ~ ~1.3 ~ run particle dust 0.0 1.0 1.0 1.0 ^-0.45 ^ ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 2 at @s positioned ~ ~1.3 ~ run particle dust 0.0 0.0 1.0 1.0 ^-0.3 ^-0.3 ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 2 at @s positioned ~ ~1.3 ~ run particle dust 1.0 0.0 1.0 1.0 ^ ^-0.45 ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 2 at @s positioned ~ ~1.3 ~ run particle dust 1.0 0.0 0.0 1.0 ^0.3 ^-0.3 ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 3 at @s positioned ~ ~1.3 ~ run particle dust 1.0 1.0 0.0 1.0 ^0.45 ^ ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 3 at @s positioned ~ ~1.3 ~ run particle dust 0.5 1.0 0.0 1.0 ^0.3 ^0.3 ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 3 at @s positioned ~ ~1.3 ~ run particle dust 0.0 1.0 0.0 1.0 ^ ^0.45 ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 3 at @s positioned ~ ~1.3 ~ run particle dust 0.0 1.0 1.0 1.0 ^-0.3 ^0.3 ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 3 at @s positioned ~ ~1.3 ~ run particle dust 0.0 0.0 1.0 1.0 ^-0.45 ^ ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 3 at @s positioned ~ ~1.3 ~ run particle dust 1.0 0.0 1.0 1.0 ^-0.3 ^-0.3 ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 3 at @s positioned ~ ~1.3 ~ run particle dust 1.0 0.0 0.0 1.0 ^ ^-0.45 ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 3 at @s positioned ~ ~1.3 ~ run particle dust 1.0 0.5 0.0 1.0 ^0.3 ^-0.3 ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 4 at @s positioned ~ ~1.3 ~ run particle dust 0.5 1.0 0.0 1.0 ^0.45 ^ ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 4 at @s positioned ~ ~1.3 ~ run particle dust 0.0 1.0 0.0 1.0 ^0.3 ^0.3 ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 4 at @s positioned ~ ~1.3 ~ run particle dust 0.0 1.0 1.0 1.0 ^ ^0.45 ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 4 at @s positioned ~ ~1.3 ~ run particle dust 0.0 0.0 1.0 1.0 ^-0.3 ^0.3 ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 4 at @s positioned ~ ~1.3 ~ run particle dust 1.0 0.0 1.0 1.0 ^-0.45 ^ ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 4 at @s positioned ~ ~1.3 ~ run particle dust 1.0 0.0 0.0 1.0 ^-0.3 ^-0.3 ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 4 at @s positioned ~ ~1.3 ~ run particle dust 1.0 0.5 0.0 1.0 ^ ^-0.45 ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 4 at @s positioned ~ ~1.3 ~ run particle dust 1.0 1.0 0.0 1.0 ^0.3 ^-0.3 ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 5 at @s positioned ~ ~1.3 ~ run particle dust 0.0 1.0 0.0 1.0 ^0.45 ^ ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 5 at @s positioned ~ ~1.3 ~ run particle dust 0.0 1.0 1.0 1.0 ^0.3 ^0.3 ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 5 at @s positioned ~ ~1.3 ~ run particle dust 0.0 0.0 1.0 1.0 ^ ^0.45 ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 5 at @s positioned ~ ~1.3 ~ run particle dust 1.0 0.0 1.0 1.0 ^-0.3 ^0.3 ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 5 at @s positioned ~ ~1.3 ~ run particle dust 1.0 0.0 0.0 1.0 ^-0.45 ^ ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 5 at @s positioned ~ ~1.3 ~ run particle dust 1.0 0.5 0.0 1.0 ^-0.3 ^-0.3 ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 5 at @s positioned ~ ~1.3 ~ run particle dust 1.0 1.0 0.0 1.0 ^ ^-0.45 ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 5 at @s positioned ~ ~1.3 ~ run particle dust 0.5 1.0 0.0 1.0 ^0.3 ^-0.3 ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 6 at @s positioned ~ ~1.3 ~ run particle dust 0.0 1.0 1.0 1.0 ^0.45 ^ ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 6 at @s positioned ~ ~1.3 ~ run particle dust 0.0 0.0 1.0 1.0 ^0.3 ^0.3 ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 6 at @s positioned ~ ~1.3 ~ run particle dust 1.0 0.0 1.0 1.0 ^ ^0.45 ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 6 at @s positioned ~ ~1.3 ~ run particle dust 1.0 0.0 0.0 1.0 ^-0.3 ^0.3 ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 6 at @s positioned ~ ~1.3 ~ run particle dust 1.0 0.5 0.0 1.0 ^-0.45 ^ ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 6 at @s positioned ~ ~1.3 ~ run particle dust 1.0 1.0 0.0 1.0 ^-0.3 ^-0.3 ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 6 at @s positioned ~ ~1.3 ~ run particle dust 0.5 1.0 0.0 1.0 ^ ^-0.45 ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 6 at @s positioned ~ ~1.3 ~ run particle dust 0.0 1.0 0.0 1.0 ^0.3 ^-0.3 ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 7 at @s positioned ~ ~1.3 ~ run particle dust 0.0 0.0 1.0 1.0 ^0.45 ^ ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 7 at @s positioned ~ ~1.3 ~ run particle dust 1.0 0.0 1.0 1.0 ^0.3 ^0.3 ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 7 at @s positioned ~ ~1.3 ~ run particle dust 1.0 0.0 0.0 1.0 ^ ^0.45 ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 7 at @s positioned ~ ~1.3 ~ run particle dust 1.0 0.5 0.0 1.0 ^-0.3 ^0.3 ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 7 at @s positioned ~ ~1.3 ~ run particle dust 1.0 1.0 0.0 1.0 ^-0.45 ^ ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 7 at @s positioned ~ ~1.3 ~ run particle dust 0.5 1.0 0.0 1.0 ^-0.3 ^-0.3 ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 7 at @s positioned ~ ~1.3 ~ run particle dust 0.0 1.0 0.0 1.0 ^ ^-0.45 ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 7 at @s positioned ~ ~1.3 ~ run particle dust 0.0 1.0 1.0 1.0 ^0.3 ^-0.3 ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 8 at @s positioned ~ ~1.3 ~ run particle dust 1.0 0.0 1.0 1.0 ^0.45 ^ ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 8 at @s positioned ~ ~1.3 ~ run particle dust 1.0 0.0 0.0 1.0 ^0.3 ^0.3 ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 8 at @s positioned ~ ~1.3 ~ run particle dust 1.0 0.5 0.0 1.0 ^ ^0.45 ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 8 at @s positioned ~ ~1.3 ~ run particle dust 1.0 1.0 0.0 1.0 ^-0.3 ^0.3 ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 8 at @s positioned ~ ~1.3 ~ run particle dust 0.5 1.0 0.0 1.0 ^-0.45 ^ ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 8 at @s positioned ~ ~1.3 ~ run particle dust 0.0 1.0 0.0 1.0 ^-0.3 ^-0.3 ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 8 at @s positioned ~ ~1.3 ~ run particle dust 0.0 1.0 1.0 1.0 ^ ^-0.45 ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[tag=mm_thrown_knife,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 8 at @s positioned ~ ~1.3 ~ run particle dust 0.0 0.0 1.0 1.0 ^0.3 ^-0.3 ^ 0.1 0.1 0.1 0 10 normal @a

##熔岩
execute as @e[type=arrow,scores={mm_projectile=2}] at @s run particle lava ~ ~ ~ 0.2 0.2 0.2 0 20 normal @a
##爆炸
execute as @e[type=arrow,scores={mm_projectile=3}] at @s run particle explosion ~ ~ ~ 0.2 0.2 0.2 0 1 normal @a
##Jack o`Lantern
execute as @e[type=arrow,scores={mm_projectile=4}] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:jack_o_lantern",Count:1},PickupDelay:32767,Age:5920}
##骨头
execute as @e[type=arrow,scores={mm_projectile=5}] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:bone",Count:1},PickupDelay:32767,Age:5920}
##僚机
execute as @e[type=arrow,scores={mm_projectile=6}] at @s run summon bat ~ ~ ~ {Tags:["mm_projectile_l"]}
execute as @e[type=arrow,scores={mm_projectile=6}] at @s run playsound minecraft:entity.bat.ambient block @a ~ ~ ~ 1.25
execute as @e[type=arrow,scores={mm_projectile=6}] at @s run playsound minecraft:entity.bat.ambient block @a ~ ~ ~ 1.25
##彩虹
execute as @e[type=arrow,scores={mm_projectile=7}] if score sight_effect_phase mm_main matches 1 at @s run summon item ~ ~ ~ {Item:{id:"minecraft:red_wool",Count:1},PickupDelay:32767,Age:5920}
execute as @e[type=arrow,scores={mm_projectile=7}] if score sight_effect_phase mm_main matches 2 at @s run summon item ~ ~ ~ {Item:{id:"minecraft:orange_wool",Count:1},PickupDelay:32767,Age:5920}
execute as @e[type=arrow,scores={mm_projectile=7}] if score sight_effect_phase mm_main matches 3 at @s run summon item ~ ~ ~ {Item:{id:"minecraft:yellow_wool",Count:1},PickupDelay:32767,Age:5920}
execute as @e[type=arrow,scores={mm_projectile=7}] if score sight_effect_phase mm_main matches 4 at @s run summon item ~ ~ ~ {Item:{id:"minecraft:lime_wool",Count:1},PickupDelay:32767,Age:5920}
execute as @e[type=arrow,scores={mm_projectile=7}] if score sight_effect_phase mm_main matches 5 at @s run summon item ~ ~ ~ {Item:{id:"minecraft:green_wool",Count:1},PickupDelay:32767,Age:5920}
execute as @e[type=arrow,scores={mm_projectile=7}] if score sight_effect_phase mm_main matches 6 at @s run summon item ~ ~ ~ {Item:{id:"minecraft:cyan_wool",Count:1},PickupDelay:32767,Age:5920}
execute as @e[type=arrow,scores={mm_projectile=7}] if score sight_effect_phase mm_main matches 7 at @s run summon item ~ ~ ~ {Item:{id:"minecraft:blue_wool",Count:1},PickupDelay:32767,Age:5920}
execute as @e[type=arrow,scores={mm_projectile=7}] if score sight_effect_phase mm_main matches 8 at @s run summon item ~ ~ ~ {Item:{id:"minecraft:purple_wool",Count:1},PickupDelay:32767,Age:5920}
##甜食罐
execute as @e[type=arrow,scores={mm_projectile=8}] if score sight_effect_phase mm_main matches 1 at @s run summon item ~ ~ ~ {Item:{id:"minecraft:milk_bucket",Count:1},PickupDelay:32767,Age:5920}
execute as @e[type=arrow,scores={mm_projectile=8}] if score sight_effect_phase mm_main matches 2 at @s run summon item ~ ~ ~ {Item:{id:"minecraft:pumpkin_pie",Count:1},PickupDelay:32767,Age:5920}
execute as @e[type=arrow,scores={mm_projectile=8}] if score sight_effect_phase mm_main matches 3 at @s run summon item ~ ~ ~ {Item:{id:"minecraft:cookie",Count:1},PickupDelay:32767,Age:5920}
execute as @e[type=arrow,scores={mm_projectile=8}] if score sight_effect_phase mm_main matches 4 at @s run summon item ~ ~ ~ {Item:{id:"minecraft:sugar",Count:1},PickupDelay:32767,Age:5920}
execute as @e[type=arrow,scores={mm_projectile=8}] if score sight_effect_phase mm_main matches 5 at @s run summon item ~ ~ ~ {Item:{id:"minecraft:apple",Count:1},PickupDelay:32767,Age:5920}
execute as @e[type=arrow,scores={mm_projectile=8}] if score sight_effect_phase mm_main matches 6 at @s run summon item ~ ~ ~ {Item:{id:"minecraft:cake",Count:1},PickupDelay:32767,Age:5920}
execute as @e[type=arrow,scores={mm_projectile=8}] if score sight_effect_phase mm_main matches 7 at @s run summon item ~ ~ ~ {Item:{id:"minecraft:melon_slice",Count:1},PickupDelay:32767,Age:5920}
execute as @e[type=arrow,scores={mm_projectile=8}] if score sight_effect_phase mm_main matches 8 at @s run summon item ~ ~ ~ {Item:{id:"minecraft:honey_bottle",Count:1},PickupDelay:32767,Age:5920}
##双龙
execute as @e[type=arrow,scores={mm_projectile=9}] if score sight_effect_phase mm_main matches 1 at @s run particle dust 1.0 0.0 0.0 1.0 ^0.45 ^ ^ 0.05 0.05 0.05 0 5 normal @a
execute as @e[type=arrow,scores={mm_projectile=9}] if score sight_effect_phase mm_main matches 1 at @s run particle dust 0.0 0.0 1.0 1.0 ^-0.45 ^ ^ 0.05 0.05 0.05 0 5 normal @a
execute as @e[type=arrow,scores={mm_projectile=9}] if score sight_effect_phase mm_main matches 2 at @s run particle dust 1.0 0.0 0.0 1.0 ^0.3 ^0.3 ^ 0.05 0.05 0.05 0 5 normal @a
execute as @e[type=arrow,scores={mm_projectile=9}] if score sight_effect_phase mm_main matches 2 at @s run particle dust 0.0 0.0 1.0 1.0 ^-0.3 ^-0.3 ^ 0.05 0.05 0.05 0 5 normal @a
execute as @e[type=arrow,scores={mm_projectile=9}] if score sight_effect_phase mm_main matches 3 at @s run particle dust 1.0 0.0 0.0 1.0 ^ ^0.45 ^ 0.05 0.05 0.05 0 5 normal @a
execute as @e[type=arrow,scores={mm_projectile=9}] if score sight_effect_phase mm_main matches 3 at @s run particle dust 0.0 0.0 1.0 1.0 ^ ^-0.45 ^ 0.05 0.05 0.05 0 5 normal @a
execute as @e[type=arrow,scores={mm_projectile=9}] if score sight_effect_phase mm_main matches 4 at @s run particle dust 1.0 0.0 0.0 1.0 ^-0.3 ^0.3 ^ 0.05 0.05 0.05 0 5 normal @a
execute as @e[type=arrow,scores={mm_projectile=9}] if score sight_effect_phase mm_main matches 4 at @s run particle dust 0.0 0.0 1.0 1.0 ^0.3 ^-0.3 ^ 0.05 0.05 0.05 0 5 normal @a
execute as @e[type=arrow,scores={mm_projectile=9}] if score sight_effect_phase mm_main matches 5 at @s run particle dust 1.0 0.0 0.0 1.0 ^-0.45 ^ ^ 0.05 0.05 0.05 0 5 normal @a
execute as @e[type=arrow,scores={mm_projectile=9}] if score sight_effect_phase mm_main matches 5 at @s run particle dust 0.0 0.0 1.0 1.0 ^0.45 ^ ^ 0.05 0.05 0.05 0 5 normal @a
execute as @e[type=arrow,scores={mm_projectile=9}] if score sight_effect_phase mm_main matches 6 at @s run particle dust 1.0 0.0 0.0 1.0 ^-0.3 ^-0.3 ^ 0.05 0.05 0.05 0 5 normal @a
execute as @e[type=arrow,scores={mm_projectile=9}] if score sight_effect_phase mm_main matches 6 at @s run particle dust 0.0 0.0 1.0 1.0 ^0.3 ^0.3 ^ 0.05 0.05 0.05 0 5 normal @a
execute as @e[type=arrow,scores={mm_projectile=9}] if score sight_effect_phase mm_main matches 7 at @s run particle dust 1.0 0.0 0.0 1.0 ^ ^-0.45 ^ 0.05 0.05 0.05 0 5 normal @a
execute as @e[type=arrow,scores={mm_projectile=9}] if score sight_effect_phase mm_main matches 7 at @s run particle dust 0.0 0.0 1.0 1.0 ^ ^0.45 ^ 0.05 0.05 0.05 0 5 normal @a
execute as @e[type=arrow,scores={mm_projectile=9}] if score sight_effect_phase mm_main matches 8 at @s run particle dust 1.0 0.0 0.0 1.0 ^0.3 ^-0.3 ^ 0.05 0.05 0.05 0 5 normal @a
execute as @e[type=arrow,scores={mm_projectile=9}] if score sight_effect_phase mm_main matches 8 at @s run particle dust 0.0 0.0 1.0 1.0 ^-0.3 ^0.3 ^ 0.05 0.05 0.05 0 5 normal @a
##彩色旋风
execute as @e[type=arrow,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 1 at @s run particle dust 1.0 0.0 0.0 1.0 ^0.45 ^ ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[type=arrow,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 1 at @s run particle dust 1.0 0.5 0.0 1.0 ^0.3 ^0.3 ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[type=arrow,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 1 at @s run particle dust 1.0 1.0 0.0 1.0 ^ ^0.45 ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[type=arrow,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 1 at @s run particle dust 0.5 1.0 0.0 1.0 ^-0.3 ^0.3 ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[type=arrow,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 1 at @s run particle dust 0.0 1.0 0.0 1.0 ^-0.45 ^ ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[type=arrow,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 1 at @s run particle dust 0.0 1.0 1.0 1.0 ^-0.3 ^-0.3 ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[type=arrow,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 1 at @s run particle dust 0.0 0.0 1.0 1.0 ^ ^-0.45 ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[type=arrow,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 1 at @s run particle dust 1.0 0.0 1.0 1.0 ^0.3 ^-0.3 ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[type=arrow,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 2 at @s run particle dust 1.0 0.5 0.0 1.0 ^0.45 ^ ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[type=arrow,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 2 at @s run particle dust 1.0 1.0 0.0 1.0 ^0.3 ^0.3 ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[type=arrow,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 2 at @s run particle dust 0.5 1.0 0.0 1.0 ^ ^0.45 ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[type=arrow,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 2 at @s run particle dust 0.0 1.0 0.0 1.0 ^-0.3 ^0.3 ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[type=arrow,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 2 at @s run particle dust 0.0 1.0 1.0 1.0 ^-0.45 ^ ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[type=arrow,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 2 at @s run particle dust 0.0 0.0 1.0 1.0 ^-0.3 ^-0.3 ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[type=arrow,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 2 at @s run particle dust 1.0 0.0 1.0 1.0 ^ ^-0.45 ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[type=arrow,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 2 at @s run particle dust 1.0 0.0 0.0 1.0 ^0.3 ^-0.3 ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[type=arrow,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 3 at @s run particle dust 1.0 1.0 0.0 1.0 ^0.45 ^ ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[type=arrow,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 3 at @s run particle dust 0.5 1.0 0.0 1.0 ^0.3 ^0.3 ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[type=arrow,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 3 at @s run particle dust 0.0 1.0 0.0 1.0 ^ ^0.45 ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[type=arrow,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 3 at @s run particle dust 0.0 1.0 1.0 1.0 ^-0.3 ^0.3 ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[type=arrow,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 3 at @s run particle dust 0.0 0.0 1.0 1.0 ^-0.45 ^ ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[type=arrow,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 3 at @s run particle dust 1.0 0.0 1.0 1.0 ^-0.3 ^-0.3 ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[type=arrow,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 3 at @s run particle dust 1.0 0.0 0.0 1.0 ^ ^-0.45 ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[type=arrow,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 3 at @s run particle dust 1.0 0.5 0.0 1.0 ^0.3 ^-0.3 ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[type=arrow,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 4 at @s run particle dust 0.5 1.0 0.0 1.0 ^0.45 ^ ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[type=arrow,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 4 at @s run particle dust 0.0 1.0 0.0 1.0 ^0.3 ^0.3 ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[type=arrow,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 4 at @s run particle dust 0.0 1.0 1.0 1.0 ^ ^0.45 ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[type=arrow,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 4 at @s run particle dust 0.0 0.0 1.0 1.0 ^-0.3 ^0.3 ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[type=arrow,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 4 at @s run particle dust 1.0 0.0 1.0 1.0 ^-0.45 ^ ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[type=arrow,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 4 at @s run particle dust 1.0 0.0 0.0 1.0 ^-0.3 ^-0.3 ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[type=arrow,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 4 at @s run particle dust 1.0 0.5 0.0 1.0 ^ ^-0.45 ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[type=arrow,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 4 at @s run particle dust 1.0 1.0 0.0 1.0 ^0.3 ^-0.3 ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[type=arrow,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 5 at @s run particle dust 0.0 1.0 0.0 1.0 ^0.45 ^ ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[type=arrow,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 5 at @s run particle dust 0.0 1.0 1.0 1.0 ^0.3 ^0.3 ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[type=arrow,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 5 at @s run particle dust 0.0 0.0 1.0 1.0 ^ ^0.45 ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[type=arrow,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 5 at @s run particle dust 1.0 0.0 1.0 1.0 ^-0.3 ^0.3 ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[type=arrow,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 5 at @s run particle dust 1.0 0.0 0.0 1.0 ^-0.45 ^ ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[type=arrow,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 5 at @s run particle dust 1.0 0.5 0.0 1.0 ^-0.3 ^-0.3 ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[type=arrow,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 5 at @s run particle dust 1.0 1.0 0.0 1.0 ^ ^-0.45 ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[type=arrow,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 5 at @s run particle dust 0.5 1.0 0.0 1.0 ^0.3 ^-0.3 ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[type=arrow,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 6 at @s run particle dust 0.0 1.0 1.0 1.0 ^0.45 ^ ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[type=arrow,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 6 at @s run particle dust 0.0 0.0 1.0 1.0 ^0.3 ^0.3 ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[type=arrow,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 6 at @s run particle dust 1.0 0.0 1.0 1.0 ^ ^0.45 ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[type=arrow,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 6 at @s run particle dust 1.0 0.0 0.0 1.0 ^-0.3 ^0.3 ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[type=arrow,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 6 at @s run particle dust 1.0 0.5 0.0 1.0 ^-0.45 ^ ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[type=arrow,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 6 at @s run particle dust 1.0 1.0 0.0 1.0 ^-0.3 ^-0.3 ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[type=arrow,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 6 at @s run particle dust 0.5 1.0 0.0 1.0 ^ ^-0.45 ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[type=arrow,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 6 at @s run particle dust 0.0 1.0 0.0 1.0 ^0.3 ^-0.3 ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[type=arrow,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 7 at @s run particle dust 0.0 0.0 1.0 1.0 ^0.45 ^ ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[type=arrow,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 7 at @s run particle dust 1.0 0.0 1.0 1.0 ^0.3 ^0.3 ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[type=arrow,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 7 at @s run particle dust 1.0 0.0 0.0 1.0 ^ ^0.45 ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[type=arrow,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 7 at @s run particle dust 1.0 0.5 0.0 1.0 ^-0.3 ^0.3 ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[type=arrow,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 7 at @s run particle dust 1.0 1.0 0.0 1.0 ^-0.45 ^ ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[type=arrow,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 7 at @s run particle dust 0.5 1.0 0.0 1.0 ^-0.3 ^-0.3 ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[type=arrow,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 7 at @s run particle dust 0.0 1.0 0.0 1.0 ^ ^-0.45 ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[type=arrow,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 7 at @s run particle dust 0.0 1.0 1.0 1.0 ^0.3 ^-0.3 ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[type=arrow,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 8 at @s run particle dust 1.0 0.0 1.0 1.0 ^0.45 ^ ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[type=arrow,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 8 at @s run particle dust 1.0 0.0 0.0 1.0 ^0.3 ^0.3 ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[type=arrow,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 8 at @s run particle dust 1.0 0.5 0.0 1.0 ^ ^0.45 ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[type=arrow,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 8 at @s run particle dust 1.0 1.0 0.0 1.0 ^-0.3 ^0.3 ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[type=arrow,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 8 at @s run particle dust 0.5 1.0 0.0 1.0 ^-0.45 ^ ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[type=arrow,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 8 at @s run particle dust 0.0 1.0 0.0 1.0 ^-0.3 ^-0.3 ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[type=arrow,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 8 at @s run particle dust 0.0 1.0 1.0 1.0 ^ ^-0.45 ^ 0.1 0.1 0.1 0 10 normal @a
execute as @e[type=arrow,scores={mm_projectile=10}] if score sight_effect_phase mm_main matches 8 at @s run particle dust 0.0 0.0 1.0 1.0 ^0.3 ^-0.3 ^ 0.1 0.1 0.1 0 10 normal @a

execute as @e[tag=mm_projectile_l] unless entity @s[scores={mm_projectile_l=0..}] run scoreboard players set @s mm_projectile_l 20
execute as @e[tag=mm_projectile_l,scores={mm_projectile_l=1..}] run scoreboard players remove @s mm_projectile_l 1
tp @e[tag=mm_projectile_l,scores={mm_projectile_l=0}] ~ -128 ~
kill @e[tag=mm_projectile_l,scores={mm_projectile_l=0}]