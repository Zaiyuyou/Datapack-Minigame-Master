#检测触发
execute as @a[scores={mm_cosmetics=11..20}] run tag @s add mm_triggered_knife_skin_menu

execute as @a[tag=mm_triggered_knife_skin_menu] run tellraw @s {"text":"匕首皮肤","color":"white"}

execute as @a[tag=mm_triggered_knife_skin_menu] run tellraw @s [{"text":"随机 "},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 100"}},{"text":"铁剑(默认) "},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 101"}},{"text":"金剑 "},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 102"}}]
execute as @a[tag=mm_triggered_knife_skin_menu] run tellraw @s [{"text":"钻石剑 "},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 103"}},{"text":"羽毛 "},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 104"}},{"text":"木棍 "},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 105"}}]
execute as @a[tag=mm_triggered_knife_skin_menu] run tellraw @s [{"text":"铁锹 "},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 106"}},{"text":"石锹 "},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 107"}},{"text":"钻石锹 "},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 108"}}]
execute as @a[tag=mm_triggered_knife_skin_menu] run tellraw @s [{"text":"木剑 "},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 109"}},{"text":"石剑 "},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 110"}},{"text":"木斧 "},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 111"}}]
execute as @a[tag=mm_triggered_knife_skin_menu] run tellraw @s [{"text":"钻石斧 "},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 112"}},{"text":"钻石锄 "},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 113"}},{"text":"剪刀 "},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 114"}}]
execute as @a[tag=mm_triggered_knife_skin_menu] run tellraw @s [{"text":"金镐 "},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 115"}},{"text":"海绵 "},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 116"}},{"text":"苹果 "},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 117"}}]
execute as @a[tag=mm_triggered_knife_skin_menu] run tellraw @s [{"text":"曲奇 "},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 118"}},{"text":"南瓜派 "},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 119"}},{"text":"生鲑鱼 "},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 120"}}]
execute as @a[tag=mm_triggered_knife_skin_menu] run tellraw @s [{"text":"枯死的灌木 "},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 121"}},{"text":"烈焰棒 "},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 122"}},{"text":"命名牌 "},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 123"}}]
execute as @a[tag=mm_triggered_knife_skin_menu] run tellraw @s [{"text":"胡萝卜钓竿 "},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 124"}},{"text":"骨头 "},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 125"}},{"text":"胡萝卜 "},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 126"}}]
execute as @a[tag=mm_triggered_knife_skin_menu] run tellraw @s [{"text":"金萝卜 "},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 127"}},{"text":"红石火把 "},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 128"}},{"text":"玫瑰丛 "},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 129"}}]
execute as @a[tag=mm_triggered_knife_skin_menu] run tellraw @s [{"text":"红石粉 "},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 130"}},{"text":"闪烁的西瓜 "},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 131"}},{"text":"海晶碎片 "},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 132"}}]
execute as @a[tag=mm_triggered_knife_skin_menu] run tellraw @s [{"text":"TNT "},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 133"}},{"text":"牛排 "},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 134"}},{"text":"下界合金剑 "},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 135"}}]
execute as @a[tag=mm_triggered_knife_skin_menu] run tellraw @s [{"text":"下界合金锹 "},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 136"}},{"text":"下界石英 "},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 137"}},{"text":"面包 "},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 138"}}]
execute as @a[tag=mm_triggered_knife_skin_menu] run tellraw @s [{"text":"下界之星 "},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 139"}},{"text":"红砖 "},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 140"}},{"text":"书 "},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 141"}}]
execute as @a[tag=mm_triggered_knife_skin_menu] run tellraw @s [{"text":"下界合金斧 "},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 142"}},{"text":"火焰弹 "},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 143"}},{"text":"甜浆果 "},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 144"}}]
execute as @a[tag=mm_triggered_knife_skin_menu] run tellraw @s [{"text":"玩家头颅 "},{"text":"选择 ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 145"}}]

tellraw @a[tag=mm_triggered_knife_skin_menu] {"text":"<<<返回上一级菜单","color":"gray","clickEvent":{"action":"run_command","value":"/trigger mm_cosmetics set 1"}}


#选择
execute as @a[scores={mm_cosmetics=100..199}] run tag @s add mm_selected_knife_skin

