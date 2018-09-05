scoreboard players set @s bb.success 0
execute as @s store success score @s bb.success if entity @s[nbt={Inventory:[{Slot:-106b, Count:1b, tag:{boomber:{id:"empty_common_teleportation_scroll"}}}], SelectedItem:{id:"minecraft:ink_sac"}}] run function boomber:teleportation_scroll/event/empty_teleportation_scroll/common
execute as @s store success score @s bb.success if entity @s[nbt={Inventory:[{Slot:-106b, Count:1b, tag:{boomber:{id:"empty_uncommon_teleportation_scroll"}}}], SelectedItem:{id:"minecraft:dandelion_yellow"}}] run function boomber:teleportation_scroll/event/empty_teleportation_scroll/uncommon
execute as @s store success score @s bb.success if entity @s[nbt={Inventory:[{Slot:-106b, Count:1b, tag:{boomber:{id:"empty_rare_teleportation_scroll"}}}], SelectedItem:{id:"minecraft:rose_red"}}] run function boomber:teleportation_scroll/event/empty_teleportation_scroll/rare
execute as @s store success score @s bb.success if entity @s[nbt={Inventory:[{Slot:-106b, Count:1b, tag:{boomber:{id:"empty_elite_teleportation_scroll"}}}], SelectedItem:{id:"minecraft:lime_dye"}}] run function boomber:teleportation_scroll/event/empty_teleportation_scroll/elite
execute as @s store success score @s bb.success if entity @s[nbt={Inventory:[{Slot:-106b, Count:1b, tag:{boomber:{id:"empty_legendary_teleportation_scroll"}}}], SelectedItem:{id:"minecraft:cyan_dye"}}] run function boomber:teleportation_scroll/event/empty_teleportation_scroll/legendary
execute as @s store success score @s bb.success if entity @s[nbt={Inventory:[{Slot:-106b, Count:1b, tag:{boomber:{id:"empty_mythic_teleportation_scroll"}}}], SelectedItem:{id:"minecraft:magenta_dye"}}] run function boomber:teleportation_scroll/event/empty_teleportation_scroll/mythic

execute as @s if score @s bb.success matches 0 run scoreboard players set @s bb.teleTimer 0
execute as @s[scores={bb.success=1}] at @s anchored eyes run particle happy_villager ^ ^ ^0.5 0.3 0.3 0.3 0.1 1 normal @a

execute as @s run scoreboard players set @s bb.success 0