execute as @s store result score @s bb.teleX run scoreboard players get @s bb.desX

execute as @s store result score @s bb.resX run scoreboard players operation @s bb.teleX -= @s bb.posX

execute as @s if score @s bb.resX matches 1..9 run scoreboard players add @s bb.posX 1
execute as @s if score @s bb.resX matches 1..9 positioned ~1 ~ ~ run function boomber:teleportation_scroll/event/teleportation_scroll/teleport/x
execute as @s if score @s bb.resX matches 10..99 run scoreboard players add @s bb.posX 10
execute as @s if score @s bb.resX matches 10..99 positioned ~10 ~ ~ run function boomber:teleportation_scroll/event/teleportation_scroll/teleport/x
execute as @s if score @s bb.resX matches 100..999 run scoreboard players add @s bb.posX 100
execute as @s if score @s bb.resX matches 100..999 positioned ~100 ~ ~ run function boomber:teleportation_scroll/event/teleportation_scroll/teleport/x
execute as @s if score @s bb.resX matches 1000..9999 run scoreboard players add @s bb.posX 1000
execute as @s if score @s bb.resX matches 1000..9999 positioned ~1000 ~ ~ run function boomber:teleportation_scroll/event/teleportation_scroll/teleport/x
execute as @s if score @s bb.resX matches 10000..99999 run scoreboard players add @s bb.posX 10000
execute as @s if score @s bb.resX matches 10000..99999 positioned ~10000 ~ ~ run function boomber:teleportation_scroll/event/teleportation_scroll/teleport/x
execute as @s if score @s bb.resX matches 100000..999999 run scoreboard players add @s bb.posX 100000
execute as @s if score @s bb.resX matches 100000..999999 positioned ~100000 ~ ~ run function boomber:teleportation_scroll/event/teleportation_scroll/teleport/x
execute as @s if score @s bb.resX matches 1000000.. run scoreboard players add @s bb.posX 1000000
execute as @s if score @s bb.resX matches 1000000.. positioned ~1000000 ~ ~ run function boomber:teleportation_scroll/event/teleportation_scroll/teleport/x

execute as @s if score @s bb.resX matches -9..-1 run scoreboard players remove @s bb.posX 1
execute as @s if score @s bb.resX matches -9..-1 positioned ~-1 ~ ~ run function boomber:teleportation_scroll/event/teleportation_scroll/teleport/x
execute as @s if score @s bb.resX matches -99..-10 run scoreboard players remove @s bb.posX 10
execute as @s if score @s bb.resX matches -99..-10 positioned ~-10 ~ ~ run function boomber:teleportation_scroll/event/teleportation_scroll/teleport/x
execute as @s if score @s bb.resX matches -999..-100 run scoreboard players remove @s bb.posX 100
execute as @s if score @s bb.resX matches -999..-100 positioned ~-100 ~ ~ run function boomber:teleportation_scroll/event/teleportation_scroll/teleport/x
execute as @s if score @s bb.resX matches -9999..-1000 run scoreboard players remove @s bb.posX 1000
execute as @s if score @s bb.resX matches -9999..-1000 positioned ~-1000 ~ ~ run function boomber:teleportation_scroll/event/teleportation_scroll/teleport/x
execute as @s if score @s bb.resX matches -99999..-10000 run scoreboard players remove @s bb.posX 10000
execute as @s if score @s bb.resX matches -99999..-10000 positioned ~-10000 ~ ~ run function boomber:teleportation_scroll/event/teleportation_scroll/teleport/x
execute as @s if score @s bb.resX matches -999999..-100000 run scoreboard players remove @s bb.posX 100000
execute as @s if score @s bb.resX matches -999999..-100000 positioned ~-100000 ~ ~ run function boomber:teleportation_scroll/event/teleportation_scroll/teleport/x
execute as @s if score @s bb.resX matches ..-1000000 run scoreboard players remove @s bb.posX 1000000
execute as @s if score @s bb.resX matches ..-1000000 positioned ~-1000000 ~ ~ run function boomber:teleportation_scroll/event/teleportation_scroll/teleport/x

execute as @s[scores={bb.success=0}] if score @s bb.resX matches 0 positioned ~ ~ ~ run function boomber:teleportation_scroll/event/teleportation_scroll/teleport/y