scoreboard players add @s bb.teleTimer 1
scoreboard players add @s bb.success 1
execute as @s store result score @s bb.castingTime run data get entity @s Item.tag.boomber.teleportation_scroll.casting_time
execute as @s run data merge entity @s {CustomName:"{\"text\":\"Uncommon Teleportation Scroll\",\"color\":\"yellow\"}",CustomNameVisible:1b}
execute as @e[distance=..4] run function boomber:teleportation_scroll/event/teleportation_scroll/entity
execute as @e[tag=boomber.teleportation_scroll.teleportable,distance=..4] run effect give @s glowing 1 0 true
execute as @s if score @s bb.teleTimer >= @s bb.castingTime store result score @e[tag=boomber.teleportation_scroll.teleportable,distance=..4] bb.desX run data get entity @s Item.tag.boomber.teleportation_scroll.destination[0]
execute as @s if score @s bb.teleTimer >= @s bb.castingTime store result score @e[tag=boomber.teleportation_scroll.teleportable,distance=..4] bb.desY run data get entity @s Item.tag.boomber.teleportation_scroll.destination[1]
execute as @s if score @s bb.teleTimer >= @s bb.castingTime store result score @e[tag=boomber.teleportation_scroll.teleportable,distance=..4] bb.desZ run data get entity @s Item.tag.boomber.teleportation_scroll.destination[2]
execute as @s if score @s bb.teleTimer >= @s bb.castingTime store result score @e[tag=boomber.teleportation_scroll.teleportable,distance=..4] bb.desD run data get entity @s Item.tag.boomber.teleportation_scroll.destination[3]
execute as @s if score @s bb.teleTimer >= @s bb.castingTime as @e[tag=boomber.teleportation_scroll.teleportable,distance=..4] at @s run function boomber:teleportation_scroll/event/teleportation_scroll/teleport
execute as @s if score @s bb.teleTimer >= @s bb.castingTime run kill @s