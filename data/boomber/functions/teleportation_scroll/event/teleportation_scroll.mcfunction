execute as @s unless entity @p[distance=..0.7] run data merge entity @s {PickupDelay:3s}
execute as @s run function boomber:teleportation_scroll/event/teleportation_scroll/distance

execute as @s run scoreboard players set @s bb.success 0

execute as @s[tag=boomber.teleportation_scroll.can_teleport] if entity @s[nbt={Item:{tag:{boomber:{id:"common_teleportation_scroll"}}}}] run function boomber:teleportation_scroll/event/teleportation_scroll/type/common
execute as @s[tag=boomber.teleportation_scroll.can_teleport] if entity @s[nbt={Item:{tag:{boomber:{id:"uncommon_teleportation_scroll"}}}}] run function boomber:teleportation_scroll/event/teleportation_scroll/type/uncommon
execute as @s[tag=boomber.teleportation_scroll.can_teleport] if entity @s[nbt={Item:{tag:{boomber:{id:"rare_teleportation_scroll"}}}}] run function boomber:teleportation_scroll/event/teleportation_scroll/type/rare
execute as @s[tag=boomber.teleportation_scroll.can_teleport] if entity @s[nbt={Item:{tag:{boomber:{id:"elite_teleportation_scroll"}}}}] run function boomber:teleportation_scroll/event/teleportation_scroll/type/elite
execute as @s[tag=boomber.teleportation_scroll.can_teleport] if entity @s[nbt={Item:{tag:{boomber:{id:"legendary_teleportation_scroll"}}}}] run function boomber:teleportation_scroll/event/teleportation_scroll/type/legendary
execute as @s[tag=boomber.teleportation_scroll.can_teleport] if entity @s[nbt={Item:{tag:{boomber:{id:"mythic_teleportation_scroll"}}}}] run function boomber:teleportation_scroll/event/teleportation_scroll/type/mythic
execute as @s[tag=boomber.teleportation_scroll.can_teleport] if entity @s[nbt={Item:{tag:{boomber:{id:"custom_teleportation_scroll"}}}}] run function boomber:teleportation_scroll/event/teleportation_scroll/type/custom

execute as @s if score @s bb.success matches 1 run particle flame ~ ~ ~ 0.1 0.1 0.1 0.1 1 normal @a
execute as @s if score @s bb.success matches 0 run data merge entity @s {CustomName:"{\"text\":\"The targeted location is too far away\",\"color\":\"red\"}",CustomNameVisible:1b}
