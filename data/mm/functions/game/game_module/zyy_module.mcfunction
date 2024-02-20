#切换喷气模式
execute as @e[nbt={Item:{tag:{PropJetPotion:1}}}] at @s run function mm:game/game_module/zyy_modification_module/zyy_props/zyy_module_jet_switch

effect give @a[scores={mm_jet_mode=1}] minecraft:levitation 1 9


#缩圈
execute if score game_second mm_main <= border_flag mm_main run function mm:game/game_module/zyy_modification_module/zyy_module_border

#微重力
execute if score mm_microgravity mm_settings matches 1 if score game_tick mm_main matches 20 run function mm:game/game_module/zyy_modification_module/zyy_effects/zyy_module_microgravity

#夜视
execute if score mm_night_vision mm_settings matches 1 if score game_tick mm_main matches 20 run effect give @a minecraft:night_vision 120 0 true



#道具类

#圣水
execute as @e[type=minecraft:area_effect_cloud] at @s run function mm:game/game_module/zyy_modification_module/zyy_props/zyy_module_holy_potion

#以太液体
execute as @e[nbt={Item:{tag:{PropEtherPotion:1}}}] at @s run function mm:game/game_module/zyy_modification_module/zyy_props/zyy_module_ether_potion


minecraft:iron_sword
{AttributeModifiers:[{Amount:5.0d,AttributeName:"minecraft:generic.attack_damage",Name:"Knife",Operation:0,Slot:"mainhand",UUID:[I;-155459847,-1415034696,-1948849785,-1540597113]},{Amount:1024.0d,AttributeName:"minecraft:generic.attack_speed",Name:"AttackSpeed",Operation:0,Slot:"mainhand",UUID:[I;-1289656287,-1349762452,-1120143212,664721050]}],Damage:0,HideFlags:63,Knife:1,Unbreakable:1b,display:{Lore:['{"text":"§f使用你的刀杀死其他玩家!"}'],Name:'{"text":"§r§a刀"}'}}
