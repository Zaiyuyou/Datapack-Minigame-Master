#喷气模式切换
execute as @e[nbt={Item:{tag:{PropJetPotion:1}}}] at @s run scoreboard players add @p[distance=..2] mm_jet_mode 0

execute as @e[nbt={Item:{tag:{PropJetPotion:1}}}] at @s run execute if score mm_jet mm_settings matches 1 run execute as @p[scores={mm_jet_mode=0},tag=!jet_switch,tag=!mm_dead,tag=!mm_will_respawn,tag=!mm_spectator,gamemode=!spectator,distance=..2] at @s run function mm:game/game_module/zyy_modification_module/zyy_props/zyy_module_jet_enable


execute as @e[nbt={Item:{tag:{PropJetPotion:1}}}] at @s run execute if score mm_jet mm_settings matches 1 run execute as @p[scores={mm_jet_mode=1},tag=!jet_switch,tag=!mm_dead,tag=!mm_will_respawn,tag=!mm_spectator,gamemode=!spectator,distance=..2] at @s run function mm:game/game_module/zyy_modification_module/zyy_props/zyy_module_jet_disable

tag @a remove jet_switch

