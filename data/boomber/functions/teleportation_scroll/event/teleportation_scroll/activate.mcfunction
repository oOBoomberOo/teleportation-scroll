execute as @s run kill @e[type=item,nbt={Item:{id:"minecraft:redstone",Count:1b}, OnGround:1b},distance=..0.5,limit=1]
execute as @s run particle flame ~ ~ ~ 0.1 0.1 0.1 0 5 normal @a
execute as @s run data merge entity @s {PickupDelay:20s}
execute as @s run tag @s add boomber.teleportation_scroll.activate
execute as @s store result score @s bb.limit run data get entity @s Item.tag.boomber.teleportation_scroll.range
execute as @s store result score @s bb.castingTime run data get entity @s Item.tag.boomber.teleportation_scroll.casting_time