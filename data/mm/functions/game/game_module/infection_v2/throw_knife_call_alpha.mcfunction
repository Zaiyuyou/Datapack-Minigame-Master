#无敌状态消失
execute if score game_tick mm_main matches 20 if score game_second mm_main = remove_alpha_invincible mm_data if entity @s[tag=mm_invincible] run tellraw @a[tag=mm_survivor] {"text":"15秒时间已到,母体的无敌状态因此消失!","color":"green"}
execute if score game_tick mm_main matches 20 if score game_second mm_main = remove_alpha_invincible mm_data if entity @s[tag=mm_invincible] run tellraw @s {"text":"15秒时间已到,你的无敌状态因此消失!","color":"gold"}
execute if score game_tick mm_main matches 20 if score game_second mm_main = remove_alpha_invincible mm_data run tag @s add mm_uninvincible
execute if score game_tick mm_main matches 20 if score game_second mm_main = remove_alpha_invincible mm_data run tag @s remove mm_invincible

execute as @s[tag=mm_invincible,nbt={SelectedItem:{tag:{Knife:1}}}] run tellraw @a[tag=mm_survivor] {"text":"母体的刀暴露了,他的无敌状态因此消失!","color":"green"}
execute as @s[tag=mm_invincible,nbt={SelectedItem:{tag:{Knife:1}}}] run tellraw @s {"text":"你的刀暴露了,你的无敌状态因此消失!","color":"gold"}
execute as @s[tag=mm_invincible,nbt={SelectedItem:{tag:{Knife:1}}}] run tag @s add mm_uninvincible
execute as @s[tag=mm_invincible,nbt={SelectedItem:{tag:{Knife:1}}}] run tag @s remove mm_invincible


#矫正匕首位置
execute as @s[nbt={Inventory:[{tag:{Knife:1}}]},nbt=!{Inventory:[{tag:{Knife:1},Slot:1b}]}] run tag @s add mm_dislocate_knife
execute as @s[tag=mm_dislocate_knife] run clear @s #mm:knife
execute as @s[tag=mm_dislocate_knife] run loot replace entity @s hotbar.1 loot mm:knife
execute as @s[tag=mm_dislocate_knife] run tag @s remove mm_dislocate_knife


#掷出
execute as @s[scores={mm_throw_second=-1,mm_cd_second=-1},nbt=!{Inventory:[{tag:{Knife:1},Slot:1b}]}] at @s if entity @e[type=item,nbt={Item:{tag:{Knife:1}}},distance=..5] run tag @s add mm_throw

execute as @s[tag=mm_throw] run scoreboard players operation @s mm_throw_tick = infection_cooldown_throw_tick mm_settings
execute as @s[tag=mm_throw] run scoreboard players operation @s mm_throw_second = infection_cooldown_throw_second mm_settings
execute as @s[tag=mm_throw] at @s run kill @e[type=item,nbt={Item:{tag:{Knife:1}}},limit=1,sort=nearest]
execute as @s[tag=mm_throw] run loot replace entity @s hotbar.1 loot mm:knife

execute as @s[tag=mm_throw] run tag @s remove mm_throw

execute as @s[scores={mm_throw_second=0..,mm_cd_second=-1}] run effect give @s slowness 1 0 true


#取消掷出
execute as @s[scores={mm_throw_second=0..,mm_cd_second=-1},nbt=!{Inventory:[{tag:{Knife:1},Slot:1b}]}] at @s if entity @e[type=item,nbt={Item:{tag:{Knife:1}}},distance=..5] run tag @s add mm_cancel_throw

execute as @s[tag=mm_cancel_throw] run scoreboard players set @s mm_throw_second -1
execute as @s[tag=mm_cancel_throw] at @s run kill @e[type=item,nbt={Item:{tag:{Knife:1}}},limit=1,sort=nearest]
execute as @s[tag=mm_cancel_throw] run loot replace entity @s hotbar.1 loot mm:knife

execute as @s[tag=mm_cancel_throw] run effect clear @s slowness

execute as @s[tag=mm_cancel_throw] run tag @s remove mm_cancel_throw


#冷却
execute as @s[scores={mm_cd_second=0..},nbt=!{Inventory:[{tag:{Knife:1},Slot:1b}]}] at @s if entity @e[type=item,nbt={Item:{tag:{Knife:1}}},distance=..5] run tag @s add mm_cd_throw
execute as @s[tag=mm_cd_throw] at @s run kill @e[type=item,nbt={Item:{tag:{Knife:1}}},limit=1,sort=nearest]
execute as @s[tag=mm_cd_throw] run loot replace entity @s hotbar.1 loot mm:knife
execute as @s[tag=mm_cd_throw] run tag @s remove mm_cd_throw


#掷出计时完毕后发射飞刀并编号
execute as @s[scores={mm_throw_second=0..}] if score timer_short mm_main matches 0 at @s run playsound minecraft:block.note_block.hat player @s
execute as @s[scores={mm_throw_second=0,mm_throw_tick=0}] run tag @s add mm_throwing

execute as @s[tag=mm_throwing] run scoreboard players operation @s mm_cd_tick = infection_cooldown_normal_tick mm_settings
execute as @s[tag=mm_throwing] run scoreboard players operation @s mm_cd_second = infection_cooldown_normal_second mm_settings

execute as @s[tag=mm_throwing] at @s run function mm:game/game_module/classic/thrown_knife_correction
execute as @s[tag=mm_throwing] at @s run scoreboard players operation @e[tag=mm_thrown_knife,limit=1,sort=nearest] mm_players_id = @s mm_players_id

execute as @s[tag=mm_throwing] at @s run data modify entity @e[tag=mm_thrown_knife,limit=1,sort=nearest] Pose.RightArm[1] set from entity @s Rotation[1]
execute as @s[tag=mm_throwing] at @s run data modify entity @e[tag=mm_thrown_knife,limit=1,sort=nearest] Rotation[1] set from entity @s Rotation[1]
execute as @s[tag=mm_throwing] unless score @s mm_knife_skin matches 45 at @s run loot replace entity @e[tag=mm_thrown_knife,limit=1,sort=nearest] weapon.mainhand loot mm:knife
execute as @s[tag=mm_throwing] if score @s mm_knife_skin matches 45 at @s run loot replace entity @e[tag=mm_thrown_knife,limit=1,sort=nearest] armor.head loot mm:knife

execute as @s[tag=mm_throwing] at @s run playsound minecraft:entity.ender_dragon.flap player @s
execute as @s[tag=mm_throwing] run effect clear @s slowness

execute as @s[tag=mm_throwing] run tag @s remove mm_throwing


#掷出计时
execute as @s[scores={mm_throw_second=0..}] run scoreboard players remove @s mm_throw_tick 1
execute as @s[scores={mm_throw_second=0..,mm_throw_tick=-1}] run scoreboard players remove @s mm_throw_second 1
execute as @s[scores={mm_throw_second=0..,mm_throw_tick=-1}] run scoreboard players set @s mm_throw_tick 19


#冷却计时
execute as @s[scores={mm_cd_second=0..}] run scoreboard players remove @s mm_cd_tick 1
execute as @s[scores={mm_cd_second=0..,mm_cd_tick=-1}] run scoreboard players remove @s mm_cd_second 1
execute as @s[scores={mm_cd_second=0..,mm_cd_tick=-1}] run scoreboard players set @s mm_cd_tick 19