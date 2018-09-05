scoreboard objectives add bb.posX dummy
scoreboard objectives add bb.posY dummy
scoreboard objectives add bb.posZ dummy
scoreboard objectives add bb.posD dummy
scoreboard objectives add bb.calPosX dummy
scoreboard objectives add bb.calPosY dummy
scoreboard objectives add bb.calPosZ dummy
scoreboard objectives add bb.calPosD dummy
scoreboard objectives add bb.dPosX dummy
scoreboard objectives add bb.dPosY dummy
scoreboard objectives add bb.dPosZ dummy
scoreboard objectives add bb.dPosD dummy
scoreboard objectives add bb.dPos dummy

scoreboard objectives add bb.locX dummy
scoreboard objectives add bb.locY dummy
scoreboard objectives add bb.locZ dummy
scoreboard objectives add bb.locD dummy
scoreboard objectives add bb.desX dummy
scoreboard objectives add bb.desY dummy
scoreboard objectives add bb.desZ dummy
scoreboard objectives add bb.desD dummy
scoreboard objectives add bb.distanceX dummy
scoreboard objectives add bb.distanceY dummy
scoreboard objectives add bb.distanceZ dummy
scoreboard objectives add bb.distanceL dummy
scoreboard objectives add bb.distanceM dummy

scoreboard objectives add bb.teleX dummy
scoreboard objectives add bb.teleY dummy
scoreboard objectives add bb.teleZ dummy
scoreboard objectives add bb.resX dummy
scoreboard objectives add bb.resY dummy
scoreboard objectives add bb.resZ dummy

scoreboard objectives add bb.success dummy
scoreboard objectives add bb.teleTimer dummy
scoreboard objectives add bb.variable dummy

function boomber:teleportation_scroll/config

scoreboard players set #1 bb.variable 1
scoreboard players set #-1 bb.variable -1

scoreboard players operation #common-teleportation_scroll-least bb.variable = #common-teleportation_scroll-most bb.variable
scoreboard players operation #uncommon-teleportation_scroll-least bb.variable = #uncommon-teleportation_scroll-most bb.variable
scoreboard players operation #rare-teleportation_scroll-least bb.variable = #rare-teleportation_scroll-most bb.variable
scoreboard players operation #elite-teleportation_scroll-least bb.variable = #elite-teleportation_scroll-most bb.variable
scoreboard players operation #legendary-teleportation_scroll-least bb.variable = #legendary-teleportation_scroll-most bb.variable

scoreboard players operation #common-teleportation_scroll-least bb.variable *= #-1 bb.variable
scoreboard players operation #uncommon-teleportation_scroll-least bb.variable *= #-1 bb.variable
scoreboard players operation #rare-teleportation_scroll-least bb.variable *= #-1 bb.variable
scoreboard players operation #elite-teleportation_scroll-least bb.variable *= #-1 bb.variable
scoreboard players operation #legendary-teleportation_scroll-least bb.variable *= #-1 bb.variable