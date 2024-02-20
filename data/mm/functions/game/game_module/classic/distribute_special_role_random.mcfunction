#给随机玩家特殊身份
scoreboard players add distribute_special_role mm_main 1
tag @a[tag=!mm_murderer,tag=!mm_detective,limit=1,sort=random] add mm_murderer
tag @a[tag=!mm_murderer,tag=!mm_detective,limit=1,sort=random] add mm_detective

#递归
execute if score distribute_special_role mm_main < murderer_count mm_settings run function mm:game/game_module/classic/distribute_special_role_random
