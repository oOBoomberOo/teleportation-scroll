execute as @s[nbt={Item:{tag:{boomber:{id:"empty_common_teleportation_scroll"}}}}] if entity @e[type=item_frame,tag=!boomber.enchantment.enchanter,distance=..6,limit=1,nbt={Item:{tag:{boomber:{group:["teleportation_scroll"],teleportation_scroll:{is_set:1b}}}}}] run tag @s add boomber.enchantment.found_recipe
execute as @s[tag=boomber.enchantment.found_recipe] run tag @s add boomber.enchantment.id.duplicating_common_teleportation_scroll
execute as @s[tag=boomber.enchantment.found_recipe] run scoreboard players set @s bb.enchantTime 30
execute as @s[tag=boomber.enchantment.found_recipe] run tag @s remove boomber.enchantment.found_recipe