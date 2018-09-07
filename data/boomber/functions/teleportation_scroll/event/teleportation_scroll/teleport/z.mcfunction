execute as @s store result score @s bb.teleZ run scoreboard players get @s bb.desZ

execute as @s store result score @s bb.resZ run scoreboard players operation @s bb.teleZ -= @s bb.posZ

execute as @s if score @s bb.resZ matches 1..9 run scoreboard players add @s bb.posZ 1
execute as @s if score @s bb.resZ matches 1..9 positioned ~ ~ ~1 run function boomber:teleportation_scroll/event/teleportation_scroll/teleport/z
execute as @s if score @s bb.resZ matches 10..99 run scoreboard players add @s bb.posZ 10
execute as @s if score @s bb.resZ matches 10..99 positioned ~ ~ ~10 run function boomber:teleportation_scroll/event/teleportation_scroll/teleport/z
execute as @s if score @s bb.resZ matches 100..999 run scoreboard players add @s bb.posZ 100
execute as @s if score @s bb.resZ matches 100..999 positioned ~ ~ ~100 run function boomber:teleportation_scroll/event/teleportation_scroll/teleport/z
execute as @s if score @s bb.resZ matches 1000..9999 run scoreboard players add @s bb.posZ 1000
execute as @s if score @s bb.resZ matches 1000..9999 positioned ~ ~ ~1000 run function boomber:teleportation_scroll/event/teleportation_scroll/teleport/z
execute as @s if score @s bb.resZ matches 10000..99999 run scoreboard players add @s bb.posZ 10000
execute as @s if score @s bb.resZ matches 10000..99999 positioned ~ ~ ~10000 run function boomber:teleportation_scroll/event/teleportation_scroll/teleport/z
execute as @s if score @s bb.resZ matches 100000..999999 run scoreboard players add @s bb.posZ 100000
execute as @s if score @s bb.resZ matches 100000..999999 positioned ~ ~ ~100000 run function boomber:teleportation_scroll/event/teleportation_scroll/teleport/z
execute as @s if score @s bb.resZ matches 1000000.. run scoreboard players add @s bb.posZ 1000000
execute as @s if score @s bb.resZ matches 1000000.. positioned ~ ~ ~1000000 run function boomber:teleportation_scroll/event/teleportation_scroll/teleport/z

execute as @s if score @s bb.resZ matches -9..-1 run scoreboard players remove @s bb.posZ 1
execute as @s if score @s bb.resZ matches -9..-1 positioned ~ ~ ~-1 run function boomber:teleportation_scroll/event/teleportation_scroll/teleport/z
execute as @s if score @s bb.resZ matches -99..-10 run scoreboard players remove @s bb.posZ 10
execute as @s if score @s bb.resZ matches -99..-10 positioned ~ ~ ~-10 run function boomber:teleportation_scroll/event/teleportation_scroll/teleport/z
execute as @s if score @s bb.resZ matches -999..-100 run scoreboard players remove @s bb.posZ 100
execute as @s if score @s bb.resZ matches -999..-100 positioned ~ ~ ~-100 run function boomber:teleportation_scroll/event/teleportation_scroll/teleport/z
execute as @s if score @s bb.resZ matches -9999..-1000 run scoreboard players remove @s bb.posZ 1000
execute as @s if score @s bb.resZ matches -9999..-1000 positioned ~ ~ ~-1000 run function boomber:teleportation_scroll/event/teleportation_scroll/teleport/z
execute as @s if score @s bb.resZ matches -99999..-10000 run scoreboard players remove @s bb.posZ 10000
execute as @s if score @s bb.resZ matches -99999..-10000 positioned ~ ~ ~-10000 run function boomber:teleportation_scroll/event/teleportation_scroll/teleport/z
execute as @s if score @s bb.resZ matches -999999..-100000 run scoreboard players remove @s bb.posZ 100000
execute as @s if score @s bb.resZ matches -999999..-100000 positioned ~ ~ ~-100000 run function boomber:teleportation_scroll/event/teleportation_scroll/teleport/z
execute as @s if score @s bb.resZ matches ..-1000000 run scoreboard players remove @s bb.posZ 1000000
execute as @s if score @s bb.resZ matches ..-1000000 positioned ~ ~ ~-1000000 run function boomber:teleportation_scroll/event/teleportation_scroll/teleport/z

execute as @s[scores={bb.successCount=0}] if score @s bb.resZ matches 0 positioned ~ ~ ~ store success score @s bb.successCount run tp @s ~ ~ ~