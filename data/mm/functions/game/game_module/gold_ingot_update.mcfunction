
execute if score timer mm_main matches 0 as @a[tag=gold_ingot_update,tag=!mm_dead] run clear @s gold_ingot
execute if score timer mm_main matches 0 as @a[tag=gold_ingot_update,scores={mm_gold_ingot=1..},tag=!mm_dead] run loot replace entity @s container.8 loot mm:gold_ingot/pickup
execute if score timer mm_main matches 0 as @a[tag=gold_ingot_update] run scoreboard players operation @s mm_gold_ingot_last = @s mm_gold_ingot
