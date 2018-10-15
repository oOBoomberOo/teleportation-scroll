execute as @s[tag=boomber.enchantment.id.duplicating_rare_teleportation_scroll] run scoreboard players remove @s bb.enchantTime 1
execute as @s[tag=boomber.enchantment.id.duplicating_rare_teleportation_scroll,scores={bb.enchantTime=..0}] run data remove entity @s Item.tag.display.Lore
execute as @s[tag=boomber.enchantment.id.duplicating_rare_teleportation_scroll,scores={bb.enchantTime=..0}] run data merge entity @s {Item:{id:"minecraft:paper", Count:1b, tag:{display:{Name:"{\"text\":\"Rare Teleportation Scroll\",\"color\":\"red\",\"italic\":\"false\"}"}, Enchantments:[{id:"minecraft:protection",lvl:0}], HideFlags:1, boomber:{id:"rare_teleportation_scroll", is_item:1b, from:"boomber-teleportation-scroll", group:["teleportation_scroll"], teleportation_scroll:{is_set:1b, range:10000, casting_time:100s, interdimensional:0b, type:"rare", destination:[0, 0, 0, 0]}}}}}
execute as @s[tag=boomber.enchantment.id.duplicating_rare_teleportation_scroll,scores={bb.enchantTime=..0}] store result entity @s Item.tag.boomber.teleportation_scroll.is_set byte 1 run data get entity @e[type=item_frame,tag=!boomber.enchantment.enchanter,distance=..6,limit=1,nbt={Item:{tag:{boomber:{group:["teleportation_scroll"],teleportation_scroll:{is_set:1b}}}}}] Item.tag.boomber.teleportation_scroll.is_set
execute as @s[tag=boomber.enchantment.id.duplicating_rare_teleportation_scroll,scores={bb.enchantTime=..0}] store result entity @s Item.tag.boomber.teleportation_scroll.destination[0] int 1 run data get entity @e[type=item_frame,tag=!boomber.enchantment.enchanter,distance=..6,limit=1,nbt={Item:{tag:{boomber:{group:["teleportation_scroll"],teleportation_scroll:{is_set:1b}}}}}] Item.tag.boomber.teleportation_scroll.destination[0]
execute as @s[tag=boomber.enchantment.id.duplicating_rare_teleportation_scroll,scores={bb.enchantTime=..0}] store result entity @s Item.tag.boomber.teleportation_scroll.destination[1] int 1 run data get entity @e[type=item_frame,tag=!boomber.enchantment.enchanter,distance=..6,limit=1,nbt={Item:{tag:{boomber:{group:["teleportation_scroll"],teleportation_scroll:{is_set:1b}}}}}] Item.tag.boomber.teleportation_scroll.destination[1]
execute as @s[tag=boomber.enchantment.id.duplicating_rare_teleportation_scroll,scores={bb.enchantTime=..0}] store result entity @s Item.tag.boomber.teleportation_scroll.destination[2] int 1 run data get entity @e[type=item_frame,tag=!boomber.enchantment.enchanter,distance=..6,limit=1,nbt={Item:{tag:{boomber:{group:["teleportation_scroll"],teleportation_scroll:{is_set:1b}}}}}] Item.tag.boomber.teleportation_scroll.destination[2]
execute as @s[tag=boomber.enchantment.id.duplicating_rare_teleportation_scroll,scores={bb.enchantTime=..0}] store result entity @s Item.tag.boomber.teleportation_scroll.destination[3] int 1 run data get entity @e[type=item_frame,tag=!boomber.enchantment.enchanter,distance=..6,limit=1,nbt={Item:{tag:{boomber:{group:["teleportation_scroll"],teleportation_scroll:{is_set:1b}}}}}] Item.tag.boomber.teleportation_scroll.destination[3]
execute as @s[tag=boomber.enchantment.id.duplicating_rare_teleportation_scroll,scores={bb.enchantTime=..0}] run function boomber:enchantment/enchants/remove_item