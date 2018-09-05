execute as @s store result score @s bb.posX run data get entity @s Pos[0] 10
execute as @s store result score @s bb.posY run data get entity @s Pos[1] 10
execute as @s store result score @s bb.posZ run data get entity @s Pos[2] 10
execute as @s store result score @s bb.posD run data get entity @s Dimension

execute as @s run scoreboard players operation @s bb.calPosX -= @s bb.posX
execute as @s run scoreboard players operation @s bb.calPosY -= @s bb.posY
execute as @s run scoreboard players operation @s bb.calPosZ -= @s bb.posZ
execute as @s run scoreboard players operation @s bb.calPosD -= @s bb.posD

execute as @s store result score @s bb.dPosX run scoreboard players operation @s bb.calPosX *= #-1 bb.variable
execute as @s store result score @s bb.dPosY run scoreboard players operation @s bb.calPosY *= #-1 bb.variable
execute as @s store result score @s bb.dPosZ run scoreboard players operation @s bb.calPosZ *= #-1 bb.variable
execute as @s store result score @s bb.dPosD run scoreboard players operation @s bb.calPosD *= #-1 bb.variable

execute as @s store result score @s bb.dPos run scoreboard players operation @s bb.dPosX += @s bb.dPosY
execute as @s store result score @s bb.dPos run scoreboard players operation @s bb.dPos += @s bb.dPosZ
execute as @s store result score @s bb.dPos run scoreboard players operation @s bb.dPos += @s bb.dPosD

execute as @s run scoreboard players operation @s bb.calPosX = @s bb.posX
execute as @s run scoreboard players operation @s bb.calPosY = @s bb.posY
execute as @s run scoreboard players operation @s bb.calPosZ = @s bb.posZ
execute as @s run scoreboard players operation @s bb.calPosD = @s bb.posD
