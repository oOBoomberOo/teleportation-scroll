execute as @s store result score @s bb.teleY run scoreboard players get @s bb.desY

execute as @s store result score @s bb.resY run scoreboard players operation @s bb.teleY -= @s bb.posY

execute as @s if score @s bb.resY matches 1..9 run scoreboard players add @s bb.posY 1
execute as @s if score @s bb.resY matches 1..9 positioned ~ ~1 ~ run function boomber:teleportation_scroll/event/teleportation_scroll/teleport/y
execute as @s if score @s bb.resY matches 10..99 run scoreboard players add @s bb.posY 10
execute as @s if score @s bb.resY matches 10..99 positioned ~ ~10 ~ run function boomber:teleportation_scroll/event/teleportation_scroll/teleport/y
execute as @s if score @s bb.resY matches 100..255 run scoreboard players add @s bb.posY 100
execute as @s if score @s bb.resY matches 100..255 positioned ~ ~100 ~ run function boomber:teleportation_scroll/event/teleportation_scroll/teleport/y

execute as @s if score @s bb.resY matches -9..-1 run scoreboard players remove @s bb.posY 1
execute as @s if score @s bb.resY matches -9..-1 positioned ~ ~-1 ~ run function boomber:teleportation_scroll/event/teleportation_scroll/teleport/y
execute as @s if score @s bb.resY matches -99..-10 run scoreboard players remove @s bb.posY 10
execute as @s if score @s bb.resY matches -99..-10 positioned ~ ~-10 ~ run function boomber:teleportation_scroll/event/teleportation_scroll/teleport/y
execute as @s if score @s bb.resY matches -255..-100 run scoreboard players remove @s bb.posY 100
execute as @s if score @s bb.resY matches -255..-100 positioned ~ ~-100 ~ run function boomber:teleportation_scroll/event/teleportation_scroll/teleport/y

execute as @s[scores={bb.success=0}] if score @s bb.resY matches 0 positioned ~ ~ ~ run function boomber:teleportation_scroll/event/teleportation_scroll/teleport/z