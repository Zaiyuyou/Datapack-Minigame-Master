#向下移动
execute as @s at @s if block ~ ~-0.1 ~ #mm:thrown_knife_permeable run tp ~ ~-0.1 ~


#递归
execute as @s at @s if block ~ ~-0.1 ~ #mm:thrown_knife_permeable run function mm:game/game_module/dead_body_teleporter