#未死亡玩家冒险
execute as @a[tag=!mm_dead,tag=!mm_will_respawn,tag=!mm_spectator,gamemode=!creative,gamemode=!adventure] run gamemode adventure


#死亡玩家旁观
execute as @a[tag=mm_dead,gamemode=!creative,gamemode=!spectator] run gamemode spectator
execute as @a[tag=mm_will_respawn,gamemode=!creative,gamemode=!spectator] run gamemode spectator
execute as @a[tag=mm_spectator,gamemode=!creative,gamemode=!spectator] run gamemode spectator



#虚弱&夜视效果
execute if score timer mm_main matches 0 as @a[tag=!mm_dead,tag=!mm_spectator] run effect give @s weakness 30 0 true

execute if score timer mm_main matches 0 as @a[tag=mm_dead] run effect give @s night_vision 30 0 true
execute if score timer mm_main matches 0 as @a[tag=mm_spectator] run effect give @s night_vision 30 0 true