execute as @a[tag=mm_selected_knife_skin,scores={mm_cosmetics=100}] run tellraw @s [{"text":"已选择武器皮肤为 ","color":"yellow"},{"text":"随机","color":"green"},{"text":"!","color":"yellow"}]
execute as @a[tag=mm_selected_knife_skin,scores={mm_cosmetics=101}] run tellraw @s [{"text":"已选择武器皮肤为 ","color":"yellow"},{"text":"铁剑(默认)","color":"green"},{"text":"!","color":"yellow"}]
execute as @a[tag=mm_selected_knife_skin,scores={mm_cosmetics=102}] run tellraw @s [{"text":"已选择武器皮肤为 ","color":"yellow"},{"text":"金剑","color":"green"},{"text":"!","color":"yellow"}]
execute as @a[tag=mm_selected_knife_skin,scores={mm_cosmetics=103}] run tellraw @s [{"text":"已选择武器皮肤为 ","color":"yellow"},{"text":"钻石剑","color":"green"},{"text":"!","color":"yellow"}]
execute as @a[tag=mm_selected_knife_skin,scores={mm_cosmetics=104}] run tellraw @s [{"text":"已选择武器皮肤为 ","color":"yellow"},{"text":"羽毛","color":"green"},{"text":"!","color":"yellow"}]
execute as @a[tag=mm_selected_knife_skin,scores={mm_cosmetics=105}] run tellraw @s [{"text":"已选择武器皮肤为 ","color":"yellow"},{"text":"木棍","color":"green"},{"text":"!","color":"yellow"}]
execute as @a[tag=mm_selected_knife_skin,scores={mm_cosmetics=106}] run tellraw @s [{"text":"已选择武器皮肤为 ","color":"yellow"},{"text":"铁锹","color":"green"},{"text":"!","color":"yellow"}]
execute as @a[tag=mm_selected_knife_skin,scores={mm_cosmetics=107}] run tellraw @s [{"text":"已选择武器皮肤为 ","color":"yellow"},{"text":"石锹","color":"green"},{"text":"!","color":"yellow"}]
execute as @a[tag=mm_selected_knife_skin,scores={mm_cosmetics=108}] run tellraw @s [{"text":"已选择武器皮肤为 ","color":"yellow"},{"text":"钻石锹","color":"green"},{"text":"!","color":"yellow"}]
execute as @a[tag=mm_selected_knife_skin,scores={mm_cosmetics=109}] run tellraw @s [{"text":"已选择武器皮肤为 ","color":"yellow"},{"text":"木剑","color":"green"},{"text":"!","color":"yellow"}]
execute as @a[tag=mm_selected_knife_skin,scores={mm_cosmetics=110}] run tellraw @s [{"text":"已选择武器皮肤为 ","color":"yellow"},{"text":"石剑","color":"green"},{"text":"!","color":"yellow"}]
execute as @a[tag=mm_selected_knife_skin,scores={mm_cosmetics=111}] run tellraw @s [{"text":"已选择武器皮肤为 ","color":"yellow"},{"text":"木斧","color":"green"},{"text":"!","color":"yellow"}]
execute as @a[tag=mm_selected_knife_skin,scores={mm_cosmetics=112}] run tellraw @s [{"text":"已选择武器皮肤为 ","color":"yellow"},{"text":"钻石斧","color":"green"},{"text":"!","color":"yellow"}]
execute as @a[tag=mm_selected_knife_skin,scores={mm_cosmetics=113}] run tellraw @s [{"text":"已选择武器皮肤为 ","color":"yellow"},{"text":"钻石锄","color":"green"},{"text":"!","color":"yellow"}]
execute as @a[tag=mm_selected_knife_skin,scores={mm_cosmetics=114}] run tellraw @s [{"text":"已选择武器皮肤为 ","color":"yellow"},{"text":"剪刀","color":"green"},{"text":"!","color":"yellow"}]
execute as @a[tag=mm_selected_knife_skin,scores={mm_cosmetics=115}] run tellraw @s [{"text":"已选择武器皮肤为 ","color":"yellow"},{"text":"金镐","color":"green"},{"text":"!","color":"yellow"}]
execute as @a[tag=mm_selected_knife_skin,scores={mm_cosmetics=116}] run tellraw @s [{"text":"已选择武器皮肤为 ","color":"yellow"},{"text":"海绵","color":"green"},{"text":"!","color":"yellow"}]
execute as @a[tag=mm_selected_knife_skin,scores={mm_cosmetics=117}] run tellraw @s [{"text":"已选择武器皮肤为 ","color":"yellow"},{"text":"苹果","color":"green"},{"text":"!","color":"yellow"}]
execute as @a[tag=mm_selected_knife_skin,scores={mm_cosmetics=118}] run tellraw @s [{"text":"已选择武器皮肤为 ","color":"yellow"},{"text":"曲奇","color":"green"},{"text":"!","color":"yellow"}]
execute as @a[tag=mm_selected_knife_skin,scores={mm_cosmetics=119}] run tellraw @s [{"text":"已选择武器皮肤为 ","color":"yellow"},{"text":"南瓜派","color":"green"},{"text":"!","color":"yellow"}]
execute as @a[tag=mm_selected_knife_skin,scores={mm_cosmetics=120}] run tellraw @s [{"text":"已选择武器皮肤为 ","color":"yellow"},{"text":"生鲑鱼","color":"green"},{"text":"!","color":"yellow"}]
execute as @a[tag=mm_selected_knife_skin,scores={mm_cosmetics=121}] run tellraw @s [{"text":"已选择武器皮肤为 ","color":"yellow"},{"text":"枯死的灌木","color":"green"},{"text":"!","color":"yellow"}]
execute as @a[tag=mm_selected_knife_skin,scores={mm_cosmetics=122}] run tellraw @s [{"text":"已选择武器皮肤为 ","color":"yellow"},{"text":"烈焰棒","color":"green"},{"text":"!","color":"yellow"}]
execute as @a[tag=mm_selected_knife_skin,scores={mm_cosmetics=123}] run tellraw @s [{"text":"已选择武器皮肤为 ","color":"yellow"},{"text":"命名牌","color":"green"},{"text":"!","color":"yellow"}]
execute as @a[tag=mm_selected_knife_skin,scores={mm_cosmetics=124}] run tellraw @s [{"text":"已选择武器皮肤为 ","color":"yellow"},{"text":"胡萝卜钓竿","color":"green"},{"text":"!","color":"yellow"}]
execute as @a[tag=mm_selected_knife_skin,scores={mm_cosmetics=125}] run tellraw @s [{"text":"已选择武器皮肤为 ","color":"yellow"},{"text":"骨头","color":"green"},{"text":"!","color":"yellow"}]
execute as @a[tag=mm_selected_knife_skin,scores={mm_cosmetics=126}] run tellraw @s [{"text":"已选择武器皮肤为 ","color":"yellow"},{"text":"胡萝卜","color":"green"},{"text":"!","color":"yellow"}]
execute as @a[tag=mm_selected_knife_skin,scores={mm_cosmetics=127}] run tellraw @s [{"text":"已选择武器皮肤为 ","color":"yellow"},{"text":"金萝卜","color":"green"},{"text":"!","color":"yellow"}]
execute as @a[tag=mm_selected_knife_skin,scores={mm_cosmetics=128}] run tellraw @s [{"text":"已选择武器皮肤为 ","color":"yellow"},{"text":"红石火把","color":"green"},{"text":"!","color":"yellow"}]
execute as @a[tag=mm_selected_knife_skin,scores={mm_cosmetics=129}] run tellraw @s [{"text":"已选择武器皮肤为 ","color":"yellow"},{"text":"玫瑰丛","color":"green"},{"text":"!","color":"yellow"}]
execute as @a[tag=mm_selected_knife_skin,scores={mm_cosmetics=130}] run tellraw @s [{"text":"已选择武器皮肤为 ","color":"yellow"},{"text":"红石粉","color":"green"},{"text":"!","color":"yellow"}]
execute as @a[tag=mm_selected_knife_skin,scores={mm_cosmetics=131}] run tellraw @s [{"text":"已选择武器皮肤为 ","color":"yellow"},{"text":"闪烁的西瓜","color":"green"},{"text":"!","color":"yellow"}]
execute as @a[tag=mm_selected_knife_skin,scores={mm_cosmetics=132}] run tellraw @s [{"text":"已选择武器皮肤为 ","color":"yellow"},{"text":"海晶碎片","color":"green"},{"text":"!","color":"yellow"}]
execute as @a[tag=mm_selected_knife_skin,scores={mm_cosmetics=133}] run tellraw @s [{"text":"已选择武器皮肤为 ","color":"yellow"},{"text":"TNT","color":"green"},{"text":"!","color":"yellow"}]
execute as @a[tag=mm_selected_knife_skin,scores={mm_cosmetics=134}] run tellraw @s [{"text":"已选择武器皮肤为 ","color":"yellow"},{"text":"牛排","color":"green"},{"text":"!","color":"yellow"}]
execute as @a[tag=mm_selected_knife_skin,scores={mm_cosmetics=135}] run tellraw @s [{"text":"已选择武器皮肤为 ","color":"yellow"},{"text":"下界合金剑","color":"green"},{"text":"!","color":"yellow"}]
execute as @a[tag=mm_selected_knife_skin,scores={mm_cosmetics=136}] run tellraw @s [{"text":"已选择武器皮肤为 ","color":"yellow"},{"text":"下界合金锹","color":"green"},{"text":"!","color":"yellow"}]
execute as @a[tag=mm_selected_knife_skin,scores={mm_cosmetics=137}] run tellraw @s [{"text":"已选择武器皮肤为 ","color":"yellow"},{"text":"下界石英","color":"green"},{"text":"!","color":"yellow"}]
execute as @a[tag=mm_selected_knife_skin,scores={mm_cosmetics=138}] run tellraw @s [{"text":"已选择武器皮肤为 ","color":"yellow"},{"text":"面包","color":"green"},{"text":"!","color":"yellow"}]
execute as @a[tag=mm_selected_knife_skin,scores={mm_cosmetics=139}] run tellraw @s [{"text":"已选择武器皮肤为 ","color":"yellow"},{"text":"下界之星","color":"green"},{"text":"!","color":"yellow"}]
execute as @a[tag=mm_selected_knife_skin,scores={mm_cosmetics=140}] run tellraw @s [{"text":"已选择武器皮肤为 ","color":"yellow"},{"text":"红砖","color":"green"},{"text":"!","color":"yellow"}]
execute as @a[tag=mm_selected_knife_skin,scores={mm_cosmetics=141}] run tellraw @s [{"text":"已选择武器皮肤为 ","color":"yellow"},{"text":"书","color":"green"},{"text":"!","color":"yellow"}]
execute as @a[tag=mm_selected_knife_skin,scores={mm_cosmetics=142}] run tellraw @s [{"text":"已选择武器皮肤为 ","color":"yellow"},{"text":"下界合金斧","color":"green"},{"text":"!","color":"yellow"}]
execute as @a[tag=mm_selected_knife_skin,scores={mm_cosmetics=143}] run tellraw @s [{"text":"已选择武器皮肤为 ","color":"yellow"},{"text":"火焰弹","color":"green"},{"text":"!","color":"yellow"}]
execute as @a[tag=mm_selected_knife_skin,scores={mm_cosmetics=144}] run tellraw @s [{"text":"已选择武器皮肤为 ","color":"yellow"},{"text":"甜浆果","color":"green"},{"text":"!","color":"yellow"}]
execute as @a[tag=mm_selected_knife_skin,scores={mm_cosmetics=145}] run tellraw @s [{"text":"已选择武器皮肤为 ","color":"yellow"},{"text":"玩家头颅","color":"green"},{"text":"!","color":"yellow"}]

execute as @a[tag=mm_selected_knife_skin] run scoreboard players operation @s mm_knife_skin = @s mm_cosmetics
execute as @a[tag=mm_selected_knife_skin] run scoreboard players operation @s mm_knife_skin -= 100 mm_main


#标签重置
execute as @a[tag=mm_triggered_knife_skin_menu] run scoreboard players reset @s mm_cosmetics
execute as @a[tag=mm_triggered_knife_skin_menu] run tag @s remove mm_triggered_knife_skin_menu

execute as @a[tag=mm_selected_knife_skin] run scoreboard players reset @s mm_cosmetics
execute as @a[tag=mm_selected_knife_skin] run tag @s remove mm_selected_knife_skin