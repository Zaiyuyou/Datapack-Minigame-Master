#矫正匕首位置
execute as @a[nbt={Inventory:[{tag:{Knife:1}}]},nbt=!{Inventory:[{tag:{Knife:1},Slot:1b}]}] run tag @s add mm_dislocate_knife
execute as @a[tag=mm_dislocate_knife] run clear @s #mm:knife
execute as @a[tag=mm_dislocate_knife] run loot replace entity @s hotbar.1 loot mm:knife
execute as @a[tag=mm_dislocate_knife] run tag @s remove mm_dislocate_knife

execute as @a[nbt=!{Inventory:[{tag:{Knife:1},Slot:1b}]}] at @s if entity @e[type=item,nbt={Item:{tag:{Knife:1}}},distance=..2] run tag @s add mm_throw
execute as @a[tag=mm_throw] run kill @e[type=item,nbt={Item:{tag:{Knife:1}}}]
execute as @a[tag=mm_throw] run loot replace entity @s hotbar.1 loot mm:knife
execute as @a[tag=mm_throw] run tag @s remove mm_throw