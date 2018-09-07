execute as @s run scoreboard players set @s bb.teleTimer 0
execute as @s run scoreboard players set @s bb.success 0
execute as @s store result score @s bb.posX run data get entity @s Pos[0]
execute as @s store result score @s bb.posY run data get entity @s Pos[1]
execute as @s store result score @s bb.posZ run data get entity @s Pos[2]
execute as @s store result score @s bb.posD run data get entity @s Dimension
execute as @s run function boomber:teleportation_scroll/event/empty_teleportation_scroll/offhand
execute as @s at @s store result entity @e[type=item,tag=boomber.teleportation_scroll.generating_scroll,distance=..1,limit=1] Item.tag.boomber.teleportation_scroll.destination[0] int 1 run scoreboard players get @s bb.posX
execute as @s at @s store result entity @e[type=item,tag=boomber.teleportation_scroll.generating_scroll,distance=..1,limit=1] Item.tag.boomber.teleportation_scroll.destination[1] int 1 run scoreboard players get @s bb.posY
execute as @s at @s store result entity @e[type=item,tag=boomber.teleportation_scroll.generating_scroll,distance=..1,limit=1] Item.tag.boomber.teleportation_scroll.destination[2] int 1 run scoreboard players get @s bb.posZ
execute as @s at @s store result entity @e[type=item,tag=boomber.teleportation_scroll.generating_scroll,distance=..1,limit=1] Item.tag.boomber.teleportation_scroll.destination[3] int 1 run scoreboard players get @s bb.posD

execute as @s at @s store result entity @e[type=item,tag=boomber.teleportation_scroll.generating_scroll,distance=..1,limit=1] Item.tag.boomber.teleportation_scroll.range int 1 run scoreboard players get @s bb.range
execute as @s at @s store result entity @e[type=item,tag=boomber.teleportation_scroll.generating_scroll,distance=..1,limit=1] Item.tag.boomber.teleportation_scroll.casting_time short 1 run scoreboard players get @s bb.castingTime
execute as @s at @s store result entity @e[type=item,tag=boomber.teleportation_scroll.generating_scroll,distance=..1,limit=1] Item.tag.boomber.teleportation_scroll.interdimensional byte 1 run scoreboard players get @s bb.dimension

execute as @s at @s run tag @e[type=item,tag=boomber.teleportation_scroll.generating_scroll,distance=..1,limit=1] remove boomber.teleportation_scroll.generating_scroll
execute as @s run replaceitem entity @s weapon.offhand minecraft:air 1
execute as @s at @s run particle cloud ~ ~0.7 ~ 0.4 0.8 0.4 0.1 50 normal @a
execute as @s at @s run playsound minecraft:entity.player.levelup voice @a ~ ~ ~ 1 1 0