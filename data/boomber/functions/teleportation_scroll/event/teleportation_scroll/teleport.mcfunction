execute as @s store result score @s bb.posX run data get entity @s Pos[0]
execute as @s store result score @s bb.posY run data get entity @s Pos[1]
execute as @s store result score @s bb.posZ run data get entity @s Pos[2]
execute as @s store result score @s bb.posD run data get entity @s Dimension
execute as @s run scoreboard players set @s bb.successCount 0
execute as @s at @s run particle minecraft:smoke ~ ~1 ~ 0.3 0.7 0.3 0 50 normal @a

execute as @s if score @s bb.desD matches 1 in the_end run function boomber:teleportation_scroll/event/teleportation_scroll/teleport/x
execute as @s if score @s bb.desD matches 0 in overworld run function boomber:teleportation_scroll/event/teleportation_scroll/teleport/x
execute as @s if score @s bb.desD matches -1 in the_nether run function boomber:teleportation_scroll/event/teleportation_scroll/teleport/x

execute as @s at @s run playsound minecraft:entity.enderman.teleport voice @a ~ ~ ~ 1 1 0
execute as @s at @s run particle minecraft:portal ~ ~ ~ 0.2 0.7 0.2 0.5 100 normal @a

execute as @s run scoreboard players set @s bb.successCount 0
execute as @s run scoreboard players set @s bb.posX 0
execute as @s run scoreboard players set @s bb.posY 0
execute as @s run scoreboard players set @s bb.posZ 0
execute as @s run scoreboard players set @s bb.posD 0