execute as @s run scoreboard players set @s bb.distanceL 0
execute as @s run scoreboard players set @s bb.distanceM 0

execute as @s store result score @s bb.locX run data get entity @s Pos[0]
execute as @s store result score @s bb.locY run data get entity @s Pos[1]
execute as @s store result score @s bb.locZ run data get entity @s Pos[2]
execute as @s store result score @s bb.locD run data get entity @s Dimension

execute as @s store result score @s bb.desX run data get entity @s Item.tag.boomber.teleportation_scroll.destination[0]
execute as @s store result score @s bb.desY run data get entity @s Item.tag.boomber.teleportation_scroll.destination[1]
execute as @s store result score @s bb.desZ run data get entity @s Item.tag.boomber.teleportation_scroll.destination[2]
execute as @s store result score @s bb.desD run data get entity @s Item.tag.boomber.teleportation_scroll.destination[3]

execute as @s store result score @s bb.distanceX run scoreboard players operation @s bb.locX -= @s bb.desX
execute as @s store result score @s bb.distanceY run scoreboard players operation @s bb.locY -= @s bb.desY
execute as @s store result score @s bb.distanceZ run scoreboard players operation @s bb.locZ -= @s bb.desZ

execute as @s store result score @s bb.distanceL run scoreboard players operation @s bb.distanceL < @s bb.distanceX
execute as @s store result score @s bb.distanceL run scoreboard players operation @s bb.distanceL < @s bb.distanceY
execute as @s store result score @s bb.distanceL run scoreboard players operation @s bb.distanceL < @s bb.distanceZ

execute as @s store result score @s bb.distanceM run scoreboard players operation @s bb.distanceM > @s bb.distanceX
execute as @s store result score @s bb.distanceM run scoreboard players operation @s bb.distanceM > @s bb.distanceY
execute as @s store result score @s bb.distanceM run scoreboard players operation @s bb.distanceM > @s bb.distanceZ