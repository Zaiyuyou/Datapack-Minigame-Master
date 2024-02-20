#以太液体
execute as @e[nbt={Item:{tag:{PropEtherPotion:1}}},limit=1] at @s run execute if score game_mode mm_main matches 0 run effect give @a[tag=!mm_dead,tag=!mm_will_respawn,tag=!mm_spectator,gamemode=!spectator,distance=2..] minecraft:glowing 30 0 true
execute as @e[nbt={Item:{tag:{PropEtherPotion:1}}},limit=1] at @s run execute if score game_mode mm_main matches 0 run tellraw @a {"text":"有人使用了以太液体,除使用者之外的玩家高亮30s","color":"red"}

execute as @e[nbt={Item:{tag:{PropEtherPotion:1}}},limit=1] at @s run execute if score game_mode mm_main matches 1 run effect give @a[tag=!mm_dead,tag=!mm_will_respawn,tag=!mm_spectator,gamemode=!spectator,distance=2..] minecraft:glowing 30 0 true
execute as @e[nbt={Item:{tag:{PropEtherPotion:1}}},limit=1] at @s run execute if score game_mode mm_main matches 1 run tellraw @a {"text":"有人使用了以太液体,除使用者之外的玩家高亮30s","color":"red"}

execute as @e[nbt={Item:{tag:{PropEtherPotion:1}}},limit=1] at @s run execute if score game_mode mm_main matches 2 run execute as @p[team=mm_infected,distance=..2,tag=!mm_dead,tag=!mm_will_respawn,tag=!mm_spectator,gamemode=!spectator] at @s run effect give @a[team=mm_survivor,tag=!mm_dead,tag=!mm_will_respawn,tag=!mm_spectator,gamemode=!spectator] minecraft:glowing 30 0 true
execute as @e[nbt={Item:{tag:{PropEtherPotion:1}}},limit=1] at @s run execute if score game_mode mm_main matches 2 run execute as @p[team=mm_survivor,distance=..2,tag=!mm_dead,tag=!mm_will_respawn,tag=!mm_spectator,gamemode=!spectator] at @s run effect give @a[team=mm_infected,tag=!mm_dead,tag=!mm_will_respawn,tag=!mm_spectator,gamemode=!spectator] minecraft:glowing 30 0 true
execute as @e[nbt={Item:{tag:{PropEtherPotion:1}}},limit=1] at @s run execute if score game_mode mm_main matches 2 run tellraw @a {"text":"有人使用了以太液体,敌对阵营的玩家高亮30s","color":"red"}

execute as @e[nbt={Item:{tag:{PropEtherPotion:1}}},limit=1] at @s run execute if score game_mode mm_main matches 2 run execute as @p[team=mm_sheriff,distance=..2,tag=!mm_dead,tag=!mm_will_respawn,tag=!mm_spectator,gamemode=!spectator] at @s run effect give @a[team=mm_outlaw,tag=!mm_dead,tag=!mm_will_respawn,tag=!mm_spectator,gamemode=!spectator] minecraft:glowing 30 0 true
execute as @e[nbt={Item:{tag:{PropEtherPotion:1}}},limit=1] at @s run execute if score game_mode mm_main matches 2 run execute as @p[team=mm_outlaw,distance=..2,tag=!mm_dead,tag=!mm_will_respawn,tag=!mm_spectator,gamemode=!spectator] at @s run effect give @a[team=mm_sheriff,tag=!mm_dead,tag=!mm_will_respawn,tag=!mm_spectator,gamemode=!spectator] minecraft:glowing 30 0 true
execute as @e[nbt={Item:{tag:{PropEtherPotion:1}}},limit=1] at @s run execute if score game_mode mm_main matches 3 run tellraw @a {"text":"有人使用了以太液体,敌对阵营的玩家高亮30s","color":"red"}

