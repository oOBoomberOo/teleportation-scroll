execute as @s[nbt={Item:{tag:{boomber:{id:"empty_rare_teleportation_scroll"}}}}] if entity @e[type=item_frame,tag=!boomber.enchantment.enchanter,distance=..6,limit=1,nbt={Item:{id:"minecraft:soul_sand"}}] if entity @e[type=item_frame,tag=!boomber.enchantment.enchanter,distance=..6,limit=1,nbt={Item:{id:"minecraft:iron_ingot"}}] if entity @e[type=item_frame,tag=!boomber.enchantment.enchanter,distance=..6,limit=1,nbt={Item:{id:"minecraft:sea_pickle"}}] run tag @s add boomber.enchantment.found_recipe
execute as @s[tag=boomber.enchantment.found_recipe] run tag @s add boomber.enchantment.id.empty_elite_teleportation_scroll
execute as @s[tag=boomber.enchantment.found_recipe] run scoreboard players set @s bb.enchantTime 80
execute as @s[tag=boomber.enchantment.found_recipe] run tag @s remove boomber.enchantment.found_recipe