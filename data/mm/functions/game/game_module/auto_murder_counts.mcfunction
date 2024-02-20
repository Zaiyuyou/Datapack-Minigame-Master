scoreboard players set murderer_count mm_settings 0

#根据玩家数量配置侦探和杀手
execute if score number_players mm_main >= 8 mm_main run scoreboard players add murderer_count mm_settings 1
execute if score number_players mm_main >= 16 mm_main run scoreboard players add murderer_count mm_settings 1
execute if score number_players mm_main >= 24 mm_main run scoreboard players add murderer_count mm_settings 1
execute if score number_players mm_main >= 32 mm_main run scoreboard players add murderer_count mm_settings 1
execute if score number_players mm_main >= 40 mm_main run scoreboard players add murderer_count mm_settings 1
execute if score number_players mm_main >= 48 mm_main run scoreboard players add murderer_count mm_settings 1
execute if score number_players mm_main >= 64 mm_main run scoreboard players add murderer_count mm_settings 1
