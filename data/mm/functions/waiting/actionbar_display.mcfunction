#身份几率显示
execute if score game_mode mm_main matches 0 as @a run title @s actionbar [{"text":"成为杀手的概率:","color":"red"},{"score":{"objective":"mm_m_chance_d","name":"@s"},"color":"red"},{"text":"% ","color":"red"},{"text":"- ","color":"white"},{"text":"成为侦探的概率:","color":"aqua"},{"score":{"objective":"mm_d_chance_d","name":"@s"},"color":"aqua"},{"text":"% ","color":"aqua"}]
execute if score game_mode mm_main matches 1 as @a run title @s actionbar [{"text":"成为杀手的概率:","color":"red"},{"score":{"objective":"mm_m_chance_d","name":"@s"},"color":"red"},{"text":"% ","color":"red"},{"text":"- ","color":"white"},{"text":"成为侦探的概率:","color":"aqua"},{"score":{"objective":"mm_d_chance_d","name":"@s"},"color":"aqua"},{"text":"% ","color":"aqua"}]
execute if score game_mode mm_main matches 5 as @a run title @s actionbar [{"text":"成为杀手的概率:","color":"red"},{"score":{"objective":"mm_m_chance_d","name":"@s"},"color":"red"},{"text":"% ","color":"red"},{"text":"- ","color":"white"},{"text":"成为侦探的概率:","color":"aqua"},{"score":{"objective":"mm_d_chance_d","name":"@s"},"color":"aqua"},{"text":"% ","color":"aqua"}]
execute if score game_mode mm_main matches 7 as @a run title @s actionbar [{"text":"成为母体的概率:","color":"red"},{"score":{"objective":"mm_a_chance_d","name":"@s"},"color":"red"},{"text":"% ","color":"red"}]
execute if score game_mode mm_main matches 8 as @a run title @s actionbar [{"text":"成为杀手的概率:","color":"red"},{"score":{"objective":"mm_m_chance_d","name":"@s"},"color":"red"},{"text":"% ","color":"red"},{"text":"- ","color":"white"},{"text":"成为侦探的概率:","color":"aqua"},{"score":{"objective":"mm_d_chance_d","name":"@s"},"color":"aqua"},{"text":"% ","color":"aqua"}]