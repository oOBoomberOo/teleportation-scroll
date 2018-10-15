execute as @s[tag=boomber.enchantment.id.empty_rare_teleportation_scroll] run scoreboard players remove @s bb.enchantTime 1
execute as @s[tag=boomber.enchantment.id.empty_rare_teleportation_scroll,scores={bb.enchantTime=60}] store success score @s bb.success if entity @e[type=item_frame,tag=!boomber.enchantment.enchanter,distance=..6,limit=1,nbt={Item:{id:"minecraft:redstone"}}] as @e[type=item_frame,tag=!boomber.enchantment.enchanter,distance=..6,limit=1,nbt={Item:{id:"minecraft:redstone"}}] run function boomber:enchantment/enchants/remove_item
execute as @s[tag=boomber.enchantment.id.empty_rare_teleportation_scroll,scores={bb.enchantTime=40,bb.success=1}] store success score @s bb.success if entity @e[type=item_frame,tag=!boomber.enchantment.enchanter,distance=..6,limit=1,nbt={Item:{id:"minecraft:iron_ingot"}}] as @e[type=item_frame,tag=!boomber.enchantment.enchanter,distance=..6,limit=1,nbt={Item:{id:"minecraft:iron_ingot"}}] run function boomber:enchantment/enchants/remove_item
execute as @s[tag=boomber.enchantment.id.empty_rare_teleportation_scroll,scores={bb.enchantTime=20,bb.success=1}] store success score @s bb.success if entity @e[type=item_frame,tag=!boomber.enchantment.enchanter,distance=..6,limit=1,nbt={Item:{id:"minecraft:rose_bush"}}] as @e[type=item_frame,tag=!boomber.enchantment.enchanter,distance=..6,limit=1,nbt={Item:{id:"minecraft:rose_bush"}}] run function boomber:enchantment/enchants/remove_item
execute as @s[tag=boomber.enchantment.id.empty_rare_teleportation_scroll,scores={bb.enchantTime=0,bb.success=1}] run function boomber:enchantment/enchants/remove_item
execute as @s[tag=boomber.enchantment.id.empty_rare_teleportation_scroll,scores={bb.enchantTime=0,bb.success=1}] run data remove entity @s Item.Count
execute as @s[tag=boomber.enchantment.id.empty_rare_teleportation_scroll,scores={bb.enchantTime=0,bb.success=1}] run function boomber:teleportation_scroll/items/empty_rare_teleportation_scroll