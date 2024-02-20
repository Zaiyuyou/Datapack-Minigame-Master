item replace entity @s hotbar.7 with minecraft:lingering_potion{display:{Name:"[{\"text\":\"切换喷气模式\",\"color\":\"aqua\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Lore:["{\"text\":\"\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"使用后切换自己的喷气飞行模式\",\"color\":\"green\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"骗赞服开放日\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}"]},PropJetPotion:1} 1
scoreboard players set @s mm_jet_mode 1
title @s subtitle [{"text":"喷气:","color":"gold"},{"text":"开","color":"green"}]
title @s title {"text":""}
tag @s add jet_switch
execute as @s at @s run kill @e[nbt={Item:{tag:{PropJetPotion:1}}},limit=1,sort=nearest]


