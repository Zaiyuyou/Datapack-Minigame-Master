execute if score game_pause mm_main matches 0 run tellraw @s {"text":"已暂停游戏!","color":"red"}
execute if score game_pause mm_main matches 0 run scoreboard players set game_pause mm_main 2

execute if score game_pause mm_main matches 1 run tellraw @s {"text":"已继续游戏!","color":"green"}
execute if score game_pause mm_main matches 1 run scoreboard players set game_pause mm_main 0

execute if score game_pause mm_main matches 2 run scoreboard players set game_pause mm_main 1