execute as @e[nbt={Item:{tag:{PropEtherPotion:1}}},limit=1] at @s run execute if score game_mode mm_main matches 4 run effect give @a[tag=!mm_dead,tag=!mm_will_respawn,tag=!mm_spectator,gamemode=!spectator,distance=2..] minecraft:glowing 30 0 true
execute as @e[nbt={Item:{tag:{PropEtherPotion:1}}},limit=1] at @s run execute if score game_mode mm_main matches 4 run tellraw @a {"text":"有人使用了以太液体,除使用者之外的玩家高亮30s","color":"red"}

execute as @e[nbt={Item:{tag:{PropEtherPotion:1}}},limit=1] at @s run execute if score game_mode mm_main matches 5 run effect give @a[tag=!mm_dead,tag=!mm_will_respawn,tag=!mm_spectator,gamemode=!spectator,distance=2..] minecraft:glowing 30 0 true
execute as @e[nbt={Item:{tag:{PropEtherPotion:1}}},limit=1] at @s run execute if score game_mode mm_main matches 5 run tellraw @a {"text":"有人使用了以太液体,除使用者之外的玩家高亮30s","color":"red"}

execute as @e[nbt={Item:{tag:{PropEtherPotion:1}}},limit=1] at @s run execute if score game_mode mm_main matches 6 run effect give @e[tag=mm_ghost] minecraft:glowing 20 0 true
execute as @e[nbt={Item:{tag:{PropEtherPotion:1}}},limit=1] at @s run execute if score game_mode mm_main matches 6 run tellraw @a {"text":"有幸存者使用了以太液体,所有恶灵高亮20s","color":"red"}

execute as @e[nbt={Item:{tag:{PropEtherPotion:1}}},limit=1] at @s run execute if score game_mode mm_main matches 7 run execute as @p[team=mm_infected,distance=..2,tag=!mm_dead,tag=!mm_will_respawn,tag=!mm_spectator,gamemode=!spectator] at @s run effect give @a[team=mm_survivor,tag=!mm_dead,tag=!mm_will_respawn,tag=!mm_spectator,gamemode=!spectator] minecraft:glowing 30 0 true
execute as @e[nbt={Item:{tag:{PropEtherPotion:1}}},limit=1] at @s run execute if score game_mode mm_main matches 7 run execute as @p[team=mm_survivor,distance=..2,tag=!mm_dead,tag=!mm_will_respawn,tag=!mm_spectator,gamemode=!spectator] at @s run effect give @a[team=mm_infected,tag=!mm_dead,tag=!mm_will_respawn,tag=!mm_spectator,gamemode=!spectator] minecraft:glowing 30 0 true
execute as @e[nbt={Item:{tag:{PropEtherPotion:1}}},limit=1] at @s run execute if score game_mode mm_main matches 7 run tellraw @a {"text":"有人使用了以太液体,敌对阵营的玩家高亮30s","color":"red"}

execute as @e[nbt={Item:{tag:{PropEtherPotion:1}}},limit=1] at @s run execute if score game_mode mm_main matches 8 run effect give @a[tag=!mm_dead,tag=!mm_will_respawn,tag=!mm_spectator,gamemode=!spectator,distance=2..] minecraft:glowing 30 0 true
execute as @e[nbt={Item:{tag:{PropEtherPotion:1}}},limit=1] at @s run execute if score game_mode mm_main matches 8 run tellraw @a {"text":"有人使用了以太液体,除使用者之外的玩家高亮30s","color":"red"}

execute as @e[nbt={Item:{tag:{PropEtherPotion:1}}},limit=1] at @s run execute if score game_mode mm_main matches 9 run effect give @a[tag=!mm_dead,tag=!mm_will_respawn,tag=!mm_spectator,gamemode=!spectator,distance=2..] minecraft:glowing 30 0 true
execute as @e[nbt={Item:{tag:{PropEtherPotion:1}}},limit=1] at @s run execute if score game_mode mm_main matches 9 run tellraw @a {"text":"有人使用了以太液体,除使用者之外的玩家高亮30s","color":"red"}


execute as @e[nbt={Item:{tag:{PropEtherPotion:1}}}] at @s run kill @s

